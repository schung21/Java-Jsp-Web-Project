<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link href="css/style3.css" rel="stylesheet" type="text/css">

<style type="text/css">
table {
	width: 100%;
}
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
</style>

</head>
<body>

	<div id="wrapper">
		<!-- header -->
		<div id="header">
			<div class="inner">
				<h1 class="logo">
					<a href="main.do"><img src="images/logo.jpg"	alt="logo"/></a>
				</h1>
				<div class="navWrap">
					<ul class="nav">
						<li><a href="#">소개</a>
							<div class="subDep sub1">
								<ul>
									<li><a href="#">프로젝트 소개</a></li>
									<li><a href="#">팀원 역할 분배</a></li>
								</ul>
							</div></li>
						<li><a href="#">여행지 정보</a>
							<div class="subDep sub2">
								<ul>
									<li><a href="introSeoul.jsp">서울 소개</a></li>
									<li><a href="travel.do">여행지 검색</a></li>
									<li><a href="recomm.jsp">추천 여행지</a></li>
								</ul>
							</div></li>
						<li><a href="submain.do">나의 서울 만들기</a>
							<div class="subDep sub3">
								<ul>
									<li><a href="submain.do">일정 만들기</a></li>
									<li><a href="schedule.do">일정 보기</a></li>
								</ul>
							</div></li>
						<li><a href="#">호텔</a>
							<div class="subDep sub4">
								<ul>
									<li><a href="h_map.do">지도 검색</a></li>
									<li><a href="h_detail.do">상세 검색</a></li>
								</ul>
							</div></li>
						<li><a href="culture_main.do">문화</a>
							<div class="subDep sub5">
								<ul>
									<li><a href="culture_main.do?e_kind=공연">공연</a></li>
									<li><a href="culture_main.do?e_kind=전시">전시</a></li>
									<li><a href="culture_main.do?e_kind=축제/행사">축제/행사</a></li>
								</ul>
							</div></li>
						<li><a href="#">게시판</a>
							<div class="subDep sub6">
								<ul>
									<li><a href="boardlist.do?b_clf=공지">공지사항</a></li>
									<li><a href="boardlist.do?b_clf=자주하는질문">자주하는 질문</a></li>
									<li><a href="boardlist.do?b_clf=여행후기">여행 후기</a></li>
									<li><a href="boardlist.do?b_clf=사진갤러리">사진 갤러리</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="util">
					<ul>
						<li class="customerCenter">
							<c:choose>
								<c:when test="${id == null }">
									<a href="loginForm.do" id="login">로그인</a>
								</c:when>
								<c:otherwise>
									<a href="mypage.jsp?m_id=${id}">${id }님</a>
									
								</c:otherwise>
							</c:choose>
						</li>
						<li class="customerCenter">
							<c:choose>
								<c:when test="${id == null }">
									<a href="joinForm.do">회원가입</a>
								</c:when>
								<c:otherwise>
									<a href="logOut.do" id="logout">로그아웃</a>
								</c:otherwise>
							</c:choose>
							

						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<div class="namebox2">
<div class="name2">
			<span class="a2">여행지 정보</span> 
			<span class="b">여행지 검색 </span> 
		</div>
</div>
	<div class="grid-container">
	
		<a href='travel.do?c_code=A1' class="grid-item">
		강남 
		</a>
		<a href='travel.do?c_code=A23' class="grid-item">
		종로</a>
		<a href='travel.do?c_code=A21' class="grid-item">


		

	</div>
	
	<br>
	<br>

	<ul class="mainTable">
	
	
		<c:if test="${totCnt > 0 }">
			<c:forEach var="travel" items="${list }">

					<div class="left"><li><a
						href='travel_info.do?t_code=${travel.t_code}'><img src="${travel.t_image}"  id="timage"
				>
			<div class="lst-infor-wrap">
					<div class="lst-infor-title">${travel.t_name }</div>
					
					<div class="lst-infor-text">
						<div class="lst-infor-text-inner">
							${travel.t_expl }
						</div>
					</div>
					
					<div class="lst-infor-link">
						자세히 보기
					</div>
									
				<div class="ico-arrow">
					<span></span>
				</div>
				</div>
				</a>
				</li>
				</div>
			</c:forEach>
		</c:if>

		<c:if test="${totCnt == 0 }">
			<tr>
				<td colspan=7>데이터가 없네</td>
			</tr>
		</c:if>

	</ul>


	<c:choose>
		<c:when test="${c_code == 'A1' }">

			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A1'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:when test="${c_code == 'A13' }">
			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A13'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:when test="${c_code == 'A21' }">
			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A21'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:when test="${c_code == 'A23' }">
			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A23'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:when test="${c_code == 'A11' }">
			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A11'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:when test="${c_code == 'A24' }">
			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A24'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:when test="${c_code == 'A20' }">
			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A20'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:when test="${c_code == 'A7' }">
			<center>
			<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}&c_code=A7'>[${i}]</a>
				</c:forEach>
			</div>
			</center>
		</c:when>
		<c:otherwise>
			<center>
				<div class= "pageContain">
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href='travel.do?pageNum=${i}'>[${i}]</a>
				</c:forEach>
				</div>
			</center>

		</c:otherwise>
	</c:choose>

	<br>
	<br>
	<footer>
		<div id="footer-div">
			<div id="footer-left">
				<h3>&copy; Copyright 2019 JSP Project, 3조</h3>
				<h3>김형주 박명규 송주환 유엄재 이찬우 정은규 정혜인</h3>
			</div>
			<div id="footer-right">
				<h3>서울특별시 마포구 신촌로 176, 중앙정보처리학원 603호</h3>
			</div>
			
		</div>
	</footer>

</body>
</html>

</body>
</html>