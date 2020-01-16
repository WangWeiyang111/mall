<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="assert/vendor/jquery-treetable/css/jquery.treetable.css" rel="stylesheet" type="text/css" />
<link href="assert/vendor/jquery-treetable/css/jquery.treetable.theme.default.css" rel="stylesheet" type="text/css" />
	<!-- Left menu -->
	<div class="menu-left hidden-xs">
		<a href=" mall/goIndex" class="logo-left"> <img
			src=" assert/img/logo.png" alt="" />
		</a>

       <c:if test="${sessionScope.userSession!=null}">
		<div class="nav-item">
			<a href="mall/goAccount" class="text-primary"><i
				class="fas fa-user-circle fa-2x"></i>我的
			</a>
		</div>
       </c:if> 
        
		<c:if test="${sessionScope.userSession == null}">
		<div class="nav-item">
			<a href="mall/goLogin" class="text-primary"><i
				class="fas fa-user-circle fa-2x"></i>登录
			</a>
		</div>
       </c:if> 

		<div class="nav-item">
			<a href=" mall/goCart" class="text-primary"> <i
				class="fas fa-shopping-bag fa-2x"></i> <span class="badge">3</span>
			</a>
		</div>
		<div class="nav-item">
			<a href=" mall/goProduct" class="text-primary"> <i
				class="fas fa-shopping-bag fa-2x"></i> 商品<span class="badge">3</span>
			</a>
		</div>

		<div class="nav-item last">
			<a href="javascript:void(0);" onclick="openSearch();"
				class="text-primary"> <i class="fas fa-search fa-2x"></i>
			</a>
		</div>
	</div>
	<!-- Left menu -->
	
	<!-- Right menu -->
	<div class="menu-right-btn">
		<a href="javascript:void(0);" onclick="openNav();" id="goCatalogListFind"><i
			class="fas fa-bars"></i></a>
	</div>

	<div id="sidenav" class="side-nav">
		<div class="close-side-btn hidden-xs">
			<a href="javascript:void(0);" onclick="closeNav();">&times;</a>
		</div>

		<div class="cart-side-btn visible-xs">
			<a href=" mall/goCart"> <i class="fas fa-shopping-bag"></i> <span
				class="badge">3</span>
			</a>
		</div>

		<div class="account-side-btn visible-xs">
			<a href=" mall/goLogin"><i class="fas fa-user-circle"></i></a>
		</div>

		<div class="home-side-btn visible-xs">
			<a href=" index.jsp"><i class="fas fa-desktop"></i></a>
		</div>
		
		
	<table id="example-basic-expandable">
		
		<c:if test="${!empty catalogList}">
					<c:forEach items="${catalogList}" var="catalog">
					<c:if test="${catalog.parentId==-1}">
					
					<tr data-tt-id="${catalog.rowId}" data-tt-parent-id="${catalog.parentId}">
							<td>${catalog.catalogName}</td>
					</tr>
					
					</c:if>
					<c:if test="${catalog.parentId!=-1}">
					<tr data-tt-id="${catalog.rowId}" data-tt-parent-id="${catalog.parentId}">
						<td><a class="doproductlook" catalogId = "${catalog.rowId}">${catalog.catalogName}</a></td>
					</tr>
					</c:if>
					</c:forEach>
		</c:if>	
		</tbody>		
		</table>
        <ul>
            <li><hr class="m-tb-30" /></li>
			<li><a href=" mall/goProducts">Products</a></li>
			<li><a href=" mall/goProduct-Details">Product Details</a></li>
			<li><a href=" mall/goAbout">About</a></li>
			<li><a href=" mall/goBlog">Blog</a></li>
			<li><a href=" mall/goBlog-Post">Blog Post</a></li>
			<li><a href=" mall/goAccount">Account</a></li>
		</ul>

		<div class="social-media-box">
			<hr />

			<a href="#" class="text-primary" target="_blank"><i
				class="fab fa-facebook-square"></i></a> <a href="#" class="text-primary"
				target="_blank"><i class="fab fa-google-plus-square"></i></a> <a
				href="#" class="text-primary" target="_blank"><i
				class="fab fa-twitter-square"></i></a> <a href="#" class="text-primary"
				target="_blank"><i class="fab fa-instagram"></i></a> <a href="#"
				class="text-primary" target="_blank"><i
				class="fab fa-pinterest-square"></i></a> <a href="#"
				class="text-primary" target="_blank"><i class="fab fa-linkedin"></i></a>
			<a href="#" class="text-primary" target="_blank"><i
				class="fab fa-youtube-square"></i></a>
				
		</div>
	</div>
	<!-- Right menu -->
<script src="assert/vendor/jquery/jquery.min.js"></script>
<script src="assert/pages/catalog.js"></script>
<script src="assert/pages/product.js"></script>

<script type="text/javascript" src="assert/vendor/jquery-treetable/js/jquery.treetable.js"></script>
<script>
	$("#example-basic-expandable").treetable({ expandable: true });
</script>