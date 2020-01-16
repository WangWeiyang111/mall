package com.situ.mall.product.controller;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.catalog.domain.Catalog;
import com.situ.mall.catalog.service.CatalogService;
import com.situ.mall.product.domain.Product;
import com.situ.mall.product.service.ProductService;

@RequestMapping("/product")
@Controller
public class ProductController implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
    private CatalogService catalogService;
	
	/**
	 * 
	 * @跳转后台商品主页
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
	 * @跳转商品前台主页
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goproducts")
	public ModelAndView goProducts(ModelAndView modelAndView) {
		modelAndView.addObject("catalogList", catalogService.find());
		modelAndView.setViewName("products/products");
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
	@RequestMapping("/find")
	public ModelAndView findAllProduct(ModelAndView modelAndView) {
		modelAndView.addObject("productList", productService.findVw()); 
		modelAndView.setViewName("products/product_list");
		return modelAndView;
	}
	 

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
	
	@ResponseBody
	@RequestMapping("/dofindcatalog/{parentId}")
	public List<Catalog> doFindCatalog(@PathVariable Long parentId){
		
		return catalogService.findByParentId(parentId);
	}
	
	
	/**
	 * 上下架
	 * @param rowId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/updateState/{rowId}")
	public Long doUpdateState(@PathVariable Long rowId ,String productState) {
		
		
		return productService.doUpdateState(rowId, productState);
	}
	
	
	@RequestMapping("/productbycatalogid/{catalogId}")
	public ModelAndView doProductCatalog(@PathVariable Long catalogId,ModelAndView modelAndView){
		modelAndView.addObject("productList", productService.findProductByCatalogId(catalogId));
		modelAndView.setViewName("products/products");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping("/dofindproductbycatalogid/{catalogId}")
	public List<Product> doFindProductByCatalogId(@PathVariable Long catalogId){
		
		return productService.findProductByCatalogId(catalogId);
	}
	
	
	@ResponseBody
	@RequestMapping("/dofindproductbyid/{rowId}")
	public Product doFindProductById(@PathVariable Long rowId) {
		
		return productService.findProductById(rowId);
	}
	
	/**
	 * @跳转添加到购物车页面
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goProducatDetail")
	public ModelAndView goProductDetail(ModelAndView modelAndView,Long rowId) {
		modelAndView.addObject("product",productService.findProductById(rowId));
		modelAndView.setViewName("products/product-details");
		return modelAndView;
	}
	
	

	@ResponseBody
	@RequestMapping("/gocart/{rowId}")
	public Product goAddCart(@PathVariable Long rowId,HttpServletRequest request) {
		
		return null;
	}
}

