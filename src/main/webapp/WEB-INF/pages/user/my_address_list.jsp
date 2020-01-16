<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-sm-12">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">省/市/区（县）</th>
					<th scope="col">详细地址</th>
					<th scope="col">邮政编码</th>
					<th scope="col">收货电话</th>
					<th scope="col">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty addressList}">
					<c:forEach items="${addressList}" var="address" varStatus="status">
					<tr>
					<th scope="row">${status.index+1}</th>
					<td>${address.areaName}</td>
					<td>${address.detailedAddress}</td>
					<td>${address.zipCode}</td>
					<td>${address.recrivePhone}</td>
					<td>
						<a href="javascript:goupdate(${address.rowId});">修改</a>
						<a href="javascript:;" data-rowId="${address.rowId}" id="deleteA">删除</a>
					</td>
				</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>
