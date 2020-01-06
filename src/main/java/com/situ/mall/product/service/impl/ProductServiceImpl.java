package com.situ.mall.product.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.mall.base.domain.PageData;
import com.situ.mall.product.dao.ProductDao;
import com.situ.mall.product.domain.Product;
import com.situ.mall.product.service.ProductService;
import com.situ.mall.util.PageUtils;

@Service
public class ProductServiceImpl implements Serializable, ProductService {

	private static final long serialVersionUID = 1L;

	@Autowired
	private ProductDao productDao;

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
			long size = productPictureFile.getSize();
			System.out.println("上传文件的大小"+size);
			//文件的后缀
			String suffix = originalFileName.substring(originalFileName.lastIndexOf("."));
			//写出的文件地址（不是全部路径，别搞错了）    这个路径要写入到数据库中
			String filePath = "assert/img1/" + Calendar.getInstance().getTimeInMillis() + suffix;
			//得到的项目根路径（这里是你这个项目在那个盘就在那个盘）
			String realPath = request.getServletContext().getRealPath("/");
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
	public List<Product> findByPage(Integer pageNo, Product searchProduct) {
		//limit查询数据开始的下标   limit查询数据 要显示的条数 Integer maxResults
		Integer firstResult = (pageNo - 1) *PageUtils.PAGE_ROWS; 
		Integer maxResults =PageUtils.PAGE_ROWS; 
		return productDao.findByPage(searchProduct,firstResult,maxResults);
	}
	
	
	@Override
	public Product findProductById(Long rowId) {
		return productDao.get(rowId);
	}

	
	@Override
	public Long doUpdate(Product product) {
		product.setUpdateBy("admin");
		product.setUpdateDate(new Date());
		productDao.update(product);
		return product.getRowId();
	}


	
	@Override
	public PageData buildPageData(Integer pageNo, Product searchProduct) {
		// 查询出数据总数
		Integer dataCount = productDao.getCount(searchProduct);
		return PageUtils.buildPageData(dataCount, pageNo);
	}

	@Override
	public Long doDeleteProduct(Long rowId) {
		productDao.delete(rowId);
		return rowId; 
	}

	@Override
	public Boolean checkProductName(String productName) {
		Product product = productDao.getByName(productName); //三元表达式，如果有返回false，如果没有返回true 
		Boolean bool = product != null ? false : true;
		return bool;
	}
}
