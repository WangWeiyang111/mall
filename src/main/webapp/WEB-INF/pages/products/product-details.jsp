<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
﻿<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<jsp:include page="/base.jsp"></jsp:include>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

	<title>Staro - Product Details</title>

	<meta name="author" content="IntelCoder, www.intelcoder.com" />
	<meta name="description" content="Staro is a clean and light HTML5 theme for showing your products in a simple and elegant way. It's a fully responsive e-commerce template that was built with customers in mind." />

	<link rel="icon" href="assert/img/favicon.png" type="image/png" />

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600" />

	<link rel="stylesheet" href="assert/plugins/bootstrap/bootstrap.min.css" />
	<link rel="stylesheet" href="assert/plugins/font-awesome/css/all.css" />
	<link rel="stylesheet" href="assert/plugins/bxslider/bxslider.min.css" />

	<link rel="stylesheet" href="assert/css/style.css" />
	<link rel="stylesheet" href="assert/css/responsive.css" />
	<link rel="stylesheet" href="assert/css/ic-helpers.min.css" />
</head>
<body>


<%@include file="/menu.jsp"%>
	
	

	<!-- Content -->
	<div class="content-right">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-5 p-0">
					<div class="product-img-wrapper">
						<div class="product-img-container bg-info">
							<div class="bxslider">
								<div><img src="assert/img/products/product-details1.png" alt="" /></div>
								<div><img src="assert/img/products/product-details2.png" alt="" /></div>
								<div><img src="assert/img/products/product-details3.png" alt="" /></div>
								<div><img src="assert/img/products/product-details4.png" alt="" /></div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-7 m-t-100">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-10 col-md-push-1 m-b-70">
							<div class="row">
								<div class="col-sm-8">
									<h2 class="text-xs-center text-uppercase">Product</h2>
								</div>

								<div class="col-sm-4">
									<h5 class="text-xs-center text-right text-gray">Over-ear <img src="assert/img/icon-headphones.png" class="h-30 align-text-bottom m-l-20" alt="" /></h5>
								</div>
							</div>

							<div class="row">
							<!-- 开始 -->
							<c:if test="${!empty product}">
							<div class="col-xs-12 col-sm-12 col-md-12 m-tb-100">
									<h4 class="text-success">${product.productName}</h4>
									<p class="text-justify m-tb-70">${product.productInfo}</p>
                                   
									<h2>${product.productPrice}<small class="strike m-l-10">${product.productPrice}</small></h2>

									<div class="m-b-20">
										<a href="#" class="thumbnail variant active">
											<span class="variant-color" style="background: #8A8B89;"></span>
											<span class="variant-name">Gun-Metal</span>
										</a>

										<a href="#" class="thumbnail variant">
											<span class="variant-color" style="background: #202024;"></span>
											<span class="variant-name">Black</span>
										</a>

										<a href="#" class="thumbnail variant">
											<span class="variant-color" style="background: #991841;"></span>
											<span class="variant-name">Red</span>
										</a>
									</div>

									<a href="javascript:goaddcart(${product.rowId});" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; 加入购物车</a>
									<a href="cart/goCartList" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; 前往购物车</a>
								</div>
					
				          </c:if>
				          
				          
								<!-- <div class="col-xs-12 col-sm-12 col-md-12 m-tb-100">
									<h1>ST-O S1000</h1>

									<h4 class="text-success">Staro-One</h4>

									<p class="text-justify m-tb-70">Springing from Audio-Technica's rich heritage in professional audio, the ATH-MSR7 Over-Ear High-Resolution Audio Headphones are designed to reproduce Hi-Res Audio, allowing users to hear music the way it was intended. The over-ear headphones are outfitted with exclusive 45 mm True Motion Drivers, which utilize lightweight voice coils, a custom-mounted printed circuit board and specially designed diaphragm to improve transient response and minimize sound distortion for rich, detailed audio reproduction.</p>

									<h2>$199 <small class="strike m-l-10">$249</small></h2>

									<div class="m-b-20">
										<a href="#" class="thumbnail variant active">
											<span class="variant-color" style="background: #8A8B89;"></span>
											<span class="variant-name">Gun-Metal</span>
										</a>

										<a href="#" class="thumbnail variant">
											<span class="variant-color" style="background: #202024;"></span>
											<span class="variant-name">Black</span>
										</a>

										<a href="#" class="thumbnail variant">
											<span class="variant-color" style="background: #991841;"></span>
											<span class="variant-name">Red</span>
										</a>
									</div>

									<a href="#" class="btn btn-success"><i class="fas fa-shopping-bag"></i>&nbsp; Add to Cart</a>
								</div> -->
                            <!-- 结束 -->
                            
                            
								<!-- Tabs -->
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div role="tabpanel">
										<ul class="nav nav-tabs nav-justified text-uppercase m-b-50" role="tablist">
											<li class="active">
												<a href="#tab1" data-toggle="tab">Overview</a>
											</li>

											<li>
												<a href="#tab2" data-toggle="tab">Features</a>
											</li>

											<li>
												<a href="#tab3" data-toggle="tab">Specifications</a>
											</li>

											<li>
												<a href="#tab4" data-toggle="tab">FAQ</a>
											</li>

											<li>
												<a href="#tab5" data-toggle="tab">Reviews</a>
											</li>
										</ul>

										<div class="tab-content">
											<div class="tab-pane active" id="tab1">
												<h3 class="m-b-50">2018 Best Headphones of the Year</h3>

												<a href="#">
													<h4>Award Winner from Reviewed.com and USA Today</h4>
												</a>

												<p class="m-b-50">
													<q>Audio-Technica's new flagship consumer headphones, the ATH-MSR7, have hit this balance of form and function right on the head.</q> - <a href="#" class="text-primary">Reviewed.com</a>
												</p>

												<p class="text-justify m-b-50">The ATH-MSR7 headphones also feature multi-layered air damping technology for extended mid-to-low frequency response. The housings, designed to “mirror” the full shape of the ear, are constructed of an aluminum/magnesium mix, layered to provide a lightweight, rigid structure that reduces unwanted resonance. Three precisely placed vents within these layers work to control air flow and improve dynamics.</p>

												<!-- <iframe width="850" height="475" src="https://www.youtube.com/embed/25YY81UU0U8?rel=0&amp;controls=1&amp;showinfo=0" class="img-responsive center-block video-height m-b-50" allowfullscreen></iframe> -->

												<p class="text-justify m-b-50">The over-ear headphones’ highly flexible swivel design, with soft, memory foam earpads and headband ensure lasting comfort even during the longest listening sessions. And with three detachable cables (standard 1.2 m (3.9') and 3.0 m (9.8') cables, plus a 1.2 m (3.9') cable with in-line controls and microphone for compatible smartphones and other devices) the ATH-MSR7 can provide Hi-Res Audio anywhere you go.</p>

												<img src="assert/img/products/product-style1.png" class="img-responsive" alt="" />
											</div>

											<div class="tab-pane" id="tab2">
												<p class="text-justify m-b-50">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>

												<ul class="list-primary">
													<li><i class="fas fa-angle-right m-r-10"></i> Newly designed 45 mm True Motion Drivers deliver Hi-Res Audio reproduction</li>
													<li><i class="fas fa-angle-right m-r-10"></i> Multi-layer Air Damping Technology comprised of a layered aluminum/magnesium housing and triple-vent system reduces unwanted vibration and controls air stream for high audio clarity</li>
													<li><i class="fas fa-angle-right m-r-10"></i> Ultra-comfortable, soft, memory foam earpads and headband</li>
													<li><i class="fas fa-angle-right m-r-10"></i> Three detachable cables: standard 1.2 m (3.9') and 3.0 m (9.8') cables, plus 1.2 m (3.9') smartphone-compatible cable with in-line controls & mic</li>
													<li><i class="fas fa-angle-right m-r-10"></i> Stainless steel acoustic mesh resistor provides improved high-frequency response, while bass acoustic resistor delivers accurate low-frequency response</li>
													<li><i class="fas fa-angle-right m-r-10"></i> Includes carrying case</li>
													<li><i class="fas fa-angle-right m-r-10"></i> Available in black (ATH-MSR7BK) and gun-metal grey (ATH-MSR7GM)</li>
												</ul>

												<iframe width="850" height="475" src="https://www.youtube.com/embed/25YY81UU0U8?rel=0&amp;controls=1&amp;showinfo=0" class="img-responsive center-block video-height m-tb-50" allowfullscreen></iframe>
											</div>

											<div class="tab-pane" id="tab3">
												<p class="text-justify m-b-50">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>

												<dl class="dl-horizontal">
													<dt>Type</dt><dd>Dynamic</dd>
													<dt>Driver Diameter</dt><dd>45 mm</dd>
													<dt>Frequency Response</dt><dd>5-40,000 Hz</dd>
													<dt>Maximum Input Power</dt><dd>2,000 mW</dd>
													<dt>Sensitivity</dt><dd>100 dB/mW</dd>
													<dt>Impedance</dt><dd>35 ohms</dd>
													<dt>Weight</dt><dd>290 g</dd>
													<dt>Cable</dt><dd>Detachable 1.2 m (3.9') standard cable, detachable 3.0 m (9.8') standard cable, detachable 1.2 m (3.9') cable with in-line controls and microphone for smartphones</dd>
													<dt>Connector</dt><dd>3.5 mm gold-plated stereo mini plug, L-shaped</dd>
													<dt>Accessories Included</dt><dd>Protective pouch</dd>
													<dt>Type (Microphone)</dt><dd>Condenser</dd>
													<dt>Frequency Response</dt><dd>50 - 4,000 Hz</dd>
													<dt>Polar Pattern (Microphone)</dt><dd>Omnidirectional</dd>
												</dl>
											</div>

											<div class="tab-pane" id="tab4">
												<h4 class="m-b-30">Do you have questions about this product?</h4>

												<p class="text-justify m-b-30">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>

												<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="q1">
															<h4 class="panel-title">
																<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#col1" aria-expanded="false" aria-controls="col1">
																	We're really glad to dolor sit amet, consectetur adipisicing elit, sed do eiusmod?
																</a>
															</h4>
														</div>

														<div id="col1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="q1">
															<div class="panel-body">
																<div class="text-uppercase m-b-15">
																	<small><span class="label label-primary">Answer</span></small>
																</div>

																<p class="text-justify">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>
															</div>
														</div>
													</div>

													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="q2">
															<h4 class="panel-title">
																<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#col2" aria-expanded="false" aria-controls="col2">
																	We're really glad to dolor sit amet, consectetur adipisicing elit, sed do eiusmod?
																</a>
															</h4>
														</div>

														<div id="col2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="q2">
															<div class="panel-body">
																<div class="text-uppercase m-b-15">
																	<small><span class="label label-primary">Answer</span></small>
																</div>

																<p class="text-justify">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>
															</div>
														</div>
													</div>

													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="q3">
															<h4 class="panel-title">
																<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#col3" aria-expanded="false" aria-controls="col3">
																	We're really glad to dolor sit amet, consectetur adipisicing elit, sed do eiusmod?
																</a>
															</h4>
														</div>

														<div id="col3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="q3">
															<div class="panel-body">
																<div class="text-uppercase m-b-15">
																	<small><span class="label label-primary">Answer</span></small>
																</div>

																<p class="text-justify">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>
															</div>
														</div>
													</div>

													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="q4">
															<h4 class="panel-title">
																<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#col4" aria-expanded="false" aria-controls="col4">
																	We're really glad to dolor sit amet, consectetur adipisicing elit, sed do eiusmod?
																</a>
															</h4>
														</div>

														<div id="col4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="q4">
															<div class="panel-body">
																<div class="text-uppercase m-b-15">
																	<small><span class="label label-primary">Answer</span></small>
																</div>

																<p class="text-justify">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>
															</div>
														</div>
													</div>

													<div class="panel panel-default">
														<div class="panel-heading" role="tab" id="q5">
															<h4 class="panel-title">
																<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#col5" aria-expanded="false" aria-controls="col5">
																	We're really glad to dolor sit amet, consectetur adipisicing elit, sed do eiusmod?
																</a>
															</h4>
														</div>

														<div id="col5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="q5">
															<div class="panel-body">
																<div class="text-uppercase m-b-15">
																	<small><span class="label label-primary">Answer</span></small>
																</div>

																<p class="text-justify">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="tab-pane" id="tab5">
												<p class="text-justify">While many listeners may believe that high-resolution audio came along with the introduction of the Compact Disc in 1982, constraints on the disc’s storage space always prevented CD audio (standardized at 44.1 kHz/16-bit) from fully and completely reproducing the original recorded sound. The advent and subsequent popularity of MP3s only made this problem more pronounced – the necessary compression of these files causes audio information to be lost, thus greatly reducing the audio quality.</p>
											</div>
										</div>
									</div>
								</div>
								<!-- Tabs -->
							</div>
						</div>
					</div>

					<div class="row bg-white">
						<div class="col-xs-12 col-sm-1 col-md-1 vertical-col">
							<div class="recommended-text">Recommended</div>
						</div>

						<div class="col-xs-12 col-sm-10 col-md-10">
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-4">
									<a href="#" class="product-item">
										<img src="assert/img/products/product8.png" class="img-responsive p-30" alt="" />
									</a>

									<a href="#">
										<h5 class="text-center m-b-20">ST-O S1000</h5>
									</a>
								</div>

								<div class="col-xs-12 col-sm-4 col-md-4">
									<a href="#" class="product-item">
										<img src="assert/img/products/product9.png" class="img-responsive p-30" alt="" />
									</a>

									<a href="#">
										<h5 class="text-center m-b-20">ST-O S2000</h5>
									</a>
								</div>

								<div class="col-xs-12 col-sm-4 col-md-4">
									<a href="#" class="product-item">
										<img src="assert/img/products/product10.png" class="img-responsive p-30" alt="" />
									</a>

									<a href="#">
										<h5 class="text-center m-b-20">ST-O S3000</h5>
									</a>
								</div>
							</div>
						</div>

						<div class="col-xs-12 col-sm-1 col-md-1 hidden-xs"></div>
					</div>
				</div>
			</div>
		</div>
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
	<script src="assert/plugins/bxslider/bxslider.min.js"></script>

	<script src="assert/js/global.js"></script>
	<script src="assert/pages/cart.js"></script>
</body>
</html>
