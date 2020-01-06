<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/base.jsp"></jsp:include>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>Staro</title>

<meta name="author" content="IntelCoder, www.intelcoder.com" />
<meta name="description"
	content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

<link rel="icon" href="assert/img/favicon.png" type="image/png" />

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

<link rel="stylesheet" href="assert/plugins/bootstrap/bootstrap.min.css" />
<link rel="stylesheet" href="assert/plugins/font-awesome/css/all.css" />

<link rel="stylesheet" href="assert/css/style.css" />
<link rel="stylesheet" href="assert/css/responsive.css" />
<link rel="stylesheet" href="assert/css/ic-helpers.min.css" />

</head>
<body>

	<!-- Left menu -->
	<div class="menu-left hidden-xs">
		
			<a href="mall/goIndex" class="logo-left"> <img
				src="assert/img/logo.png" alt="" />
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
			<a href="mall/goCart" class="text-primary"> <i
				class="fas fa-shopping-bag fa-2x"></i> <span class="badge">3</span>
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
		<a href="javascript:void(0);" onclick="openNav();"><i
			class="fas fa-bars"></i></a>
	</div>

	<div id="sidenav" class="side-nav">
		<div class="close-side-btn hidden-xs">
			<a href="javascript:void(0);" onclick="closeNav();">&times;</a>
		</div>

		<div class="cart-side-btn visible-xs">
			<a href="mall/goCart"> <i class="fas fa-shopping-bag"></i> <span
				class="badge">3</span>
			</a>
		</div>

		<div class="account-side-btn visible-xs">
			<a href="mall/goLogin"><i class="fas fa-user-circle"></i></a>
		</div>

		<div class="home-side-btn visible-xs">
			<a href="index.jsp"><i class="fas fa-desktop"></i></a>
		</div>

		<ul>
			<li><a href="mall/goProducts">Over-ear <img
					src="assert/img/icon-headphones.png"
					class="h-30 align-middle m-l-20" alt="" /></a></li>
			<li><a href="mall/goProducts">On-ear <img
					src="assert/img/icon-headphones.png"
					class="h-30 align-middle m-l-20" alt="" /></a></li>
			<li><a href="mall/goProducts">In-ear <img
					src="assert/img/icon-headphones.png"
					class="h-30 align-middle m-l-20" alt="" /></a></li>
			<li><a href="mall/goProducts">Accessories <img
					src="assert/img/icon-headphones.png"
					class="h-30 align-middle m-l-20" alt="" /></a></li>

			<li><hr class="m-tb-30" /></li>

			<li><a href="mall/goProducts">Products</a></li>
			<li><a href="mall/goProduct-Details">Product Details</a></li>
			<li><a href="mall/goAbout">About</a></li>
			<li><a href="mall/goBlog">Blog</a></li>
			<li><a href="mall/goBlog-Post">Blog Post</a></li>
			<li><a href="mall/goAccount">Account</a></li>
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

	<!-- Content -->
	<div class="content-right">
		<!-- Slider -->
		<div id="mycarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators text-xs-center text-right">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
			</ol>

			<!-- Slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item">
					<img src="assert/img/slider/slide1.jpg" alt="" />

					<div
						class="carousel-caption text-xs-center text-sm-center text-md-center text-left">
						<h1>Staroudio</h1>

						<p class="text-gray m-b-80">Introducing the new ST-O S1000
							Purple Edition</p>

						<a href="#" class="btn btn-success"><i class="fas fa-rocket"></i>&nbsp;
							Explore</a> <span class="m-r-30 hidden-xs"></span> <span
							class="m-b-30 visible-xs"></span> <a href="#"
							class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp;
							Buy Now</a>
					</div>
				</div>

				<div class="item">
					<img src="assert/img/slider/slide2.jpg" alt="" />

					<div
						class="carousel-caption text-xs-center text-sm-center text-md-center text-left">
						<h1>Gaming Collection</h1>

						<p class="text-primary m-b-80">Checkout our gaming collection</p>

						<a href="#" class="btn btn-success"><i class="fas fa-rocket"></i>&nbsp;
							Explore</a>
					</div>
				</div>

				<div class="item">
					<img src="assert/img/slider/slide3.jpg" alt="" />

					<div
						class="carousel-caption text-xs-center text-sm-center text-md-center text-left">
						<h1>Wireless Collection</h1>

						<p class="text-white m-b-80">Introducing the new Wi-Fi
							headphones collection</p>

						<a href="#" class="btn btn-success"><i class="fas fa-rocket"></i>&nbsp;
							Explore</a>
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a href="#mycarousel" class="left carousel-control hidden-xs"
				role="button" data-slide="prev">
				<div class="carousel-arrow-left">
					<i class="fas fa-angle-left fa-3x"></i> <span class="sr-only">Previous</span>
				</div>
			</a> <a href="#mycarousel" class="right carousel-control hidden-xs"
				role="button" data-slide="next">
				<div class="carousel-arrow-right">
					<i class="fas fa-angle-right fa-3x"></i> <span class="sr-only">Next</span>
				</div>
			</a>
		</div>
		<!-- Slider -->
	</div>
	<!-- Content -->

	<!-- Search overlay -->
	<div id="searchoverlay" class="overlay hidden-xs">
		<div class="search-close-btn">
			<a href="javascript:void(0);" onclick="closeSearch();">&times;</a>
		</div>

		<div class="container m-t-100 m-b-100">
			<div class="row">
				<div class="col-sm-12">
					<form class="form-horizontal">
						<div class="form-group">
							<div class="col-sm-11 center-block">
								<div class="input-group">
									<input type="text" class="form-control search-input"
										placeholder="Start typing..." /> <span
										class="input-group-btn">
										<button type="submit" class="btn btn-primary search-button">Go!</button>
									</span>
								</div>
							</div>
						</div>
					</form>

					<hr />
				</div>
			</div>

			<div class="row m-t-70 m-b-70">
				<div class="col-sm-12 text-center">
					<h4>we found 3 products for you:</h4>
				</div>
			</div>

			<div class="row m-b-20">
				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product8.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-One</h4>
						</a>

						<p>ST-O S1000</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product9.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-One</h4>
						</a>

						<p>ST-O S2000</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product10.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-One</h4>
						</a>

						<p>ST-O S3000</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>
			</div>

			<div class="row m-b-20">
				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product3.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Two</h4>
						</a>

						<p>ST-T A100</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product2.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Two</h4>
						</a>

						<p>ST-T A100</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product1.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Two</h4>
						</a>

						<p>ST-T A100</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>
			</div>

			<div class="row m-b-20">
				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product4.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Four</h4>
						</a>

						<p>ST-F M200</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product6.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Four</h4>
						</a>

						<p>ST-F M200</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#"> <img src="assert/img/products/product7.png"
							class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Four</h4>
						</a>

						<p>ST-F M200</p>

						<a href="#" class="btn btn-primary btn-sm"><i
							class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12 text-center">
					<a href="#" class="text-primary link-underline">Show all
						results</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Search overlay -->

	<script src="assert/plugins/jquery.min.js"></script>
	<script src="assert/plugins/bootstrap/bootstrap.min.js"></script>

	<script src="assert/js/global.js"></script>
</body>
</html>