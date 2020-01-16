<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/base.jsp"></jsp:include>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

	<title>管理员登录</title>

	<meta name="author" content="IntelCoder, www.intelcoder.com" />
	<meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

	<link rel="icon" href="assert/img/favicon.png" type="image/png" />

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

	<link rel="stylesheet" href="assert/plugins/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="assert/plugins/font-awesome/css/all.css" />

	<link rel="stylesheet" href="assert/css/style.css" />
	<link rel="stylesheet" href="assert/css/responsive.css" />
	<link rel="stylesheet" href="assert/css/ic-helpers.min.css" />
	<%-- <jsp:include page="base.jsp"></jsp:include> --%>
</head>
<body>

	<%@include file="/menu.jsp"%>
	
	<!-- Content -->
	<div class="content-right">
		<div class="container m-t-100 m-b-100">
			<div class="row">
				<div class="col-sm-12">
					<h1 class="text-center">管理员登录</h1>

					<div class="separator-three"></div>
				</div>

				<div class="m-b-70 clearfix hidden-xs hidden-sm"></div>

				<div class="col-sm-12 m-t-70">
					<form id="form_user_login">
						<div class="row">
							<div class="col-xs-12 col-sm-4 col-sm-push-4">
								<div class="form-group form-group-default required">
									<label>Code</label>
									<input type="text" name="userCode" class="form-control" required />
								</div>

								<div class="form-group form-group-default required">
									<label>Password</label>
									<input type="password" name="userPass" class="form-control" required />
								</div>

								<div class="form-group text-center m-t-40">
									<button type="button" class="btn btn-success" id="button_login">
									<i class="fas fa-unlock"></i>&nbsp; Sign In</button>

								</div>
							</div>
						</div>
					</form>
				</div>

				<div class="m-b-70 clearfix hidden-xs hidden-sm"></div>
			</div>
		</div>

		<%@include file="/footer.jsp" %>
		
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
									<input type="text" class="form-control search-input" placeholder="Start typing..." />

									<span class="input-group-btn">
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
						<a href="#">
							<img src="assert/img/products/product8.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-One</h4>
						</a>

						<p>ST-O S1000</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product9.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-One</h4>
						</a>

						<p>ST-O S2000</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product10.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-One</h4>
						</a>

						<p>ST-O S3000</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>
			</div>

			<div class="row m-b-20">
				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product3.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Two</h4>
						</a>

						<p>ST-T A100</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product2.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Two</h4>
						</a>

						<p>ST-T A100</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product1.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Two</h4>
						</a>

						<p>ST-T A100</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>
			</div>

			<div class="row m-b-20">
				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product4.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Four</h4>
						</a>

						<p>ST-F M200</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product6.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Four</h4>
						</a>

						<p>ST-F M200</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>

				<div class="col-sm-4 col-md-4 result-box text-sm-center">
					<div class="col-md-6">
						<a href="#">
							<img src="assert/img/products/product7.png" class="img-responsive" alt="" />
						</a>
					</div>

					<div class="col-md-6 result-info">
						<a href="#">
							<h4>Staro-Four</h4>
						</a>

						<p>ST-F M200</p>

						<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-shopping-bag"></i>&nbsp; Buy Now</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12 text-center">
					<a href="#" class="text-primary link-underline">Show all results</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Search overlay -->

	<script src="assert/plugins/jquery.min.js"></script>
	<script src="assert/plugins/bootstrap/bootstrap.min.js"></script>

	<script src="assert/js/global.js"></script>
</body>
<!-- 引入自定义的JS脚本 -->
<script type="text/javascript" src="assert/pages/login.js"></script>
</html>
	