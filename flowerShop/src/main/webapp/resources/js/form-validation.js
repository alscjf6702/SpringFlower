/*------------------------공지사항------------------------*/

function check_Notice() {
    if (document.frm.title.value === "") {
        alert("제목을 입력하세요");
        document.frm.title.focus();
        return false;
    }
    if (document.frm.content.value === "") {
        alert("내용을 입력하세요");
        document.frm.content.focus(); 
        return false;
    } else {
        return true;
    }
}
/*------------------------약관 동의------------------------*/



/*------------------------회원가입------------------------*/

function check_Signup() {
   if(document.frm.userId.value ===""){
           alert("아이디를 입력하세요.");
           document.frm.userId.focus();
           return false;
   }
   if(document.frm.pwd.value ===""){
            alert("비밀번호를 입력하세요.");
           document.frm.pwd.focus();
           return false;
   }
   if(document.frm.confirmPwd.value ===""){
            alert("비밀번호를 확인하세요.");
           document.frm.confirmPwd.focus();
           return false;
   }
   if(document.frm.userName.value ===""){
            alert("이름을 입력하세요.");
           document.frm.userName.focus();
           return false;
   }    return true;
   
}
   
   
function check_ConfirmPwd() {
    var pwd = document.frm.pwd.value;
    var confirmPwd = document.frm.confirmPwd.value;
    var errorMsg_Pwd = document.getElementById("errorMsg_Pwd");

    if (pwd !== confirmPwd) {
        errorMsg_Pwd.innerHTML = '<span style="color: red;"> &nbsp; 비밀번호가 일치하지 않습니다. </span>';
    } else {
        errorMsg_Pwd.innerHTML = '';
    }
}


function check_Phone() {
    var phone1 = document.getElementById('phone_1').value;
    var phone2 = document.getElementById('phone_2').value;
    var phone3 = document.getElementById('phone_3').value;

    var phone = phone1 + phone2 + phone3;
    document.getElementById('phone').value = phone;
}

/*------------------------rrrrr------------------------*/
