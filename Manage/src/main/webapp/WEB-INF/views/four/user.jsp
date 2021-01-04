<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%pageContext.setAttribute("path", request.getContextPath()); %>
</head>
	<jsp:include page="/utils/css.jsp"></jsp:include>
<body  class="cbp-spmenu-push">
	<div class="main-content">
		
		<jsp:include page="/utils/nav.jsp"></jsp:include>
		<jsp:include page="/utils/header.jsp"></jsp:include>
		<!-- //header-ends -->
		<!-- main content start-->

		
		<div id="page-wrapper">
			<div class="main-page">
			<div class="tables">
			<div class="bs-example widget-shadow" > 					
				<h4>开户:</h4>
					<div class="form-group">
					<form class="form-horizontal" id="formdate">
					<table class="table table-bordered"> 							
						  <tr> 
						  <td>密码:</td> 
						  <td>
						  <div class="col-sm-8">
		<input type="password" class="form-control1" id="passworld" placeholder="请输入密码">
						</div>
						<div class="col-sm-2">
							<font color="red"  id="passworldfont" style="visibility: hidden">两次密码不一样</font>
							
						</div>
						</td>	
						  </tr> 						    
						     <tr> 
						  <td>确定密码：</td> 
						  <td>
						  				  <div class="col-sm-8">
		<input type="password"  class="form-control1" id="passworld1" placeholder="请输入密码">
						</div>
						<div class="col-sm-2">
							<font color="red" id="passworl1dfont" style="visibility: hidden">两次密码不一样</font>
						</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>开户金额:</td> 
						  <td>
						  	<div class="col-sm-8">
		<input type="text" class="form-control1" id="blance" placeholder="请输入开户金额">
						</div>
						<div class="col-sm-2">
							<font color="red" id="balancefont" style="visibility: hidden">输入的格式错误</font>
						</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>姓名</td> 
						  <td>
						  	<div class="col-sm-8">
		<input type="text" class="form-control1" id="name" placeholder="请输入姓名">
						</div>
						<div class="col-sm-2">
							<font color="red" id="namefont" style="visibility: hidden">姓名不能为空</font>
						</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>出生日期</td> 
						  <td>
						     <div class="col-sm-2 col-lg-offset-1">                    
                           <input type='text' class="form-control" id='nowdate' style="width: 150px; height: 30px;" readonly/>
                        </div>
						  <div class="col-sm-2">
							<font color="red"id="nowdatefont" style="visibility: hidden">出生日期不能为空！</font>
						</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>性别</td> 
						  <td>
						  	<div class="col-sm-8">
						  	<select name="selector1" id="selector1" class="form-control1">
										<option>男</option>
										<option>女</option>
									</select>
							</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>家庭住址：</td> 
						  <td>
						  <div class="col-sm-8">
		<input type="text" class="form-control1" id="address" placeholder="请输入家庭住址">
						</div>
						<div class="col-sm-2">
							<font color="red" id="addressfont"style="visibility: hidden">家庭住址不能为空</font>
						</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>手机号</td> 
						  <td>
						  <div class="col-sm-8">
		<input type="tel" class="form-control1" id="phoneNumber" placeholder="请输入手机号">
						</div>
						<div class="col-sm-2">
							<font color="red" id="phoneNumberfont"style="visibility: hidden">手机号格式错误</font>
						</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>身份证号</td> 
						  <td>
						  <div class="col-sm-8">
		<input type="text" class="form-control1" id="idCard" placeholder="请输入身份证号">
						</div>
						<div class="col-sm-2">
							<font color="red" id="idCardfont" style="visibility: hidden">身份证号不能为空</font>
						</div>
						  </td>	
						  </tr>
						  <tr>
						  <td>电子邮箱</td>
						  <td>
						  <div class="col-sm-8">
		<input type="email" class="form-control1" id="email" placeholder="请输入电子邮箱">
						</div>
						<div class="col-sm-2">
							<font color="red" id="emailfont" style="visibility: hidden;">请输入正确的电子邮箱</font>
						</div>
						  </td>
						  </tr>
						  				  
						 </table>
						 <div align="left">
						 <input type="button" value="提交" onclick="tj()" class="btn btn-success" >
						 </div>
						</form>
						</div>
						</div>
			</div>
			</div>
			</div>
			</div>
			
		<div class="footer">
		   <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	<jsp:include page="/utils/js.jsp"></jsp:include>
	
 <script type="text/javascript">
 $.fn.datetimepicker.dates['zh-CN'] = {
		    days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		    daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		    daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		    months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		    monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
		    today: "今天",
		    suffix: [],
		    meridiem: ["上午", "下午"]
		};
        $('#nowdate').datetimepicker({
        forceParse: 0,//设置为0，时间不会跳转1899，会显示当前时间。
        language: 'zh-CN',//显示中文
        format: 'yyyy-mm-dd',//显示格式
        minView: "month",//设置只显示到月份
        initialDate: new Date(),//初始化当前日期
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
        todayHighlight:true,//默认值: false,如果为true, 高亮当前日期。  
        initialDate: new Date(),//初始化日期.默认new Date()当前日期  
        bootcssVer:3//显示向左向右的箭头  
    })
