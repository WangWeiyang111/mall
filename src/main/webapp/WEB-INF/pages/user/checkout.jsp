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
	<link rel="stylesheet" href="assert/plugins/bootstrap-toggle/bootstrap-toggle.min.css" />

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
					<h1 class="text-xs-center">Checkout</h1>

					<div class="separator-one"></div>
				</div>
			</div>

			<div class="row m-t-70">
				<form>
					<div class="col-xs-12 col-sm-6 col-md-7">
						<div class="row">
							<div class="col-sm-6">
								<h3 class="m-b-30 text-xs-center">Personal Details</h3>
							</div>

							<div class="col-sm-6">
								<p class="m-b-20 text-xs-center text-right">Already have an account? <a href="mall/goLogin" class="btn btn-primary btn-xs m-l-10">Sign In</a></p>
							</div>

							<div class="clearfix"></div>

							<div class="col-sm-6">
								<div class="form-group form-group-default required">
									<label>First Name</label>
									<input type="text" name="first_name" class="form-control" required />
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group form-group-default required">
									<label>Last Name</label>
									<input type="text" name="last_name" class="form-control" required />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-6">
								<div class="form-group form-group-default required">
									<label>Email</label>
									<input type="email" name="email" class="form-control" required />
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group form-group-default">
									<label>Phone</label>
									<input type="tel" name="phone" class="form-control" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-12">
								<h3 class="m-tb-30 text-xs-center">Shipping Details</h3>

								<div class="form-group form-group-default required">
									<label>Name</label>
									<input type="text" name="s_name" class="form-control" required />
								</div>

								<div class="form-group form-group-default required">
									<label>Country</label>
									<select name="s_country" class="form-control">
										<option value="">United States</option>
										<option value="">Canada</option>
										<option value="">United Kingdom</option>
										<option value="">Germany</option>
										<option value="">Spain</option>
										<option value="">France</option>
										<option value="">Sweden</option>
										<option value="">Denmark</option>
										<option value="">Portugal</option>
										<option value="">Switzerland</option>
										<option value="">Finland</option>
										<option value="">Italy</option>
										<option value="">Turkey</option>
										<option value="">...</option>
									</select>
								</div>

								<div class="form-group form-group-default required">
									<label>State/Region</label>
									<select name="s_state" class="form-control">
										<option value="">Alabama</option>
										<option value="">Alaska</option>
										<option value="">Arizona</option>
										<option value="">Indiana</option>
										<option value="">Kansas</option>
										<option value="">Virginia</option>
										<option value="">Florida</option>
										<option value="">Texas</option>
										<option value="">North Dakota</option>
										<option value="">South Dakota</option>
										<option value="">Washington</option>
										<option value="">...</option>
									</select>
								</div>

								<div class="form-group form-group-default required">
									<label>City</label>
									<input type="text" name="s_city" class="form-control" required />
								</div>

								<div class="form-group form-group-default required">
									<label>Address</label>
									<input type="text" name="s_address" class="form-control" required />
								</div>

								<div class="form-group form-group-default required">
									<label>Zip</label>
									<input type="text" name="s_zip" class="form-control" required />
								</div>

								<div class="form-group form-group-default">
									<label>Phone</label>
									<input type="text" name="s_phone" class="form-control" />
								</div>

								<h5 class="m-t-20">Same for billing address? <span class="pull-right"><input type="checkbox" id="same_for_billing" data-toggle="toggle" data-on="Yes" data-off="No" data-size="mini" data-height="21" checked /></span></h5>
							</div>
						</div>

						<div id="billing_details" class="row">
							<div class="col-sm-12">
								<h3 class="m-tb-30 text-xs-center">Billing Details</h3>

								<div class="form-group form-group-default required">
									<label>Name</label>
									<input type="text" name="b_name" class="form-control" required />
								</div>

								<div class="form-group form-group-default required">
									<label>Country</label>
									<select name="b_country" class="form-control">
										<option value="">United States</option>
										<option value="">Canada</option>
										<option value="">United Kingdom</option>
										<option value="">Germany</option>
										<option value="">Spain</option>
										<option value="">France</option>
										<option value="">Sweden</option>
										<option value="">Denmark</option>
										<option value="">Portugal</option>
										<option value="">Switzerland</option>
										<option value="">Finland</option>
										<option value="">Italy</option>
										<option value="">Turkey</option>
										<option value="">...</option>
									</select>
								</div>

								<div class="form-group form-group-default required">
									<label>State/Region</label>
									<select name="b_state" class="form-control">
										<option value="">Alabama</option>
										<option value="">Alaska</option>
										<option value="">Arizona</option>
										<option value="">Indiana</option>
										<option value="">Kansas</option>
										<option value="">Virginia</option>
										<option value="">Florida</option>
										<option value="">Texas</option>
										<option value="">North Dakota</option>
										<option value="">South Dakota</option>
										<option value="">Washington</option>
										<option value="">...</option>
									</select>
								</div>

								<div class="form-group form-group-default required">
									<label>City</label>
									<input type="text" name="b_city" class="form-control" required />
								</div>

								<div class="form-group form-group-default required">
									<label>Address</label>
									<input type="text" name="b_address" class="form-control" required />
								</div>

								<div class="form-group form-group-default required">
									<label>Zip</label>
									<input type="text" name="b_zip" class="form-control" required />
								</div>

								<div class="form-group form-group-default">
									<label>Phone</label>
									<input type="text" name="b_phone" class="form-control" />
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-5">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="m-xs-t-30 m-b-30 text-xs-center">Shipping Method</h3>

								<div class="form-group form-group-default">
									<div class="radio">
										<label>
											<input type="radio" name="shipping_method" class="input-radio" value="1" checked />
											Standard Shipping
										</label>

										<label class="pull-right">Free</label>
									</div>
								</div>

								<div class="form-group form-group-default">
									<div class="radio">
										<label>
											<input type="radio" name="shipping_method" class="input-radio" value="2" />
											Express Shipping
										</label>

										<label class="pull-right">$10.00</label>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-12">
								<h3 class="m-tb-30 text-xs-center">Payment Method</h3>

								<div class="form-group form-group-default">
									<div class="radio">
										<label>
											<input type="radio" name="payment_method" value="1" checked />
											Credit Card
										</label>
									</div>
								</div>

								<div class="form-group form-group-default">
									<div class="radio">
										<label>
											<input type="radio" name="payment_method" value="2" />
											PayPal
										</label>
									</div>
								</div>

								<div class="form-group form-group-default">
									<div class="radio">
										<label>
											<input type="radio" name="payment_method" value="3" />
											Cash on Delivery
										</label>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-12">
								<h3 class="m-tb-30 text-xs-center">Order Notes</h3>

								<div class="form-group form-group-default">
									<label>Notes about your order</label>
									<textarea name="message" class="form-control v-resize" rows="2"></textarea>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-12">
								<h3 class="m-tb-30 text-xs-center">Your Order</h3>

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
											<td colspan="3">
												<div class="input-group pull-right m-t-20">
													<span class="input-group-addon"><i class="fas fa-gift"></i></span>
													<input type="text" name="discount_code" class="form-control" placeholder="Discount code" />
													<span class="input-group-btn"><a href="#" class="btn btn-primary btn-square btn-sm">Apply</a></span>
												</div>
											</td>
										</tr>

										<tr>
											<td colspan="3" class="b-t-0">&nbsp;</td>
										</tr>

										<tr>
											<td colspan="2" class="b-t-0 text-right"><h5 class="m-b-0">Subtotal</h5></td>
											<td class="b-t-0 text-right"><h5 class="m-b-0">$1070.00</h5></td>
										</tr>

										<tr>
											<td colspan="2" class="b-t-0 text-right"><h5 class="m-b-0"><a href="#" class="text-success"><i class="fas fa-times"></i></a> Discount&nbsp; <span class="text-success"><i class="fas fa-tag fa-rotate-90"></i> 10OFF</span></h5></td>
											<td class="b-t-0 text-right"><h5 class="m-b-0">-$107.00</h5></td>
										</tr>

										<tr>
											<td colspan="2" class="b-t-0 text-right"><h5 class="m-b-0">Shipping</h5></td>
											<td class="b-t-0 text-right"><h5 class="m-b-0">$34.00</h5></td>
										</tr>

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

						<button type="submit" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; Complete Order</button>

						<p class="small m-t-20"><a href="mall/goCart"><i class="fas fa-angle-left"></i> return to cart</a></p>
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
	<script src="assert/plugins/bootstrap-toggle/bootstrap-toggle.min.js"></script>

	<script src="assert/js/global.js"></script>
</body>
</html>