<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%pageContext.setAttribute("path", request.getContextPath()); %>
</head>
	<script src="${path}/loginstyle/js/jquery-3.3.1.min.js"></script>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
		
		
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="${path}/loginstyle/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="${path}/loginstyle/css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
<body>
	<!-- bg effect -->
	<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<!-- //bg effect -->
	<!-- title -->
	<h1>登录</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form >
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					账号：
				</label>
				<input  id="account" type="text"  onblur="validate1()" required="">
		<span><font color="red" id="accountf1" style="visibility: hidden;">账号不能为空！</font></span>
		<span><font color="red" id="accountf2" style="visibility:hidden;">账号不存在！</font></span>
			</div>
				<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					密码：
				</label>
				<input  id="password" type="password"  onblur="validate2()" name="password1" required="">
		<span><font color="red" id="passwordf" style="visibility: hidden;">密码不能为空！</font></span>
			<span><font color="red" id="passwordf1" style="visibility:hidden;">密码错误</font></span>
			</div>
			<input type="button" value="登录" onclick=" from()">
	</form>
	</div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
		<p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
	</div>

	<script src="${path}/loginstyle/js/canva_moving_effect.js"></script>
   <script type="text/javascript">
   var flag=false;
   function validate1(){ 				
			var account=$("#account").val().trim();
			if(account!=null&&account!=""){
				$.ajax({
						url : "${path}/checkUserAccount",
						type : "get",
						data : {
							"account":account
						},
						success:function(date){
							if(date!=0){
								$("#accountf2").css("visibility","hidden");
								flag=true;
							}else{
								$("#accountf2").css("visibility","visible");
							}
						}
					}); 
			}else{
				$("#accountf1").css("visibility","visible");
			}
   }
		 function from(){
			
			var account=$("#account").val().trim();
			var password=$("#password").val().trim();
				if(password!=null&&password!="") {		
		        $("#passwordf").css("visibility","hidden");
					if(flag){				
					$.ajax({
   						url : "${path}/login",
   						type : "get",
   						data : {
   							"account":account,
   							"password":password
   						},
   						success:function(date){
   							if(date!=0){
   								alert("登录成功！");
   							 window.location.href="${path}/index";
   							}else{
   								alert("登录失败！");
   							}
   						}
   					});
					}
		}else{
					$("#passwordf").css("visibility","visible");
			
		}			
		}

	</script>
	

</body>
</html>