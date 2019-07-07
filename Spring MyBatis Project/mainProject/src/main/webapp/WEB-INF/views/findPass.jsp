<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<script>

<%
String context = request.getContextPath();
%>
function chk() {
		if (!frm.id.value) {
			alert("아이디를 입력해주세요.");
			frm.id.focus();
			return false;
		}
		
		if(!frm.birthday.value) {
			alert("생년월일을 입력해주세요.");
			frm.birthday.focus();
			return false;
		}
		else {
			"passFound.do?id=" + frm.id.value && 
			"passFound.do?birthday=" + frm.pw.birthday;
		}
}
 
		
$('#button1').on('submit', function(){
	let check
	$.ajax({
		type : "GET",
		url : "<%=context%>/passFound.do",
		data : $('#button1').serialize()
	}).done(function(result){
		check = result;	
		
		if(check != ""){
		
			$('#text').show();
			$('#text').append(check+" 입니다");
			//todo : 로그인 성공시 이동할 페이지
		} else {
			alert('아이디 또는 생일이 틀림')
		} 
	});
	return false;
});



		$(function() {
	        $(".pop").click(function(){
	          var pageTitle = $(this).attr('pageTitle');
	          var pageName = $(this).attr('pageName');
	          $(".modal .modal-title").html(pageTitle);
	          $(".modal .modal-body").html("Content loading please wait...");
	          $(".modal").modal("show");
	          $(".modal .modal-body").load(pageName);
	        });
		});	


			
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
 <div class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<form action="passFound.do" id="button1" method="get" name="frm" onsubmit="return chk()">
아이디/생일<br><br>
<input type="text" name="id" placeholder="아이디" required="required"/><br>
<input id="dateBut" type="date" placeholder="생년월일" name="birthday" required="required"/><br><br>

<div class="wrapperLogin">
<input type="submit" value="확인"></form>
<button class="pop" pageTitle="Login" pageName="login.do">취소</a></button></div>
<div id=text style="display:none;">회원님의 비밀번호는: </div>

</body>
</html>