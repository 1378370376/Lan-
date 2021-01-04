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
	<h1>修改密码</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form >
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					请输入原密码：
				</label>
				<input  id="password" type="password"  onblur="validate()" name="password1" required="">
		<span><font color="red" id="passwordf" style="visibility: hidden;">密码不能为空！</font></span>
			<span><font color="red" id="passwordf1" style="visibility:hidden;">原密码错误</font></span>
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-unlock-alt"></i>
					输入密码：
				</label>
				<input id="password1" type="password" name="password2" required="">
				<span><font color="red"  id="passwordfont1" style="visibility: hidden;">两次密码不一样！</font></span>
			</div>
				<div class="form-style-agile">
				<label>
					<i class="fas fa-unlock-alt"></i>
					确定密码：
				</label>
				<input id="password2" type="password" name="password3" required="">
			<span><font color="red" id="passwordfont2" style="visibility: hidden;">两次密码不一样！</font></span>
			</div>
		
			<input type="button" value="修改" onclick=" from()">
			&nbsp;&nbsp;
			<input type="button" value="退出"  onclick="back()"/>
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
   			function validate(){ 				
   				var password=$("#password").val().trim();
   				if(password!=null&&password!=""){
   					$.ajax({
   						url : "${path}/CheckUser/${sessionScope.user.id}" ,
   						type : "POST",
   						data : {
   							"_method":"PUT",
   							"password":password
   						},
   						success:function(date){
   							if(date!=0){
   								flag=true;
   								$("#passwordf1").css("visibility","hidden");
   							}else{
   								$("#passwordf1").css("visibility","visible");
   							}
   						}
   					});
   					}else{
   						$("#passwordf1").css("visibility","visible");
   					}
   				
   			}
		 function from(){
			alert(flag);
			var password1=$("#password1").val().trim();
			var password2=$("#password2").val().trim();
				if(password1==password2&&flag) {		
		        $("#passwordfont1").css("visibility","hidden");
				$("#passwordfont2").css("visibility","hidden");
				
					$.ajax({
   						url : "${path}/updateUser/${sessionScope.user.id}" ,
   						type : "POST",
   						data : {
   							"_method":"PUT",
   							"password":password1
   						},
   						success:function(date){
   							if(date!=0){
   								alert("修改成功！");
   								window.location.href="${path}/index";
   							}else{
   								alert("修改失败！");
   							}
   						}
   					}); 
		}else{
					$("#passwordfont1").css("visibility","visible");
				$("#passwordfont2").css("visibility","visible");
			
		}			
		};
		 function back(){
			 window.location.href="${path}/index"; 
		 }
	</script>
	

</body>
</html>