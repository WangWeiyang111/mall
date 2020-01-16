package com.situ.mall.area.service;

import java.util.List;

import com.situ.mall.area.domain.Area;

public interface AreaService {
	
	List<Area> findByParentCode();
	
	List<Area> findByAreaCode(String areaCode);
}
