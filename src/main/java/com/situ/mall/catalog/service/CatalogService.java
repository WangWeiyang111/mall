package com.situ.mall.catalog.service;

import java.util.List;

import com.situ.mall.catalog.domain.Catalog;

public interface CatalogService {
	// 展示
	List<Catalog> find();
	//根据parentId查找
	List<Catalog> findByParentId(Long parentId);
	//增加目录
	Long save(Catalog catalog);
	//修改目录
	Long doUpdate(Catalog catalog);
    //删除目录
	Long doDelete(Long rowId);
	//根据rowId查目录
	Catalog findById(Long rowId);
}
