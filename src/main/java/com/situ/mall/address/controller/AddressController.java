package com.situ.mall.address.controller;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.address.domian.Address;
import com.situ.mall.address.service.AddressService;
import com.situ.mall.area.domain.Area;
import com.situ.mall.area.service.AreaService;

@Controller
@RequestMapping("/address")
public class AddressController implements Serializable {
	private static final long serialVersionUID = 1L;
	@Autowired
	private AddressService addressService;
	@Autowired
	private AreaService areaService;
	
	
	@RequestMapping("/goMyAddressIndex")
	public ModelAndView goMyAddressIndex(ModelAndView modelAndView) {
		modelAndView.addObject("areaList", areaService.findByParentCode());
		modelAndView.setViewName("user/my_address_index");
		return modelAndView;
	}
	
	
	@RequestMapping("/goMyAddressList")
	public ModelAndView goMyAddressList(ModelAndView modelAndView) {
		modelAndView.setViewName("user/my_address_list");
		return modelAndView;
	}
	
	
	@ResponseBody
	@RequestMapping("/add")
	public Long add(HttpServletRequest request,Address address) {
		return addressService.save(request,address);
	}
	
	
	@ResponseBody
	@RequestMapping("/delete/{rowId}")
	public Long delete(@PathVariable Long rowId) {
		return addressService.doDelete(rowId);
	}
	
	
	@ResponseBody
	@RequestMapping("/find")
	public ModelAndView goAddressList(ModelAndView modelAndView) {
		modelAndView.addObject("addressList", addressService.findAddress());
		modelAndView.setViewName("user/my_address_list");
		return modelAndView;
	}

	
	@ResponseBody
	@RequestMapping("/findAll/{areaCode}")
	public List<Area> findByAreaCode1(@PathVariable("areaCode") String areaCode, ModelAndView modelAndView) {
		return areaService.findByAreaCode(areaCode);
	}

	@ResponseBody
	@RequestMapping("/findByCode/{areaCode}")
	public List<Area> findByAreaCode(@PathVariable("areaCode") String areaCode, ModelAndView modelAndView) {
		return areaService.findByAreaCode(areaCode);
	}
}
