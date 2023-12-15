<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../../common/header.jsp" %>

<!DOCTYPE html>
<div class="site-banner">
    <div class="banner-content bg-accent padding-large">
        <div class="container">
            <div class="row">
                <div class="col-md-12">   
                    <div class="section-header">
                        <h1 class="section-title"> 공지사항 </h1>
                        <div class="breadcum-items">
                            <span class="item"><a href="/home">Home /</a></span>
                            <span class="item">notice</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="notice_section">
    <!-- ---------------------------검색------------------------------->
<div class="noticeSearch">
	<form action="/notice/list" method="get" class="notice-search-form">
    <input type="text" name="keyword" class="notice-search">
    <button class="searchBtn">검색</button>
    <input type="hidden" name="type" value="T">
    <input type="hidden" name="pageNum" value="${page.cri.pageNum}">
    <input type="hidden" name="amount" value="${page.cri.amount}">
	</form>
</div>
    <!-- ---------------------------------------------------------->

    <table class="notice_table">
    
        <tr class="notice_th">
            <th>no</th>
            <th>제목</th>
            <th>작성일자</th>
            <th>작성자</th>
            <th>조회수</th>
        </tr>
        <c:forEach items="${list}" var="list">
            <tr class="notice_td">
                <td>${list.num}</td>
                <td><a href="/notice/detail?num=${list.num}">${list.title}</a></td>
                <td><span><i class="icon icon-calendar"></i> ${fn:substring(list.regidate, 0, 10)}</span></td>
                <td>${list.writer}</td>
                <td>${list.readCount}</td>
            </tr>
        </c:forEach>
    </table> <br>
    <!-- ----------------------------페이징------------------------------>
    <div class="list_paging">
        <ul class="paging">
            <c:if test="${page.prev}">
                <li class="prev">
                    <a href="/notice/list?pageNum=${page.startPage-10}"> Previous </a>
                </li>
            </c:if>

            <c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
                <c:if test="${empty page.cri.type}">
                    <li class="num">
                        <a href="/notice/list?pageNum=${num}"> ${num} </a>
                    </li>
                </c:if>

                <c:if test="${page.cri.type=='T'}">
                    <li>
                        <a href="/notice/list?pageNum=${num}&type=T&keyword=${page.cri.keyword}"> ${num} </a>
                    </li>
                </c:if>
            </c:forEach>

            <c:if test="${page.next}">
                <li class="next">
                    <a href="/notice/list?pageNum=${page.endPage+1}"> Next </a>
                </li>
            </c:if>
        </ul>
    </div> <br>
    <div class="btn-wrap" style="text-align:center; margin-bottom:30px;">
        <a href="write" class="btn btn-black btn-rounded">글쓰기</a>
    </div>
</section>
<%@ include file="../../common/footer.jsp" %>
