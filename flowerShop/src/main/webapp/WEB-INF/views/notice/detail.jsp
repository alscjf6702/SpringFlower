<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../../common/header.jsp" %>

<!DOCTYPE html>
<div class="site-banner">
    <div class="banner-content bg-accent padding-large">
        <div class="container">
            <div class="row">
                <div class="col-md-12"> <!-- bootstrap.css -->    
                    <div class="section-header">
                        <h1 class="section-title"> 공지사항 </h1>
                        <div class="breadcum-items">
                            <span class="item"><a href="/home">Home /</a></span>
                            <span class="item"><a href="/notice/list">notice</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<section class="detail_section">
    <div class="detail_title"> 제목 : ${detail.title} </div>
    <hr class="detail_hr">
    <div class="detail_content"> ${detail.content} </div>
</section>

<div class="btn-wrap" style="text-align:center; margin-bottom:30px;">
    <a href="/notice/list" class="btn btn-black btn-rounded"> 목록 </a>

    <a href="/notice/update?num=${detail.num}" class="btn btn-black btn-rounded"> 수정 </a>
    <form action="/notice/delete" method="post" id="deleteBtn" style="display: inline;">
        <input type="submit" value="삭제" class="btn btn-black btn-rounded">
        <input type="hidden" name="num" value="${detail.num}">
    </form>
</div>

<%@ include file="../../common/footer.jsp" %>
