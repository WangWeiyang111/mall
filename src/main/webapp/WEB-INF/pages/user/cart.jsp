<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<jsp:include page="/base.jsp"></jsp:include>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

	<title>Staro - Cart</title>

	<meta name="author" content="IntelCoder, www.intelcoder.com" />
	<meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

	<link rel="icon" href="assert/img/favicon.png" type="image/png" />

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

	<link rel="stylesheet" href="assert/plugins/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="assert/plugins/font-awesome/css/all.css" />

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
					<h1 class="text-xs-center">Cart</h1>

					<div class="separator-one"></div>
				</div>

				<div class="col-sm-12 m-t-70">
					<form class="form-horizontal">
						<table class="table table-hover">
							<thead>
								<tr>
									<th colspan="2">Product</th>
									<th class="text-center">Price</th>
									<th class="text-center">Quantity</th>
									<th class="text-center">Total</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td class="col-sm-1 hidden-xs">
										<a href="#" class="thumbnail m-b-0">
											<img src="assert/img/products/product3.png" alt="" />
										</a>
									</td>

									<td class="col-sm-4">
										<h4 class="m-b-5"><a href="#">Staro-Two</a></h4>
										<h6>ST-T A100</h6>
									</td>

									<td class="col-sm-2 text-center"><strong>$290.00</strong></td>

									<td class="col-sm-2 text-center">
										<div class="input-group">
											<span class="input-group-addon hidden-sm">
												<input type="button" name="qty_minus" class="btn-qty" value="-" data-field="quantity" />
											</span>

											<input type="text" name="quantity" class="form-control text-center" value="3" />

											<span class="input-group-addon hidden-sm">
												<input type="button" name="qty_plus" class="btn-qty" value="+" data-field="quantity" />
											</span>
										</div>
									</td>

									<td class="col-sm-2 text-center"><strong>$870.00</strong></td>

									<td class="col-sm-1 text-center">
										<a href="#" class="btn btn-primary btn-square btn-sm"><i class="fas fa-times"></i></a>
									</td>
								</tr>

								<tr>
									<td class="col-sm-1 hidden-xs">
										<a href="#" class="thumbnail m-b-0">
											<img src="assert/img/products/product10.png" alt="" />
										</a>
									</td>

									<td class="col-sm-4">
										<h4 class="m-b-5"><a href="#">Staro-One</a></h4>
										<h6>ST-O S2000</h6>
									</td>

									<td class="col-sm-2 text-center"><strong>$149.00</strong></td>

									<td class="col-sm-2 text-center">
										<div class="input-group">
											<span class="input-group-addon hidden-sm">
												<input type="button" name="qty_minus" class="btn-qty" value="-" data-field="quantity" />
											</span>

											<input type="text" name="quantity" class="form-control text-center" value="2" />

											<span class="input-group-addon hidden-sm">
												<input type="button" name="qty_plus" class="btn-qty" value="+" data-field="quantity" />
											</span>
										</div>
									</td>

									<td class="col-sm-2 text-center"><strong>$298.00</strong></td>

									<td class="col-sm-1 text-center">
										<a href="#" class="btn btn-primary btn-square btn-sm"><i class="fas fa-times"></i></a>
									</td>
								</tr>
							</tbody>

							<tfoot>
								<tr>
									<td colspan="6" class="hidden-xs">&nbsp;</td>
								</tr>

								<tr>
									<td colspan="3" class="b-t-0">Shipping and discounts will be calculated at checkout</td>
									<td colspan="3" class="b-t-0 text-right"><h3 class="m-b-0">Total&nbsp; $1168.00</h3></td>
								</tr>

								<tr>
									<td colspan="6" class="b-t-0 hidden-xs">&nbsp;</td>
								</tr>

								<tr>
									<td colspan="3" class="b-t-0">
										<a href="mall/goIndex" class="btn btn-default">Continue Shopping</a>
									</td>
									<td colspan="3" class="b-t-0 text-right">
										<a href="mall/goCheckout" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; Proceed to Checkout</a>
									</td>
								</tr>
							</tfoot>
						</table>
					</form>
				</div>
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
</html>>