package com.situ.mall.address.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.situ.mall.address.domian.Address;
import com.situ.mall.address.domian.AddressDetail;
import com.situ.mall.address.domian.AdressLook;

public interface AddressService {

	Long save(HttpServletRequest request,Address address);
	
	Long doUpdate(Address address);
	
	Long doDelete(Long rowId);
	
	Address getById(Long rowId);
	
	List<Address> findAllAdd(HttpServletRequest request);
	
	Address findByUserId(Long userId);
	
	List<AddressDetail> findAddress();
	
	List<AdressLook> findAllByUserId(HttpServletRequest request);

}
