<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TEST</title>



<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- <link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->

<link href="js/css/pb1.css" rel="stylesheet">
<link href="js/css/main.css" rel="stylesheet">


</head>
<body>
	<header id="header"> <nav
		class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-mobile"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="http://localhost:8080/com.gqr.springmvc/view/test_mysql.jsp">U+</a>
		</div>

		<div class="collapse navbar-collapse" id="navbar-mobile">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden-xs">
					 <a href="index.do?method=login" >Sign In</a>
				</li>
				<li><a class="btn btn-default" href="index.do?method=register">Get Started</a></li>
			</ul>
			<ul id="menu-nav" class="nav navbar-nav">
				<li id="menu-item-62"
					class="visible-xs-block menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-5 current_page_item menu-item-62"><a
					href="">Home</a></li>
				<li id="menu-item-63"
					class="nav-item-product menu-item menu-item-type-post_type menu-item-object-page menu-item-63"><a
					href="">Product</a></li>
				<li id="menu-item-64"
					class="nav-item-pricing menu-item menu-item-type-post_type menu-item-object-page menu-item-64"><a
					href="">Pricing</a></li>
				<li id="menu-item-66"
					class="visible-xs-block menu-item menu-item-type-custom menu-item-object-custom menu-item-66"><a
					href="index.do?method=login">Sign In</a></li>
				<li id="menu-item-904"
					class="menu-item menu-item-type-post_type menu-item-object-page menu-item-904"><a
					href="">Customers</a></li>
			</ul>
		</div>
	</div>
	</nav> </header>

	<div id="hero" style="background-image: url(img/index1.jpg);">
		<div class="wrapper">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-push-1 text-align-center">
						<h1>Bring Out The Best In Your People</h1>
						<p class="large-text">Lightweight&nbsp;performance management
							– OKRs, pulse surveys, peer recognition and feedback in one
							simple weekly check-in.</p>
						<div class="white">
							<form class="form-inline"
								action="https://my.15five.com/signup/?lp=homebanner"
								method="get">
								<div class="form-group form-group-lg">
									<label class="sr-only">Your email address</label><input
										class="form-control" name="email" required="" type="email"
										placeholder="name@company.com">
								</div>
								<div class="form-group"
									style="margin-bottom: 1em; height: 71px; margin-top: 1em; margin-left: 1em; margin-right: 1em">
									<button class="btn btn-primary-gqr btn-lg" type="submit">Get
										Started</button>
								</div>
								<div class="form-description">14 days free. No credit card
									needed.</div>
							</form>
							<p>&nbsp;</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<main id="main">
	<div class="container image-text text-align-center">
		<div class="text-align-center">
			<h2>
				How <span class="logo"><strong>U</strong>+</span>&nbsp;Creates a
				Culture of Feedback
			</h2>
		</div>
		<div class="row vertical-align">
			<div class="col-md-4">
				<div class="media">
					<div class="media-image text-align-center">
						<img src="img/employees-15.png" alt="" class="media-image__img">
					</div>
					<div class="media-body text-align-center">
						<h4>
							Employees take <strong class="color-blue">15 minutes</strong><br>
							a week to answer questions.
						</h4>
						<p>Attention is focused on everything from personal
							productivity to team-wide morale.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="media">
					<div class="media-image text-align-center">
						<img src="img/managers-5.png" alt="" class="media-image__img">
					</div>
					<div class="media-body text-align-center">
						<h4>
							Managers spend <strong class="color-orange">5 minutes</strong><br>
							to read and comment on responses.
						</h4>
						<p>Engage in meaningful dialogue that quickly transforms into
							improved business outcomes.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="media">
					<div class="media-image text-align-center">
						<img src="img/details-shared-300x300.png" alt=""
							class="media-image__img">
					</div>
					<div class="media-body text-align-center">
						<h4>Feedback&nbsp;travels up the ladder through all levels of
							management.</h4>
						<p>Get the pulse and easily see what’s going on across the
							entire company, every week.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="feedback">
		<div class="container">
			<blockquote>
				<p>“Culture is one of those interesting things that I believe
					CEOs don’t spend enough time on. 15Five is an awesome place for our
					people to connect with management. They get to answer questions
					about their work and communicate if they are meeting their
					objectives and goals.”</p>
				<!-- <div class="meta large-text">
					<cite> <img width="100" height="100"
						src="https://www.15five.com/wp-content/uploads/2016/03/kyle-porter.jpg"
						class="avatar img-circle wp-post-image" alt="Kyle Porter"> <strong>Kyle
							Porter</strong> | CEO &amp; Founder <img
						src="https://www.15five.com/wp-content/uploads/2016/03/salesloft.png"
						alt="" class="client">
					</cite> <span
						class="wistia_embed wistia_async_n5e698naf8 popover=true popoverContent=link wistia_embed_initialized"
						id="wistia-n5e698naf8-1"><div
							id="wistia_18.thumb_container" class="wistia_click_to_play"
							style="position: relative; height: 52px; width: 221.953px;">
							<a href="#" class="ico-video blue"><i class="fa fa-play"></i>
								Watch the video</a>
						</div></span>
				</div> -->
			</blockquote>
		</div>
	</div>
	<div class="container text resources">
		<div class="row">
			<div class="col-md-12 text-align-center">
				<h2>Resources for Leaders Who Put People First</h2>
				<div class="row">
					<div class="col-md-4 text-left resources-item">
						<article> <figure> <img
							src="img/resource-1.jpg" alt=""
							class="img-responsive resources-item__img"></figure>
						<p>
							<a href="https://www.15five.com/employee-questions-ebook/"
								target="_blank">The Great eBook of Employee Questions</a>
						</p>
						</article>
					</div>
					<div class="col-md-4 text-left resources-item">
						<article> <figure> <img
							src="img/resource-2.jpg" alt=""
							class="img-responsive resources-item__img"></figure>
						<p>
							<a href="https://www.15five.com/employee-engagement-roi/"
								target="_blank">Employee Engagement ROI<br> Template
							</a>
						</p>
						</article>
					</div>
					<div class="col-md-4 text-left resources-item">
						<article> <figure> <img
							src="img/10_16_15Five_OKR_eBook_cover_760x800.jpg"
							alt="okr guide" class="img-responsive resources-item__img"></figure>
						<p>
							<a href="https://www.15five.com/okrguide/" target="_blank">The
								Ultimate Guide For Making OKRs Work At Your Company</a>
						</p>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>

	<div id="try">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3>Try 15Five today</h3>
					<p>14 days free. No credit card required.</p>
					<form class="form-inline"
						action="https://my.15five.com/signup/?lp=footer" method="get">
						<div class="form-group">
							<label class="sr-only">Your email address</label><input
								class="form-control" name="email" required="" type="email"
								placeholder="Your email address">
						</div>

						<div class="form-group">
							<button class="btn btn-primary-gqr" style="border-color: #fff"
								type="submit">Get Started</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

	<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4 mission">
				<div class="textwidget">
					<p>
						<span><strong>15</strong>Five</span> is on a mission<br> to
						bring out the best in<br> people at work.
					</p>
					<a href="http://www.15five.com/philosophy/core-values/"
						class="btn btn-default">Our Philosophy</a>
				</div>
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-sm-3 col-xs-6">
						<h4>PRODUCT</h4>
						<nav>
						<div class="menu-footer-1st-container">
							<ul id="menu-footer-1st" class="menu">
								<li id="menu-item-259"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-259"><a
									href="https://www.15five.com/product/">Product Overview</a></li>
								<li id="menu-item-1232"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1232"><a
									href="https://www.15five.com/okr/">Objectives (OKRs)</a></li>
								<li id="menu-item-40"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-40"><a
									href="https://www.15five.com/pricing/">Pricing</a></li>
								<li id="menu-item-536"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-536"><a
									href="https://www.15five.com/customers/">Customers</a></li>
							</ul>
						</div>
						</nav>
					</div>
					<div class="col-sm-3 col-xs-6">
						<h4>COMPANY</h4>
						<nav>
						<div class="menu-footer-2nd-container">
							<ul id="menu-footer-2nd" class="menu">
								<li id="menu-item-41"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41"><a
									href="https://www.15five.com/philosophy/core-values/">Philosophy</a></li>
								<li id="menu-item-42"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-42"><a
									href="https://www.15five.com/about/15five-story/">15Five
										Story</a></li>
								<li id="menu-item-47"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-47"><a
									href="https://www.15five.com/team/">Team</a></li>
								<li id="menu-item-48"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-48"><a
									href="https://www.15five.com/press/">Press</a></li>
								<li id="menu-item-961"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-961"><a
									href="https://www.15five.com/about/careers/">Careers</a></li>
							</ul>
						</div>
						</nav>
					</div>
					<div class="col-sm-3 col-xs-6">
						<h4>HELP CENTER</h4>
						<nav>
						<div class="menu-footer-3rd-container">
							<ul id="menu-footer-3rd" class="menu">
								<li id="menu-item-69"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-69"><a
									href="http://status.15five.com/">Service Status</a></li>
								<li id="menu-item-68"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-68"><a
									href="http://success.15five.com/">Help Docs</a></li>
								<li id="menu-item-51"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-51"><a
									href="https://www.15five.com/terms/">Terms of Service</a></li>
								<li id="menu-item-52"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-52"><a
									href="https://www.15five.com/privacy/">Privacy Policy</a></li>
								<li id="menu-item-53"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-53"><a
									href="https://www.15five.com/contact/">Contact</a></li>
							</ul>
						</div>
						</nav>
					</div>
					<div class="col-sm-3 col-xs-6">
						<h4>CONTENT</h4>
						<nav>
						<div class="menu-footer-4th-container">
							<ul id="menu-footer-4th" class="menu">
								<li id="menu-item-54"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54"><a
									href="https://www.15five.com/blog/">Blog</a></li>
								<li id="menu-item-905"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-905"><a
									href="https://www.15five.com/resources/">Resources</a></li>
							</ul>
						</div>
						</nav>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 copyright">
					<p>©2016 15Five. All rights reserved.</p>
					<div class="social">

						<a href="https://plus.google.com/110967283897984687280/about"
							target="_blank"><i class="fa fa-google-plus"></i></a> <a
							href="https://www.facebook.com/15Five" target="_blank"><i
							class="fa fa-facebook-official"></i></a> <a
							href="https://twitter.com/15Five" target="_blank"><i
							class="fa fa-twitter"></i></a> <a
							href="https://www.linkedin.com/company/15five?trk=company_name"
							target="_blank"><i class="fa fa-linkedin"></i></a>

					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
</body>
</html>