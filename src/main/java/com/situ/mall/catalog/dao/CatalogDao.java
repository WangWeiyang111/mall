package com.situ.mall.catalog.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.mall.catalog.domain.Catalog;

@Repository
public interface CatalogDao{
	//根据父类id 查询分类信息
	List<Catalog> findByParentId(Long parentId);
	//展示所有目录
	List<Catalog> find();
	//增加目录
	Long save(Catalog catalog);
	//删除目录
    void doDelete(Long rowId);
	//根据id查找目录
	Catalog findById(Long rowId);
	//目录更新
	Long doUpdate(Catalog catalog);
	
	
}
