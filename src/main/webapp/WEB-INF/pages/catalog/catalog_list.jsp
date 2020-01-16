<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- http://www.jq22.com/demo/jquery-treetable201707260025/  -->
<link href="assert/vendor/jquery-treetable/css/jquery.treetable.css" rel="stylesheet" type="text/css" />
<link href="assert/vendor/jquery-treetable/css/jquery.treetable.theme.default.css" rel="stylesheet" type="text/css" />
<div class="row">
	<div class="col-sm-12">
		<table id="example-basic-expandable">
			<thead>
				<tr>
					<th>目录名称</th>
					<th>目录信息</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty catalogList}">
					<c:forEach items="${catalogList}" var="catalog">
						<tr data-tt-id="${catalog.rowId}" data-tt-parent-id="${catalog.parentId}">
							<td>${catalog.catalogName}</td>
							<td>${catalog.catalogInfo}</td>
							<td><a href="javascript:;" data-rowId="${catalog.rowId}" id="catalog0delete">删除</a> 
							    <a href="javascript:gocatalog0update('${catalog.rowId}');">修改</a> 
							    <a href="javascript:;" data-rowId="${catalog.rowId}" parent-name="${catalog.catalogName}"  id="gocatal1gsave">增加子目录</a>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript" src="assert/vendor/jquery-treetable/js/jquery.treetable.js"></script>
<script>
	$("#example-basic-expandable").treetable({ expandable: true });
</script>

<%-- 引入分页 --%>
<%-- <%@ include file="/page.jsp" %> --%>