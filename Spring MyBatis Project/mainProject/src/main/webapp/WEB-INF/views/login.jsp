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
			alert("���̵� �Է����ּ���.");
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
    			//todo : �α��� ������ �̵��� ������
    		
    		} else {
    			alert('���̵� �Ǵ� ��й�ȣ�� Ʋ��')
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

<input type="text" name="id" placeholder="���̵�" required="required"/><br>


<input type="password" name="pw" placeholder="��й�ȣ" required="required"/><br><br>


	</div>
<div class="wrapperLogin">
<input type="submit"  value="�α���"></form>
<button class="pop" pageTitle="ȸ������" pageName="create.do" >ȸ������</a></button><br>
<button class="pop" pageTitle="��й�ȣ ã��" pageName="findPass.do">��й�ȣ ã��</button></a>
</div>


<div style="color: red"> ${error }</div>


</div>
</form>
</body>
</html>