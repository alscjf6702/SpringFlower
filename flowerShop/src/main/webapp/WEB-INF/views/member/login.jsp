<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="../../common/header.jsp" %>
 <script type="text/javascript" src="/resources/js/form-validation.js"></script>

<!DOCTYPE html>
<div class="site-banner">
    <div class="banner-content bg-accent padding-large">
        <div class="container">
            <div class="row">
                <div class="col-md-12"> <!-- bootstrap.css -->    
                    <div class="section-header">
                        <h1 class="section-title"> 로그인 </h1>
                        <div class="breadcum-items">
                            <span class="item"><a href="/home">Home /</a></span>
                            <span class="item">login</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br>
<div class="login_table" style="text-align:center;">
	<form action="/member/login" method="post">
		<label for="userId">&nbsp;&nbsp;아이디 &nbsp;</label>
		<input type="text" id="userId" name="userId" size="20">	<br>
		
		<label for="pwd">비밀번호 &nbsp;</label>
		<input type="text" id="pwd" name="pwd" size="20">
		<hr>	
		
		<button type="submit">로그인</button>
		<button type="button" onclick="location.href='/member/agreement'">회원가입</button> <br><br><br>
	</form>
</div>


<%@ include file="../../common/footer.jsp" %>