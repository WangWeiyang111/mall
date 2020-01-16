package com.situ.mall.area.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.area.dao.AreaDao;
import com.situ.mall.area.domain.Area;
import com.situ.mall.area.service.AreaService;

@Service
public class AreaServiceImpl implements Serializable, AreaService {
	private static final long serialVersionUID = 1L;
	@Autowired
	private AreaDao areaDao;
	
	@Override
	public List<Area> findByParentCode() {
		return areaDao.findByParentCode();
	}
	@Override
	public List<Area> findByAreaCode(String areaCode) {
		return areaDao.findByCode(areaCode);
	}
	
}
