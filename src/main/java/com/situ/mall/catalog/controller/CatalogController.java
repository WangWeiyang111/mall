package com.situ.mall.catalog.controller;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.catalog.domain.Catalog;
import com.situ.mall.catalog.service.CatalogService;

@RequestMapping("/catalog")
@Controller
public class CatalogController implements Serializable {

	private static final long serialVersionUID = 1L;

	@Autowired
	private CatalogService catalogService;
	
	/**
	 * 
	 * @到目录首页
	 * @param modelAndView
	 * @return
	 */

	
	/**
	 * 
	 * @跳转展示页面
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/gocatalogindex")
	public ModelAndView goCatalogIndex(ModelAndView modelAndView) {
		modelAndView.setViewName("catalog/catalog_index");
		return modelAndView;
	}
	
	/**
	 * 
	 * @跳转一级目录增加页面
	 * @param modelAndView
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/docatalog0add")
	public Long doAdd(Catalog catalog) {
		
		return catalogService.save(catalog);
	}
	
	/**
	 * 
	 * @展示目录
	 * @return
	 */
	
	@RequestMapping("/dofind")
	public ModelAndView find(ModelAndView modelAndView) {
		modelAndView.addObject("catalogList",catalogService.find());
		modelAndView.setViewName("catalog/catalog_list");
		return modelAndView;
	}
	/**
	 * @前台展示目录
	 * @param modelAndView
	 * @return
	 */
//	@ResponseBody
//	@RequestMapping("/gocataloglistfind")
//	public List<Catalog> findCatalog() {
//		
//		return catalogService.find();
//	}
	
	/**
	 * @新增一级目录
	 * @param rowId
	 * @return
	 */
	
	@ResponseBody
	@RequestMapping("/gocatalog0update/{rowId}")
	public Catalog goUpdate(@PathVariable("rowId") Long rowId) {
		
		return catalogService.findById(rowId);
	}
	
	/**
	 * 
	 * @修改一级目录
	 * @param user
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/docatalog0update")
	public Long doUpdate (Catalog catalog) {
		
		return catalogService.doUpdate(catalog);
	}
	
	/**
	 * 
	 * @删除一级目录
	 * @param rowId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/docatalog0delete/{rowId}")
	public Long doAdminDelete (@PathVariable("rowId") Long rowId) {
		
		return catalogService.doDelete(rowId);
	}
	
	
	/**
	 * 
	 * @param parentId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/dofindcatalog")
	public List<Catalog> doFindCatalog(){
		
		return catalogService.find();
	}
	
}
