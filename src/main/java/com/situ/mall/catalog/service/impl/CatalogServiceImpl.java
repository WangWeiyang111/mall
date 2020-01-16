package com.situ.mall.catalog.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.catalog.dao.CatalogDao;
import com.situ.mall.catalog.domain.Catalog;
import com.situ.mall.catalog.service.CatalogService;

@Service
public class CatalogServiceImpl implements Serializable, CatalogService {

	private static final long serialVersionUID = 1L;

	@Autowired
	private CatalogDao catalogDao;

//	// 多级目录的展示
//
//	@Override
//	public List<TreeNode> findByParentId(Long parentId) {
//		// 创建一级目录列表，存放一级目录
//		List<TreeNode> nodeList = new ArrayList<>();
//		// 创建二级目录列表，存放二级目录
//		/* List<TreeNode> nodeList = new ArrayList<>(); */
//
//		// 根据父目录（默认为0）拿到一级目录 是个列表
//		List<Catalog> catalog1List = catalogDao.findByParentId(0);
//		TreeNode treeNode  = new TreeNode();
//		for (Catalog catalog1 : catalog1List) {
//			treeNode.setId(catalog1.getRowId());
//			treeNode.setText(catalog1.getCatalogName());
//			nodeList.add(treeNode);
//		}
//		return nodeList;
//	}

	@Override
	public List<Catalog> find() {
		
		return catalogDao.find();
	}

	//新增目录
	@Override
	public Long save(Catalog catalog) {
		if(catalog.getParentId() == null) {
			catalog.setParentId(-1L);
		}
		catalog.setCreateBy("jason");
		catalog.setCreateDate(new Date());
		return catalogDao.save(catalog);
	}

	
	
    //更新  参数是catalog
	@Override
	public Long doUpdate(Catalog catalog) {
		
		return catalogDao.doUpdate(catalog);
	}

    //根据id删除目录
	@Override
	public Long doDelete(Long rowId) {
		Long result = 10L;
		catalogDao.doDelete(rowId);
		return result;
	}

    //根据id查找
	@Override
	public Catalog findById(Long rowId) {
		
		return catalogDao.findById(rowId);
	}
	
    //根据parentId查找
	@Override
	public List<Catalog> findByParentId(Long parentId) {
		
		return catalogDao.findByParentId(parentId);
	}
	
	
    
}
