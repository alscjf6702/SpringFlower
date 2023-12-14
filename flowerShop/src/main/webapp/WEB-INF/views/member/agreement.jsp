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
                        <h1 class="section-title"> 약관동의 </h1>
                        <div class="breadcum-items">
                            <span class="item"><a href="/home">Home /</a></span>
                            <span class="item"><a href="/member/login">login</a></span>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br>

<section class="agreement_section">
   <h3 class="">회원가입 약관 동의</h3><hr>


    <form action="signup" method="get">

	<p class="agreement_h4">전자상거래 약관</p> <button class="openAgreement" id="agree01" onclick="openAgreement('/resources/html/agree01.html')">전문보기</button>


	<textarea rows="3" cols="150" class="agreement_textarea" >
    제1조(목적) 이 약관은 "전국 꽃배달 (주)스프링플라워" 회사(전자상거래 사업자)가 운영하는 "전국꽃배달 (주)스프링플라워" 사이버 몰(이하 "몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리ㆍ의무 및 책임사항을 규정함을 목적으로 합니다. ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」
    </textarea><br><br>

	<p class="agreement_h4">고객 약관</p> <button  class="openAgreement" id="agree02" onclick="openAgreement('/resources/html/agree02.html')">전문보기</button>
	<textarea rows="3" cols="150" class="agreement_textarea">
    제1조 (목적)
    이 약관은 "전국 꽃배달 (주)스프링플라워"(이하 "회사"라 함)이 운영하는 "전국꽃배달 (주)스프링플라워" 에서 제공하는 상품판매 관련 서비스의 이용에 있어 회사와 고객의 권리, 의무 및 책임 사항을 규정함에 그 목적이 있습니다.                    
    </textarea><br><br>
    
    <p class="agreement_h4">개인정보 취급</p> <button  class="openAgreement" id="agree03" onclick="openAgreement('/resources/html/agree03.html')">전문보기</button>
	<textarea rows="3" cols="150" class="agreement_textarea">
	1. 수집하는 개인정보 항목
    가. 수집항목 : 성명, 전자메일, 주소, 전화번호, 핸드폰번호, 희망ID와 비밀번호(회원가입의 경우), 이메일 주소, 받는분 성명, 받는분 연락처, 받는분 주소, 접속정보, 접속IP
    나. 개인정보 수집방법 : 쇼핑몰 회원가입, 질문과 답변, 상품구매 주문서, 설문조사나 이벤트 행사.                
    </textarea><br>
       
        <label class ="agree_check">
            <input type="checkbox" name="agree" required>
           <b>본 약관에 전체 동의합니다.</b> 
        </label>
			<div class="agreement_btn">
            <input type="submit" value="동의 후 가입" class="btn btn-black btn-rounded" id="register">
            </div><br>
    </form>
    </section>
  <script>
  // 약관 내용을 새 창에 열기
  function openAgreement(agreementFile) {
    // 새 창 열기
    var newWindow = window.open('', '_blank', 'width=800,height=500');
    if (newWindow) {
        var dualScreenLeft = window.screenLeft !== undefined ? window.screenLeft : window.screenX;
        var dualScreenTop = window.screenTop !== undefined ? window.screenTop : window.screenY;

        var width = window.innerWidth || document.documentElement.clientWidth || window.screen.width;
        var height = window.innerHeight || document.documentElement.clientHeight || window.screen.height;

        var left = ((width / 2) - (800 / 2)) + dualScreenLeft;
        var top = ((height / 2) - (400 / 2)) + dualScreenTop;

        newWindow.moveTo(left, top);
    } else {
        console.error('Failed to open new window.');
    }
    // AJAX를 사용하여 약관 파일 내용을 가져옴
    var xhttp = new XMLHttpRequest();

    // xhttp가 null이 아닌지 확인
    if (xhttp) {
      // onreadystatechange 이벤트 핸들러 설정
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4) { // XMLHttpRequest가 완료된 경우
          if (this.status == 200) { // HTTP 요청이 성공한 경우
            // 새 창에 약관 내용 추가
            newWindow.document.write('<html><head><title>약관</title></head><body><pre>');
            newWindow.document.write(this.responseText);
            newWindow.document.write('</pre></body></html>');
          } else {
            console.error('Failed to load agreement file. HTTP status: ' + this.status);
            // 실패한 경우 에러 메시지를 console에 출력
          }
        }
      };

      // GET 요청으로 약관 파일 가져오기
      xhttp.open("GET", agreementFile, true);
      xhttp.send();
    } else {
      console.error('XMLHttpRequest is null.');
    }
  }
</script>

}

<%@ include file="../../common/footer.jsp" %>