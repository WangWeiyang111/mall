<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-sm-12">
	
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">用户类型</th>
					<th scope="col">用户名称</th>
					<th scope="col">用户账号</th>
					<th scope="col">用户密码</th>
					<th scope="col">用户电话</th>
					<th scope="col">操作</th>
				</tr>
			</thead>
		<tbody>
				<c:if test="${!empty adminUserList}">
					<c:forEach items="${adminUserList}" var="adminUser" varStatus="status">
						<tr>
							<th scope="row">${status.index+1}</th>
							<td><c:if test="${adminUser.userKind == 1}">用户</c:if>
								<c:if test="${adminUser.userKind == 2}">管理员</c:if>
							</td>
							<td>${adminUser.userName}</td>
							<td>${adminUser.userCode}</td>
							<td>${adminUser.userPass}</td>
							<td>${adminUser.userPhone}</td>
							<td>
							<a class="btn btn-primary btn-sm" href="javascript:goupdate(${adminUser.rowId});">修改</a> 
							<a class="btn btn-primary btn-sm" href="javascript:;" data-rowId="${adminUser.rowId}" id="admindelete">删除</a>
							<a class="btn btn-primary btn-sm" href="javascript:;" data-rowId="${product.rowId}" id="deleteA">封号</a>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>
<%-- 引入分页 --%>
<%-- <%@ include file="/page.jsp" %> --%>