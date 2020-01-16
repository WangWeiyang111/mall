package com.situ.mall.product.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.mall.catalog.dao.CatalogDao;
import com.situ.mall.product.dao.ProductDao;
import com.situ.mall.product.domain.Product;
import com.situ.mall.product.domain.VwProduct;
import com.situ.mall.product.service.ProductService;

@Service
public class ProductServiceImpl implements Serializable, ProductService {

	private static final long serialVersionUID = 1L;

	@Autowired
	private ProductDao productDao;
	
	@Autowired
    private CatalogDao catalogDao;
	
	
	@Override
	public Long saveProduct(HttpServletRequest request, Product product) {
		    //得到文件的实例
		    CommonsMultipartFile productPictureFile = product.getProductPictureFile();
	        //上传文件的paramName
	        String paramName = productPictureFile.getName();
			System.out.println("上传文件的参数名" + paramName);
			//文件名称
			String originalFileName = productPictureFile.getOriginalFilename();
			System.out.println("上传的文件名称" + originalFileName);
			//上传文件的大小
			Long size = productPictureFile.getSize();
			System.out.println("上传文件的大小"+size);
			//文件的后缀
			String suffix = originalFileName.substring(originalFileName.lastIndexOf("."));
			//写出的文件地址（不是全部路径，别搞错了）    这个路径要写入到数据库中
			String filePath = "file/" + Calendar.getInstance().getTimeInMillis() + suffix;
			//得到的项目根路径（这里是你这个项目在那个盘就在那个盘）
			String realPath = "F:/webfiles/mall/";
			
			//要写出文件的路径
			File toFile = new File(realPath + filePath);
			try {
				//将文件写出用transferTo(path);方法
				productPictureFile.transferTo(toFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		product.setProductPicture(filePath);	
		product.setActiveFlag("1");
		product.setCreateBy("admin");
		product.setCreateDate(new Date());
		return productDao.save(product);
	}

	@Override
	public List<Product> find() {
		return productDao.find();
	}

	
	@Override
	public Product findProductById(Long rowId) {
		return productDao.get(rowId);
	}

	
	@Override
	public Long doUpdate(Product product) {
		Long result = 1L;
		product.setUpdateBy("admin");
		product.setUpdateDate(new Date());
		productDao.update(product);
		return result;
	}


	@Override
	public Long doDeleteProduct(Long rowId) {
		productDao.delete(rowId);
		return rowId; 
	}

	@Override
	public Long doUpdateState(Long rowId, String productState) {
		Long result = 1L;
		productDao.doUpdateState(rowId, productState);
		return result;
	}

	@Override
	public List<VwProduct> findVw() {
		
		return productDao.findVw();
	}

	@Override
	public List<Product> findProductByCatalogId(Long catalogId) {
		
		return productDao.findProductByCatalogId(catalogId);
	}

	

}
