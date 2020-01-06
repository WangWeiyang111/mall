<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-sm-12">
	
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">商品名称</th>
					<th scope="col">商品编号</th>
					<th scope="col">商品图片</th>
					<th scope="col">商品价格</th>
					<th scope="col">商品库存</th>
					<th scope="col">商品状态(上下架)</th>
					<th scope="col">商品介绍</th>
					<th scope="col">操作</th>
				</tr>
			</thead>
		<tbody>
				<c:if test="${!empty productList}">
					<c:forEach items="${productList}" var="product" varStatus="status">
						<tr>
							<th scope="row">${status.index+1}</th>
							<td>${product.productName}</td>
							<td>${product.productCode}</td>
							<td>${product.productPicture}</td>
							<td>${product.productPrice}</td>
							<td>${product.productCount}</td>
							<td><c:if test="${product.productStatus ==1}">上架</c:if>
								<c:if test="${product.productStatus ==2}">下架</c:if>
							</td>
							<td>${product.productInfo}</td>
							<td><a class="btn btn-primary btn-sm" href="javascript:goupdate(${product.rowId});">修改</a> 
							<!-- data-xxx H5以后允许自定义元素的属性 --> 
							<a class="btn btn-primary btn-sm" href="javascript:;" data-rowId="${product.rowId}" id="deleteA">删除</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>
<%-- 引入分页 --%>
<%@ include file="/page.jsp" %>