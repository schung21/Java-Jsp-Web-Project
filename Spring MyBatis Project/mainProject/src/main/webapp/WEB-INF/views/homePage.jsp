<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<link rel="stylesheet" href="css/main.css" type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>

<script>
	$(function() {

		$(".pop").click(function() {
			document.getElementById('modal2').style.width = "600px";
			var pageTitle = $(this).attr('pageTitle');
			var pageName = $(this).attr('pageName');
			$(".modal .modal-title").html(pageTitle);
			$(".modal .modal-body").html("Content loading please wait...");
			$(".modal").modal("show");
			$(".modal .modal-body").load(pageName);
		});
	});
	
	$(function() {

		$(".pop2").click(function() {
			document.getElementById('modal2').style.width = "790px";
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
<body >
	<div class="body2">

	<div id="wrapper">

		<div class="nav-wrapper">
			<div class="container">

				<nav class="navbar navbar-default navbar-inverse" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="homePage.do"><p>IMAGEBASE</p></a>
					</div>


					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">



						</ul>
						</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<div class="loginSpace">
								<c:if test="${sessionScope.id == null}">
									<li><button id="loginBut" class="pop" pageTitle="Login"
											pageName="login.do">
											<p>LOGIN</p>
											<button id="registerBut" class="pop" pageTitle="회원가입"
												pageName="create.do">
												<p>REGISTER</p></li>
							</div>
							</c:if>
						</ul>
						<c:if test="${sessionScope.id != null }">
							<li><p>Welcome, ${id}</p></li>
							<div class="wrapperLogout">
								<form action="logout.do">
									<input id="logoutBut" type="submit" value="LOGOUT" />
								</form>
								<form action="myPage.do">
									<input id="pageBut" type="submit" value="MY PAGE" />
								</form>
							</div>
						</c:if>

					</div>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
			</nav>
		</div>
	</div>
	<!-- /.container -->
	</div>
	<!-- /.nav-wrapper -->

	<div class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog" id="modal2">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
<div class="w3-content w3-section">
  <img class="mySlides w3-animate-left" src="image/banner.png" id="bannerimg" style="width: 100%;">
  <img class="mySlides w3-animate-left" src="image/banner2.jpg" id="bannerimg" style="width: 100%;">
  <img class="mySlides w3-animate-left" src="image/banner3.jpg" id="bannerimg" style="width: 100%;">
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 5500);    
}
</script>
	

		<div class="shot-subnav">
			<a class="form-btn outlined btn-dropdown-link" data-track-sub-nav=""
				href="#" data-dropdown-state="closed"> <svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24" fill="none" role="img"
					class="icon btn-dropdown-caret"> 
					
				</svg>
			</a>


		</div>
		<ul class="mainTable">

			<c:forEach var="images" items="${list }">
				<div class="left">
					
					<li><a class="pop2" pageTitle="${images.title }"
											pageName="detail.do?imgId=${images.imgId }"><img
							src="${images.imgPath}" id="timage">
							<div class="lst-infor-wrap">
								<div class="lst-infor-title">${images.title }</div>

								<div class="lst-infor-text">
									<div class="lst-infor-text-inner">${images.comments }\
										${images.price }
									<br></div>
								</div>
					
	
							</div> </a></li>
				</div>
			</c:forEach>
	</div>
	<c:set var="num" value="${num - 1 }"></c:set>
	</ul>
	</div>
	</div>
	</div>

	</div>
	</div>
	<!-- /.section -->

	<hr>



	<hr>

	<footer>
	<div class="copy-rights clearfix">
		<div class="pull-left"></div>
		<div class="pull-right">By Sam Chung</div>
	</div>
	</footer>

	</div>

</body>
</html>