</script>
	<script type="text/javascript">
	 function tj(){
		 
		var password=$("#passworld").val();
		var password1=$("#passworld1").val();
 		var blance=$("#blance").val();
		var name=$("#name").val();
		var nowdate=$("#nowdate").val();
		var selector1=$("#selector1").val();
		var address=$("#address").val();
		var phoneNumber=$("#phoneNumber").val();
		var idCard=$("#idCard").val();
		var email=$("#email").val();
		var regblance = /^[0-9,.]*$/;
		var regphone = /^1[3|4|5|7|8][0-9]{9}$/;
		var regEmail = /^[0-9a-zA-Z_.-]+[@][0-9a-zA-Z_.-]+([.][a-zA-Z]+){1,2}$/;
		var regIdCard= /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
		if(password==password1&&password!=null&&password!=""){
			$("#passworldfont").css("visibility","hidden");
			$("#passworl1dfont").css("visibility","hidden");
			 if(regblance.test(blance)&&blance!=null&&blance!=""){
				$("#blancefont").css("visibility","hidden");
				if(name!=null&&name!=""){
					$("#namefont").css("visibility","hidden");
					if(nowdate!=null&&nowdate!=""){
						$("#nowdatefont").css("visibility","hidden");
						if(address!=null&&address!=""){
							$("#addressfont").css("visibility","hidden");
							if(regphone.test(phoneNumber)&&phoneNumber!=null&&phoneNumber!=""){
								$("#phoneNumberfont").css("visibility","hidden");
								if(regIdCard.test(idCard)&&idCard!=null&&idCard!=""){
									$("#idCardfont").css("visibility","hidden");
							if(regEmail.test(email)&&email!=null&&email!=""){							
								$("#emailfont").css("visibility","hidden");
								
								 alert($("#formdate").serialize());
								$.ajax({
									url : "${path}/save",
									type : "post",
									data :{
										"password":password,
										"username":name,
										"birthday":JSON.stringify(nowdate),
										"sex":selector1,
										"homeAddress":address,
										"phoneNumber":phoneNumber,
										"sfz":idCard,
										"balance":blance,
										"email":email			
									},/*  $("#formdate").serialize() 使用不了*/
									success : function(result){
									if(result==1){
										alert("添加成功！");
										window.location.href="${path}/adduser";
									}else{
										alert("添加失败");
									}							
									
									}
								});
													
							}else{
								$("#emailfont").css("visibility","visible");
							}
							}else{
								$("#idCardfont").css("visibility","visible");
							}
							}else{
								$("#phoneNumberfont").css("visibility","visible");
							}
						}else{
							$("#addressfont").css("visibility","visible");
						}
					}else{
						$("#nowdatefont").css("visibility","visible");
					}
				}else{
					$("#namefont").css("visibility","visible");
				}
			}else{
				$("#blancefont").css("visibility","visible");
			} 
		}else{
			$("#passworldfont").css("visibility","visible");
			$("#passworl1dfont").css("visibility","visible");
		}
		 
	 } 
	 
	</script>
</body>
</html>