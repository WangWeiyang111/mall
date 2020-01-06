package com.situ.mall.product.domain;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.mall.base.domain.BaseUser;

@Alias("Product")
public class Product extends BaseUser implements Serializable {

	private static final long serialVersionUID = 1L;

	private String productName;
	private String productCode;
	private String productPicture;
	private CommonsMultipartFile productPictureFile;//要上传的图片
	private String productPrice;
	private String productCount;
	private String activeFlag;
	private String productStatus;// 商品状态
	private String productInfo;
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductPicture() {
		return productPicture;
	}
	public void setProductPicture(String productPicture) {
		this.productPicture = productPicture;
	}
	public CommonsMultipartFile getProductPictureFile() {
		return productPictureFile;
	}
	public void setProductPictureFile(CommonsMultipartFile productPictureFile) {
		this.productPictureFile = productPictureFile;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductCount() {
		return productCount;
	}
	public void setProductCount(String productCount) {
		this.productCount = productCount;
	}
	public String getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(String activeFlag) {
		this.activeFlag = activeFlag;
	}
	public String getProductStatus() {
		return productStatus;
	}
	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	

}
