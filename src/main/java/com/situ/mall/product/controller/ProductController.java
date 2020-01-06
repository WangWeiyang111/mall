package com.situ.mall.product.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.situ.mall.product.domain.Product;
import com.situ.mall.product.service.ProductService;

@RequestMapping("/product")
@Controller
public class ProductController implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ProductService productService;

	/**
	 * 
	 * @跳转商品主页
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goproductindex")
	public ModelAndView goProductIndex(ModelAndView modelAndView) {
		modelAndView.setViewName("products/product_index");
		return modelAndView;
	}

	/**
	 * 
	 * @ 完成新增
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/add")
	public Long doAddProduct(HttpServletRequest request,Product product) {
       
		return productService.saveProduct(request, product);
	}

	/**
	 * @查询所有的记录
	 * @param pageNo       分页的页号
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/find/{pageNo}")
	public ModelAndView findAllProduct(@PathVariable Integer pageNo, Product searchProduct, ModelAndView modelAndView) {
		 // 要展示的列表数据
		/* System.out.println(searchProduct); */
		modelAndView.addObject("productList", productService.findByPage(pageNo, searchProduct)); // 分页信息
		modelAndView.addObject("pageData", productService.buildPageData(pageNo, searchProduct));
		modelAndView.setViewName("products/product_list");
		return modelAndView;
	}
	 

	// role/goupdate?rowId=1
	// role/goupdate/1
	@ResponseBody
	@RequestMapping("/goupdate/{rowId}")
	public Product goUpdate(@PathVariable("rowId") Long rowId) {
		return productService.findProductById(rowId);
	}

	@ResponseBody
	@RequestMapping("/doupdate")
	public Long doUpdateRolwr(Product product) {
		return productService.doUpdate(product);
	}

	@ResponseBody
	@RequestMapping("/doelete/{rowId}")
	public Long doDelete(@PathVariable Long rowId) {
		return productService.doDeleteProduct(rowId);
	}

	// fieldId=roleName&fieldValue=admin&_=1576483347425
	@ResponseBody
	@RequestMapping("/checkProductName")
	public String checkProductName(String fieldId, String fieldValue) {
		// 通过服务层判断此名称是否可以使用。true：可以使用，false：不可以使用
		Boolean bool = productService.checkProductName(fieldValue);
		// [String,Boolean] ["roleName",true]
		// 通过使用ObjectMapper开始封装需要返回的校验结果
		ObjectMapper objectMapper = new ObjectMapper();
		List<Object> list = new ArrayList<Object>();
		list.add(fieldId);
		list.add(bool);
		try {
			// 将封装好的校验结果转换成json格式的字符串并响应回去
			return objectMapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	

}
