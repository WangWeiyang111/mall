package com.situ.mall.order.domain;

import java.io.Serializable;
import java.util.List;

import org.apache.ibatis.type.Alias;

import com.situ.mall.orderitem.domain.OrderList;

@Alias("Order")
public class Order implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Long rowId;
	private Long orderCode;
	private Long userId;
	private Long addressId;
	private Long totalPrice;
	private Integer orderState;
	private List<OrderList> orderList;
	
	public Order(Long rowId, Long orderCode, Long userId, Long addressId, Integer orderState) {
		super();
		this.rowId = rowId;
		this.orderCode = orderCode;
		this.userId = userId;
		this.addressId = addressId;
		this.orderState = orderState;
	}
	public Order() {
		// TODO Auto-generated constructor stub
	}
	public Long getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(Long orderCode) {
		this.orderCode = orderCode;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getAddressId() {
		return addressId;
	}
	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}
	public Integer getOrderState() {
		return orderState;
	}
	public void setOrderState(Integer orderState) {
		this.orderState = orderState;
	}
	public Long getRowId() {
		return rowId;
	}
	public void setRowId(Long rowId) {
		this.rowId = rowId;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public List<OrderList> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<OrderList> orderList) {
		this.orderList = orderList;
	}
	
	
}
