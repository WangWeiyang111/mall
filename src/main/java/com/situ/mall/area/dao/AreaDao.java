package com.situ.mall.area.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.mall.area.domain.Area;

@Repository
public interface AreaDao {
	
	List<Area> find();
	
	List<Area> findByParentCode();
	
	List<Area> findByCode(String areaCode);
}
