<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <!-- BEGIN HEADER -->
		<!-- BEGIN TOP BAR -->
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR LEFT PART -->
				<div class="col-md-6 col-sm-6 additional-shop-info">
					<ul class="list-unstyled list-inline">
						<li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>
						<!-- BEGIN CURRENCIES -->
						<li class="shop-currencies"><a href="javascript:void(0);">€</a>
							<a href="javascript:void(0);">£</a> <a href="javascript:void(0);"
							class="current">$</a></li>
						<!-- END CURRENCIES -->
						<!-- BEGIN LANGS -->
						<li class="langs-block"><a href="javascript:void(0);"
							class="current">English </a>
							<div class="langs-block-others-wrapper">
								<div class="langs-block-others">
									<a href="javascript:void(0);">French</a> <a
										href="javascript:void(0);">Germany</a> <a
										href="javascript:void(0);">Turkish</a>
								</div>
							</div></li>
						<!-- END LANGS -->
					</ul>
				</div>
				<!-- END TOP BAR LEFT PART -->
				<!-- BEGIN TOP BAR MENU -->
				<div class="col-md-6 col-sm-6 additional-nav">
					<ul class="list-unstyled list-inline pull-right">
						<li>
							<c:choose>
								<c:when test="${sessionScope.account == null}">
									<div></div>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/myaccount">My Account</a>
								</c:otherwise>
							</c:choose>
						</li>
						<li><a href="shop-wishlist.html">My Wishlist</a></li>
						<li><a href="shop-checkout.html">Checkout</a></li>
						<li><c:choose>
								<c:when test="${sessionScope.account == null}">
									<a href="${pageContext.request.contextPath }/login">Login</a> | 
									<a href="${pageContext.request.contextPath }/register">Register</a>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/myaccount">${sessionScope.account.fullname}</a>
									| <a href="${pageContext.request.contextPath }/logout">Log out</a>
								</c:otherwise>
							</c:choose>
						</li>
					</ul>
				</div>
				<!-- END TOP BAR MENU -->
			</div>
		</div>
	</div>
	<!-- END TOP BAR -->
	<div class="header">
		<div class="container">
			<a class="site-logo" href="home"><img
				src="${URL}assets/frontend/layout/img/logos/logo-shop-red.png"
				alt="Metronic Shop UI"></a> <a href="javascript:void(0);"
				class="mobi-toggler"><i class="fa fa-bars"></i></a>

			<!-- BEGIN CART -->
			<div class="top-cart-block">
				<div class="top-cart-info">
					<a href="javascript:void(0);" class="top-cart-info-count">3
						items</a> <a href="javascript:void(0);" class="top-cart-info-value">$1260</a>
				</div>
				<i class="fa fa-shopping-cart"></i>

				<div class="top-cart-content-wrapper">
					<div class="top-cart-content">
						<ul class="scroller" style="height: 250px;">
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
							<li><a href="shop-item.html"><img
									src="${URL}assets/frontend/pages/img/cart-img.jpg"
									alt="Rolex Classic Watch" width="37" height="34"></a> <span
								class="cart-content-count">x 1</span> <strong><a
									href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
								href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						</ul>
						<div class="text-right">
							<a href="shop-shopping-cart.html" class="btn btn-default">View
								Cart</a> <a href="shop-checkout.html" class="btn btn-primary">Checkout</a>
						</div>
					</div>
				</div>
			</div>
			<!--END CART -->

			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation">
				<ul>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="#"> Woman </a> <!-- BEGIN DROPDOWN MENU -->
						<ul class="dropdown-menu">
							<li class="dropdown-submenu"><a
								href="shop-product-list.html">Hi Tops <i
									class="fa fa-angle-right"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="shop-product-list.html">Second Level Link</a></li>
									<li><a href="shop-product-list.html">Second Level Link</a></li>
									<li class="dropdown-submenu"><a class="dropdown-toggle"
										data-toggle="dropdown" data-target="#" href="#"> Second
											Level Link <i class="fa fa-angle-right"></i>
									</a>
										<ul class="dropdown-menu">
											<li><a href="shop-product-list.html">Third Level
													Link</a></li>
											<li><a href="shop-product-list.html">Third Level
													Link</a></li>
											<li><a href="shop-product-list.html">Third Level
													Link</a></li>
										</ul></li>
								</ul></li>
							<li><a href="shop-product-list.html">Running Shoes</a></li>
							<li><a href="shop-product-list.html">Jackets and Coats</a></li>
						</ul> <!-- END DROPDOWN MENU --></li>
					<li class="dropdown dropdown-megamenu"><a
						class="dropdown-toggle" data-toggle="dropdown" data-target="#"
						href="#"> Man </a>
						<ul class="dropdown-menu">
							<li>
								<div class="header-navigation-content">
									<div class="row">
										<div class="col-md-4 header-navigation-col">
											<h4>Footwear</h4>
											<ul>
												<li><a href="shop-product-list.html">Astro Trainers</a></li>
												<li><a href="shop-product-list.html">Basketball
														Shoes</a></li>
												<li><a href="shop-product-list.html">Boots</a></li>
												<li><a href="shop-product-list.html">Canvas Shoes</a></li>
												<li><a href="shop-product-list.html">Football Boots</a></li>
												<li><a href="shop-product-list.html">Golf Shoes</a></li>
												<li><a href="shop-product-list.html">Hi Tops</a></li>
												<li><a href="shop-product-list.html">Indoor and
														Court Trainers</a></li>
											</ul>
										</div>
										<div class="col-md-4 header-navigation-col">
											<h4>Clothing</h4>
											<ul>
												<li><a href="shop-product-list.html">Base Layer</a></li>
												<li><a href="shop-product-list.html">Character</a></li>
												<li><a href="shop-product-list.html">Chinos</a></li>
												<li><a href="shop-product-list.html">Combats</a></li>
												<li><a href="shop-product-list.html">Cricket
														Clothing</a></li>
												<li><a href="shop-product-list.html">Fleeces</a></li>
												<li><a href="shop-product-list.html">Gilets</a></li>
												<li><a href="shop-product-list.html">Golf Tops</a></li>
											</ul>
										</div>
										<div class="col-md-4 header-navigation-col">
											<h4>Accessories</h4>
											<ul>
												<li><a href="shop-product-list.html">Belts</a></li>
												<li><a href="shop-product-list.html">Caps</a></li>
												<li><a href="shop-product-list.html">Gloves, Hats
														and Scarves</a></li>
											</ul>

											<h4>Clearance</h4>
											<ul>
												<li><a href="shop-product-list.html">Jackets</a></li>
												<li><a href="shop-product-list.html">Bottoms</a></li>
											</ul>
										</div>
										<div class="col-md-12 nav-brands">
											<ul>
												<li><a href="shop-product-list.html"><img
														title="esprit" alt="esprit"
														src="${URL}assets/frontend/pages/img/brands/esprit.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="gap" alt="gap"
														src="${URL}assets/frontend/pages/img/brands/gap.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="next" alt="next"
														src="${URL}assets/frontend/pages/img/brands/next.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="puma" alt="puma"
														src="${URL}assets/frontend/pages/img/brands/puma.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="zara" alt="zara"
														src="${URL}assets/frontend/pages/img/brands/zara.jpg"></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
					<li><a href="shop-item.html">Kids</a></li>
					<li class="dropdown dropdown100 nav-catalogue"><a
						class="dropdown-toggle" data-toggle="dropdown" data-target="#"
						href="#"> New </a>
						<ul class="dropdown-menu">
							<li>
								<div class="header-navigation-content">
									<div class="row">
										<div class="col-md-3 col-sm-4 col-xs-6">
											<div class="product-item">
												<div class="pi-img-wrapper">
													<a href="shop-item.html"><img
														src="${URL}assets/frontend/pages/img/products/model4.jpg"
														class="img-responsive" alt="Berry Lace Dress"></a>
												</div>
												<h3>
													<a href="shop-item.html">Berry Lace Dress</a>
												</h3>
												<div class="pi-price">$29.00</div>
												<a href="#" class="btn btn-default add2cart">Add to cart</a>
											</div>
										</div>
										<div class="col-md-3 col-sm-4 col-xs-6">
											<div class="product-item">
												<div class="pi-img-wrapper">
													<a href="shop-item.html"><img
														src="${URL}assets/frontend/pages/img/products/model3.jpg"
														class="img-responsive" alt="Berry Lace Dress"></a>
												</div>
												<h3>
													<a href="shop-item.html">Berry Lace Dress</a>
												</h3>
												<div class="pi-price">$29.00</div>
												<a href="#" class="btn btn-default add2cart">Add to cart</a>
											</div>
										</div>
										<div class="col-md-3 col-sm-4 col-xs-6">
											<div class="product-item">
												<div class="pi-img-wrapper">
													<a href="shop-item.html"><img
														src="${URL}assets/frontend/pages/img/products/model7.jpg"
														class="img-responsive" alt="Berry Lace Dress"></a>
												</div>
												<h3>
													<a href="shop-item.html">Berry Lace Dress</a>
												</h3>
												<div class="pi-price">$29.00</div>
												<a href="#" class="btn btn-default add2cart">Add to cart</a>
											</div>
										</div>
										<div class="col-md-3 col-sm-4 col-xs-6">
											<div class="product-item">
												<div class="pi-img-wrapper">
													<a href="shop-item.html"><img
														src="${URL}assets/frontend/pages/img/products/model4.jpg"
														class="img-responsive" alt="Berry Lace Dress"></a>
												</div>
												<h3>
													<a href="shop-item.html">Berry Lace Dress</a>
												</h3>
												<div class="pi-price">$29.00</div>
												<a href="#" class="btn btn-default add2cart">Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
					<li class="dropdown active"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="#"> Pages </a>

						<ul class="dropdown-menu">
							<li><a href="shop-index.html">Home Default</a></li>
							<li class="active"><a href="shop-index-header-fix.html">Home
									Header Fixed</a></li>
							<li><a href="shop-index-light-footer.html">Home Light
									Footer</a></li>
							<li><a href="shop-product-list.html">Product List</a></li>
							<li><a href="shop-search-result.html">Search Result</a></li>
							<li><a href="shop-item.html">Product Page</a></li>
							<li><a href="shop-shopping-cart-null.html">Shopping Cart
									(Null Cart)</a></li>
							<li><a href="shop-shopping-cart.html">Shopping Cart</a></li>
							<li><a href="shop-checkout.html">Checkout</a></li>
							<li><a href="shop-about.html">About</a></li>
							<li><a href="shop-contacts.html">Contacts</a></li>
							<li><a href="shop-account.html">My account</a></li>
							<li><a href="shop-wishlist.html">My Wish List</a></li>
							<li><a href="shop-goods-compare.html">Product Comparison</a></li>
							<li><a href="shop-standart-forms.html">Standart Forms</a></li>
							<li><a href="shop-faq.html">FAQ</a></li>
							<li><a href="shop-privacy-policy.html">Privacy Policy</a></li>
							<li><a href="shop-terms-conditions-page.html">Terms
									&amp; Conditions</a></li>
						</ul></li>
					<li><a href="index.html" target="_blank">Corporate</a></li>
					<li><a href="onepage-index.html" target="_blank">One Page</a></li>
					<li><a
						href="http://keenthemes.com/preview/metronic/theme/templates/admin&amp;page=ecommerce_index.html"
						target="_blank">Admin theme</a></li>

					<!-- BEGIN TOP SEARCH -->
					<li class="menu-search"><span class="sep"></span> <i
						class="fa fa-search search-btn"></i>
						<div class="search-box">
							<form action="#">
								<div class="input-group">
									<input type="text" placeholder="Search" class="form-control">
									<span class="input-group-btn">
										<button class="btn btn-primary" type="submit">Search</button>
									</span>
								</div>
							</form>
						</div></li>
					<!-- END TOP SEARCH -->
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
 --%>
<img alt="" src="data:image/jpeg;base64,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">
<br>

</body>
</html>