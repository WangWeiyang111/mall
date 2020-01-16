package com.situ.mall.address.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.cj.log.Log;
import com.situ.mall.address.dao.AddressDao;
import com.situ.mall.address.domian.Address;
import com.situ.mall.address.domian.AddressDetail;
import com.situ.mall.address.domian.AdressLook;
import com.situ.mall.address.service.AddressService;
import com.situ.mall.user.domain.User;

@Service
public class AddressServiceImpl implements Serializable, AddressService {
	private static final long serialVersionUID = 1L;
	@Autowired
	private AddressDao addressDao;
	
	
	@Override
	public Long save(HttpServletRequest request ,Address address) {
		Long result = 1L;
		HttpSession  session = request.getSession();
		User userSession = (User)session.getAttribute("userSession");
		if(userSession!=null) {
		    Long userId = userSession.getRowId();
		    address.setUserId(userId);
		    address.setActiveFlag(1);
		    addressDao.save(address);
		}else {
		     System.out.println("您未登录，请登录");
		}
		return result;
	}
	@Override
	public Long doUpdate(Address address) {
		addressDao.update(address);
		return address.getRowId();
	}
	@Override
	public Long doDelete(Long rowId) {
		addressDao.delete(rowId);
		return 1L;
	}
	@Override
	public Address getById(Long rowId) {
		return addressDao.getById(rowId);
	}
	@Override
	public List<Address> findAllAdd(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User userSession =(User)session.getAttribute("userSession");
		System.out.println(userSession);
		if(userSession!=null) {
			Long rowId = userSession.getRowId();
			List<Address> Address = addressDao.find(rowId);
			return Address;
		}
		return null;
	}
	@Override
	public Address findByUserId(Long userId) {
		return addressDao.findByUserId(userId);
	}
	@Override
	public List<AddressDetail> findAddress() {
		return addressDao.findAddress();
	}
	
	@Override
	public List<AdressLook> findAllByUserId(HttpServletRequest  request) {
		HttpSession session = request.getSession();
		User userSession =(User)session.getAttribute("userSession");
		Long userId = userSession.getRowId();
		return addressDao.findAllByUserId(userId);
	}
	
}
