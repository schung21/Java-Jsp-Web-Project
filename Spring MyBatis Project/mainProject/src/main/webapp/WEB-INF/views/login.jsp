<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<script type="text/javascript">
<%
	String context = request.getContextPath();
%>
function chk() {
		if (!frm.id.value) {
			alert("아이디를 입력해주세요.");
			frm.id.focus();
			return false;
		} else
		
		{
			"success.do?id=" + frm.id.value && 
			"success.do?pw=" + frm.pw.value;
		}

	}
	
$(function() {
    $(".pop").click(function(){
      var pageTitle = $(this).attr('pageTitle');
      var pageName = $(this).attr('pageName');
      $(".modal .modal-title").html(pageTitle);
      $(".modal .modal-body").html("Content loading please wait...");
      $(".modal").modal("show");
      $(".modal .modal-body").load(pageName);
    });
    
    $('#loginForm').on('submit', function(){
    	let check
    	$.ajax({
    		type : "GET",
    		url : "<%=context%>/success.do",
    		data : $('#loginForm').serialize()
    	}).done(function(result){
    		check = result;	
    		
    		if(check>0){
    			location.href = "<%=context%>/homePage.do"
    			//todo : 로그인 성공시 이동할 페이지
    		
    		} else {
    			alert('아이디 또는 비밀번호가 틀림')
    		}
    	});
    	
    	return false;
    });
});	

</script>	
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

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


<form action="" method="get" id="loginForm" name="frm" onsubmit="return chk()">

<div class="containerLogin">

<input type="text" name="id" placeholder="아이디" required="required"/><br>


<input type="password" name="pw" placeholder="비밀번호" required="required"/><br><br>


	</div>
<div class="wrapperLogin">
<input type="submit"  value="로그인"></form>
<button class="pop" pageTitle="회원가입" pageName="create.do" >회원가입</a></button><br>
<button class="pop" pageTitle="비밀번호 찾기" pageName="findPass.do">비밀번호 찾기</button></a>
</div>


<div style="color: red"> ${error }</div>


</div>
</form>
</body>
</html>