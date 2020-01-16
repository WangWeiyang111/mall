<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<jsp:include page="/base.jsp"></jsp:include>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

	<title>Staro - Checkout</title>

	<meta name="author" content="IntelCoder, www.intelcoder.com" />
	<meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

	<link rel="icon" href="assert/img/favicon.png" type="image/png" />

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

	<link rel="stylesheet" href="assert/plugins/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="assert/plugins/font-awesome/css/all.min.css" />
	<!-- <link rel="stylesheet" href="assert/plugins/bootstrap-toggle/bootstrap-toggle.min.css" />
 -->
	<link rel="stylesheet" href="assert/css/style.css" />
	<link rel="stylesheet" href="assert/css/responsive.css" />
	<link rel="stylesheet" href="assert/css/ic-helpers.min.css" />
</head>
<body>
	
<%@include file="/menu.jsp"%>

	<!-- Content -->
	<div class="content-right">
		<div class="container m-t-100 m-b-100">
			<div class="row">
				<div class="col-sm-12">
					<a id="look" class="m-b-30 text-xs-center" >展示我的订单</a>
					<div class="separator-one"></div>
				</div>
			</div>

			<div class="row m-t-70">
			
				<form>
					<div class="col-xs-12 col-sm-6 col-md-7">
						<div class="row">
							<div class="col-sm-12">
							<h3 class="m-b-30 text-xs-center">个人资料</h3>
								

								<div class="form-group form-group-default required">
									<label>送货地址</label>
									<select name="s_province" class="form-control">
									<option value="">山东省青岛市城阳区中享思途</option>
										
								    </select>
								</div>

								<div class="form-group form-group-default required">
									<label>邮政编码</label>
									<select name="s_zip" class="form-control">
										<option value="">441800</option>
									   
								</select>
								</div>
								
								<div class="form-group form-group-default required">
									<label>电话号码</label>
									<select name="s_phone" class="form-control">
										<option value="">17862802967</option>
									 	
								    </select>
								</div>

								<h5 class="m-t-20">Same for billing address? <span class="pull-right"><input type="checkbox" id="same_for_billing" data-toggle="toggle" data-on="Yes" data-off="No" data-size="mini" data-height="21" checked /></span></h5>
							</div>
						</div>

					
					</div>

					<div class="col-xs-12 col-sm-6 col-md-5">
						
						<div class="row">
							<div class="col-sm-12">
								<h3 class="m-tb-30 text-xs-center">订单</h3>

								<table class="table table-hover table-condensed">
									<tbody>
										<tr>
											<td class="col-sm-2 hidden-xs">
												<a href="#" class="thumbnail m-b-0">
													<img src="assert/img/products/product3.png" alt="" />
												</a>
											</td>

											<td>2 &nbsp;x&nbsp; Staro-Two ST-O A100</td>

											<td class="text-right">$290.00</td>
										</tr>

										<tr>
											<td class="col-sm-2 hidden-xs">
												<a href="#" class="thumbnail m-b-0">
													<img src="assert/img/products/product10.png" alt="" />
												</a>
											</td>

											<td>3 &nbsp;x&nbsp; Staro-One ST-O S2000</td>

											<td class="text-right">$780.00</td>
										</tr>
									</tbody>

									<tfoot>
										<tr>
										
											<td colspan="2" class="b-t-0 text-right"><h3 class="m-b-0">Total</h3></td>
											<td class="b-t-0 text-right"><h3 class="m-b-0">$997.00</h3></td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>

					<div class="col-xs-12 col-sm-12 col-md-12 text-center">
						<div class="separator-two m-b-30"></div>

						<button type="submit" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; 提交订单</button>

						<!-- <p class="small m-t-20"><a href="mall/goCart"><i class="fas fa-angle-left"></i> return to cart</a></p> -->
					</div>
				</form>
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
	<!-- <script src="assert/plugins/bootstrap-toggle/bootstrap-toggle.min.js"></script> -->

	<script src="assert/js/global.js"></script>
    <script src="assert/pages/order.js"></script>
	
</body>
</html>