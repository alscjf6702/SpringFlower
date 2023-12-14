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

<hr>

<form method="post" action="/notice/update" name="frm">
<input type="hidden" name="num" value="${detail.num }">
    <table class="write_table"> 
        <tr class="write_tr1"> 
            <th>제목</th> 
            <td><input type="text" name="title"></td>
        </tr>
        <tr class="write_tr2">
            <th>내용</th>
            <td><textarea rows="10" cols="20" name="content"></textarea></td>
        </tr>
    </table>

    <div class="btn-wrap" style="text-align:center; margin-bottom:30px;">
        <input type="submit" id="updateBtn" value="수정 완료" class="btn btn-black btn-rounded" onclick="return check_notice()">
    </div>
</form>
  
 <script type="text/javascript" src="/resources/js/form-validation.js"></script>


<%@ include file="../../common/footer.jsp" %>
