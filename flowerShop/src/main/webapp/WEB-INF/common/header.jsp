<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
		<title> [ 스프링 플라워 ] </title>
		<meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">          <!-- Internet Explorer의 호환성 모드를 최신 버전으로 설정 -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">     <!--뷰포트의 너비를 기기의 화면 너비에 맞추고, 초기 배율을 1.0으로 설정-->
	    <meta name="format-detection" content="telephone=no">          <!-- 일부 모바일 브라우저에서 숫자를 전화번호로 인식되는 것을 방지 -->
	    <meta name="mobile-web-app-capable" content="yes">      	   <!-- 모바일 디바이스에서 웹 앱으로 사용할 수 있도록 지원(안드로이드,애플) -->
	    <meta name="apple-mobile-web-app-capable" content="yes">
	    <meta name="keywords" content="flowershop">                    <!-- 검색 엔진에게 문서와 관련된 키워드를 제공 -->
	    <meta name="description" content="Fresh flowers, delivered with care">    <!-- 간단한 설명을 제공하여 검색 결과에서 표시 -->

	    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css" />   <!-- 사이트의 레이아웃, 버튼, 폼 등 -->
	    <link rel="stylesheet" type="text/css" href="/resources/css/vendor.css">            <!--  외부 라이브러리 -->
		<link rel="stylesheet" type="text/css" href="/resources/icomoon/icomoon.css">       <!-- 아이콘 폰트 -->
	    <link rel="stylesheet" type="text/css" href="/resources/style.css">                 <!-- 전반적인 디자인 및 레이아웃 -->
		<link rel="stylesheet" type="text/css" href="/resources/css/notice.css"> 			<!-- 공지사항css -->
		
	    <link rel="preconnect" href="https://fonts.googleapis.com">                <!-- Google Fonts를 사용하여 웹 폰트를 불러오기 (Arapey) -->
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Arapey&display=swap" rel="stylesheet">
		
		<link rel="icon" type="image/x-icon" href="/resources/images/favicon.ico">
</head>

<body>

	<header id="header" class="fixed">
		<div id="header-wrap">
			<div class="main-logo">
				<a href="../home"><img src="/resources/images/logo-header.JPG" alt="logo" style="width: 50%; height: auto; margin-top:10px"></a>
			</div>
	
			<nav id="navbar">
				<div class="main-menu" id="navigation">
					<ul class="menu-list navbar-nav">
						<li class="menu-item"><a href="/home" data-effect="Home" class="nav-link">Home</a></li>
						<li class="menu-item"><a href="/aboutUs" data-effect="about" class="nav-link">About</a></li>
						<li class="menu-item"><a href="/allProducts" data-effect="shop" class="nav-link">Shop</a></li>
						<li class="menu-item nav-item">
							<a href="#collection" data-effect="collection" class="nav-link">Collection</a>
						</li>
						<li class="menu-item">
							<a href="#latest-blog" data-effect="latest-blog" class="nav-link">Blog</a>
						</li>
						<li class="nav-item dropdown">
							<a href="#" data-bs-toggle="dropdown" aria-expanded="false"
								class="nav-link dropdown-toggle">Pages</a>
							<ul class="dropdown-menu">
								<li><a href="about.html" class="dropdown-item">About us <span class="badge bg-primary">PRO</span></a></li>
								<li><a href="blog.html" class="dropdown-item">Blog <span class="badge bg-primary">PRO</span></a></li>
								<li><a href="single-post.html" class="dropdown-item">Single Post <span class="badge bg-primary">PRO</span></a></li>
								<li><a href="contact.html" class="dropdown-item">Contact us <span class="badge bg-primary">PRO</span></a></li>
								<li><a href="shop.html" class="dropdown-item">Shop <span class="badge bg-primary">PRO</span></a></li>
								<li><a href="single-product.html" class="dropdown-item">Single Product <span class="badge bg-primary">PRO</span></a></li>
							</ul>
						</li>
	
						<li><a href="https://templatesjungle.gumroad.com/l/plantly-free-plant-selling-website-template" target="_blank" class="btn btn-dark rounded-pill m-0">Get PRO</a></li>
					</ul>
				</div>
	
				<div class="right-element icon-element">
					<div class="search-bar">
						<a href="#" class="search-button search-toggle" data-selector="#header-wrap">
							<i class="icon icon-search"></i>
						</a>
						<form role="search" method="get" class="search-box">
							<input class="search-field text search-input" placeholder="Search" type="search">
						</form>
					</div>
	
					<div class="user-account for-buy">
						<a href="/member/login">
						<i class="icon icon-user"></i>
						</a>
					</div>
	
					<div class="like-bar for-buy">
						<a href="#">
							<i class="icon icon-like-button"></i>
							<i class="icon icon-liked-button"></i>	
						</a>
				    </div><!--like-bar-->
	
					<div class="cart for-buy">
						<a href="#">
						<i class="icon icon-account"></i>
						<span>0</span>
						</a>
					</div>
	
				</div><!--right-element-->
	
			</nav>
	
		</div><!--header-wrap-->
	</header>