<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>

<table>
	<tr><td><img src="${images.imgPath}"  width="100%" height="400px"></td></tr>
</table><br>
	ID: ${images.id }<br><br>
	Views: ${images.viewCount }<br><br>
	Likes: ${images.likeCount }<br><br>
	Price: \ ${images.price }
	
	<tr><td colspan="2">
	<br>
	<br>
	    <input id="likeBut" type="button" value="좋아요" 
			onclick="location.href='like.do'">
		<input id="likeBut" type="button" value="구매" 
			onclick="location.href='updateForm.do?empno=${userinfo.empno}'">
		<input id="likeBut" type="button" value="삭제" 
			onclick="location.href='delete.do?empno=${userinfo.empno}'"></td></tr>
	
</table>
</body>
</html>