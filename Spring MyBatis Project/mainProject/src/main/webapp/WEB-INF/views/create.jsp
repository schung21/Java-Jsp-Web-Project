<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<% String context = request.getContextPath(); %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	
<script type="text/javascript">
	

		function chk(){
			/* alert("Vdeptno->"+Vdeptno); */
		
			$.ajax({
				url:"<%=context%>/confirm.do",
				data:{id : $("#id").val()},
				dataType:'text',
				success:function(data){
					
					if (!frm.id.value) {
						alert("아이디를 입력해주세요.");
						frm.id.focus();
						return false;
					}
					
					if (frm.id.value.length < 4) {
							
							alert("아이디가 너무 짧습니다.");
							frm.id.focus();
							return false;
						}
					
					if (data == "아이디가 존재합니다") {
						
					 	alert(data)
					 	frm.id.focus();
					 	return false;
					 	}
					else if(data =="아이디 사용 가능") {
						if(confirm("이 아이디를 사용하시겠습니까?"))
							{
			
					frm.id_check.value = "1";
					document.getElementById('id').readOnly = true;
					document.getElementById('idcheck').disabled = true;
					return frm.id_check.value;
					} else {
						
						frm.id.focus();
						return false;
					}
					}
					 
				}
				
			});
		}
		
		 
		 $('#createSuccess').on('submit', function(){
		    	let check
		    	$.ajax({
		    		type : "POST",
		    		url : "<%=context%>/createSuccess.do",
		    		data : $('#createSuccess').serialize()
		    	}).done(function(result){
		    		check = result;	
		    		
		    		if (frm.id_check.value == "null"){
		    			alert("아이디 중복확인을 해주세요");
		    			frm.id.focus();
		    			return false; }
		    		if (frm.pw.value != frm.pw2.value) {
		    			alert("암호가 일치하지 않습니다");
		    			frm.pw.focus();
		    			return false;
		    		}
		    		
		    			alert("가입 성공")
		    			location.href = "<%=context%>/homePage.do"
		    			//todo : 로그인 성공시 이동할 페이지
		    		
		    
		    		
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
  <div class="modal-dialog" id="modal">
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

<form action="" method="post" name="frm" id="createSuccess">
<div class="createTable">

<input type="hidden" name="id_check" value="null"/>

 <div class="createWrapper">
               <p id="createPid">아이디:</p> <input type="text" id="id" name="id" required="required"/>
              <input id="idcheck" type="button" onclick="chk()" value="중복확인"><br><br>
         
                <p id="createP"> 비밀번호: </p><input id="createBox" type="password" name="pw" required="required"><br><br>
                <p id="createP">비밀번호 확인:</p> <input id="createBox" type="password" name="pw2" required="required"/><br><br>
               <p id="createP"> 생일:</p> <input id="dateBut" type="date" name="birthday" required="required"/><br><br>
               <p id="createP"> 이메일:</p> <input id="createBox" type="email" name="email" required="required"/><br><br>
       </div></div>
       <div class="wrapperLogin">
                <input type="submit" value="가입"></form>
                <button class="pop" pageTitle="Login" pageName="login.do">취소</a></button>
            </div>
</body>
</html>
