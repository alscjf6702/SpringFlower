<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../common/header.jsp" %>

<!DOCTYPE html>
<div class="site-banner">
	<div class="banner-content bg-accent padding-large">
		<div class="container">
			<div class="row">
				<div class="col-md-12">			
					<div class="section-header">
						<h1 class="section-title">About Us</h1>
						<div class="breadcum-items">
							<span class="item"><a href="/home">Home /</a></span>
							<span class="item">About Us</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="py-5 aboutUs_section">
    <div class="container">
        <div class="row">
            <div class="col-md-4 aboutUs_top">
                <h2>우리의 이야기</h2>
                <p>우리는 고객들에게 꽃 속의 감동을 전하고자 하는 꽃 배달 전문 회사입니다. 오랜 역사와 함께 성장하며, 최상의 상품과 서비스를 제공해 왔습니다.</p>
            </div>
            <div class="col-md-4 aboutUs_top">
                <h2>전문가의 손길</h2>
                <p>우리 팀은 꽃을 사랑하는 전문가들로 구성되어 있습니다. 언제나 새로운 꽃 디자인과 트렌드에 열정적으로 대응하여, 특별한 순간을 더 특별하게 만들어 드립니다.</p>
            </div>
            <div class="col-md-4 aboutUs_top">
                <h2>창의적인 서비스</h2>
                <p>우리는 다양한 고객 요구에 대한 창의적인 솔루션을 제공하기 위해 노력합니다. 맞춤 주문과 함께 색다른 꽃 배달 서비스로 당신의 특별한 순간을 더욱 아름답게 만들어 드립니다.</p>
            </div>
        </div>
    </div>
</section>



<section class="mt-5">
	<div class="vertical-element">
		<div class="container">
			<div class="row d-flex align-items-center">
				<div class="col-md-7">
					<div class="image-holder">
						<img src="resources/images/main-banner.png" class="img-fluid" alt="about-us">
					</div>
				</div>
				<div class="col-md-5">
					<div class="section-element p-5 aboutUs_center">
						<h2>역사 및 가치</h2>
						<p>우리는 오랜 역사를 가진 꽃 배달 전문 회사로서 고객에게 항상 최상의 상품과 서비스를 제공하기 위해 노력하고 있습니다.</p>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<div class="vertical-element my-2 py-2 my-md-5 py-md-5">
		<div class="container">
			<div class="row d-flex align-items-center">
				<div class="col-md-5">
					<div class="section-element p-5 aboutUs_center">
						<h2>전문가 팀</h2>
						<p>우리 회사는 꽃을 사랑하는 전문가들이 모인 팀으로 구성되어 있습니다. 항상 유행하는 꽃 디자인과 트렌드를 업데이트하고 있습니다.</p>
					</div>
				</div>
				<div class="col-md-7">
					<div class="image-holder text-right">
						<img src="resources/images/main-banner2.png" class="img-fluid" alt="about-us">
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="video">
	<div class="container">
		<div class="row">
			<h2 class="my-5">Watch me in Action</h2>
			<div class="video-player">
				<iframe width="100%" height="720px" src="https://www.youtube.com/embed/hp9KuJmCz7M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
		</div>
	</div>
</section>

<section class="testimonials py-5">
	<div class="container">
		<div class="row">
			<div class="section-header text-center my-5">
				<h1>Customer Reviews</h1>  
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="testimonial-item text-center aboutUs_review">
					<blockquote>
						<p>“감동적인 꽃 선물! 예쁜 꽃들이 신속하게 도착했고, 정성스럽게 포장되어 왔어요. 이 서비스 덕분에 소중한 순간을 더 아름답게 만들 수 있었습니다.”</p>
						<div class="review-title text-uppercase">sung32****</div>
					</blockquote>
				</div>
			</div>
			<div class="col-md-4">
				<div class="testimonial-item text-center aboutUs_review">
					<blockquote>
						<p>“퀄리티 좋은 꽃다발과 친절한 배송 서비스에 감동받았어요. 받는 이의 마음까지 전해지는 꽃으로 특별한 선물이 되었습니다. 다음 번 꽃 선물도 여기서 주문할 거에요!”</p>
						<div class="review-title text-uppercase">jsmin****</div>
					</blockquote>
				</div>
			</div>
			<div class="col-md-4">
				<div class="testimonial-item text-center aboutUs_review">
					<blockquote>
						<p>“이 꽃배달 서비스는 정말 믿고 이용할 만해요. 예상보다 더 아름다운 꽃다발이 도착해서 기분이 좋았고, 신속한 배송으로 믿음이 갑니다. 다양한 꽃들과 서비스에 놀라움을 느꼈어요!”</p>
						<div class="review-title text-uppercase">minch***</div>
					</blockquote>
				</div>
			</div>
			<a href="review_page.html" class="btn btn-primary review_Btn">Read More Reviews</a>
			
		</div>
	</div>
</section>

<%@ include file="../common/footer.jsp" %>
