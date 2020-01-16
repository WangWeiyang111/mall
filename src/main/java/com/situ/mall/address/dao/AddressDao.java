package com.situ.mall.address.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.mall.address.domian.Address;
import com.situ.mall.address.domian.AddressDetail;
import com.situ.mall.address.domian.AdressLook;

@Repository
public interface AddressDao {

	Long save(Address address);
	
	void update(Address address);
	
	void delete(Long rowId);
	
	List<Address> find(Long rowId);
	
	List<AddressDetail> findAddress();
	
	Address getById(Long rowId);
	
	Address findByUserId(Long userId);
	
	List<AdressLook> findAllByUserId(Long userId);
}
