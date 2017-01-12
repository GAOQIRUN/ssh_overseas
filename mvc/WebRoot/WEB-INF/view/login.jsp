<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Login</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- css -->
<link rel="stylesheet"	href="js/css/pb2.css"	type="text/css">
<script type="text/javascript">  
var login_username_info = '<%=request.getSession().getAttribute("currentUser") == null ? "" : request.getSession().getAttribute("currentUser")%>';  
var login_message_info = '<%=request.getSession().getAttribute("login_message") == null ? "" : request.getSession().getAttribute("login_message")%>';  
if(login_message_info != null && login_message_info != ''){  
    alert(login_message_info);  
}  
  
</script>  
</head>
<body>

	<div class="login-box">
		<div class="login-box__header clearfix">
			<div class="company-brand" style="text-align:center;line-height:2em;" >U+</div>
		</div>
		<div class="login-box__content">

			<div class="login-box__content__header text-center u-pb-20">
				<h1>Sign In</h1>
				<p>
					Not a user? <a href="/signup/"> Sign up now </a>
				</p>
			</div>



			<form id="loginForm" name="loginForm" method="post"
				action="login.do?method=login">

				<!-- token  -->
				<!-- <input type="hidden" name="csrfmiddlewaretoken"
					value="w7UnkaIAFCifEBdJltB5SLqc7LR9LC9N"> -->
				<div id="div_id_username" class="form-group">
					<div class="controls ">
						<input autofocus="autofocus"
							class="focus textinput textInput form-control" id="id_username"
							name="username" placeholder="Account name" type="text">
					</div>
				</div>
				<div id="div_id_password" class="form-group">
					<div class="controls ">
						<input class="textinput textInput form-control" id="id_password"
							name="password" placeholder="Password" type="password">
					</div>
				</div>
				
					<input id="id_login_company_id" maxlength="10" name="login_company_id" type="hidden"> 
					<input id="id_form_done_url" name="form_done_url" type="hidden">

				<div class="clearfix">
					<div class="remember-me pull-left">
						<input type="checkbox" class="icheck" id="remember_me"
							name="remember_me"> <label for="remember_me">Remember
							Me</label>
					</div>
					<a href="/account/password/reset?email="
						class="pull-right forgot-password"> Forgot Password? </a>
				</div>
				
				<button type="submit"
					class="btn btn-primary btn-large btn-lg btn-block">Sign In
				</button>
			</form>


			<div class="login-box__separator text-center">${error }</div>
			<div class="login-box__separator text-center"></div>






		</div>
	</div>
	<%-- ${error }
	<form action="login.do" method="post">
		账号登陆<br>
		<hr>
		卡号：<input type="text" name="cardNo"><br> 密码：<input
			type="text" name="password"><br> <input type="submit"
			value="登陆">
	</form> --%>

</body>
</html>