<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<!-- æ–„1¤7 Bootstrap æ ¸å¿ƒ CSS æ–‡ä»¶ -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<!-- å¯é„1¤7‰çš„Bootstrapä¸»é¢˜æ–‡ä»¶ï¼ˆä¸€èˆ¬ä¸ç”¨å¼•å…¥ï¼‰ -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
<!-- jQueryæ–‡ä»¶ã€‚åŠ¡å¿…åœ¨bootstrap.min.js ä¹‹å‰å¼•å…¥ -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<!-- æœ„1¤7æ–°çš„ Bootstrap æ ¸å¿ƒ JavaScript æ–‡ä»¶ -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- css -->
<link rel="stylesheet"	href="./js/jquery-3.1.1.min.js">
<link rel="stylesheet"	href="./js/jquery.validate.js">
<link rel="stylesheet" href="./js/css/pb3.css" type="text/css">

<script>



var login_username_info = '<%=request.getSession().getAttribute("currentUser") == null ? "" : request.getSession().getAttribute("currentUser")%>';  
var login_message_info = '<%=request.getSession().getAttribute("login_message") == null ? "" : request.getSession().getAttribute("login_message")%>';  
if(login_message_info != null && login_message_info != ''){  
    alert(login_message_info);  
    $.ajax({  
        type: "POST",      
         url: "login.do?method=clearsessionmessage",               
         success: function(data){         
        }            
        });     
}  
/* ÑéÖ¤nameÖØ¸´ */
function validate1(){  
    var loginName=document.getElementById("name").value;  
    if(loginName == "")  
    {  
    	 $("#cu1").html("	<div class=\"row form-group\"><label for=\"first_name\" class=\"col-sm-3 control-label\"></label><div class=\"col-sm-9 \" style=\"color:#fb6332\">Sorry!User name cannot be empty!</div></div>");  
    	 return;
      
      
    }  
    $.ajax({  
           type: "POST",      
            url: "login.do?method=validate1",      
             data: "name="+loginName,   
            success: function(data){  
           if(data=="true"){   
        	   $("#cu1").html("	<div class=\"row form-group\"><label for=\"first_name\" class=\"col-sm-3 control-label\"></label><div class=\"col-sm-9\"style=\"color:#fb6332\">Sorry! User name already exists!</div></div>");  
        	 	
           }else{ 
        	   $("#cu1").html("	<div class=\"row form-group\"><label for=\"first_name\" class=\"col-sm-3 control-label\"></label><div class=\"col-sm-9 \">Congratulations£¡ User name is not used!</div></div>");          	     
           }   
           }            
           });     
   }   
/* ÑéÖ¤emailÖØ¸´ */
function validate2(){  
    var loginName=document.getElementById("email").value;  
    if(loginName == "")  
    {  
    	 $("#cu3").html("	<div class=\"row form-group\"><label for=\"first_name\" class=\"col-sm-3 control-label\"></label><div class=\"col-sm-9 \"style=\"color:#fb6332\">Sorry!Email cannot be empty!</div></div>");  
    	 return;
      
      
    }  
    $.ajax({  
           type: "POST",      
            url: "login.do?method=validate2",      
             data: "email="+loginName,   
            success: function(data){  
           if(data=="true"){   
        	   $("#cu3").html("	<div class=\"row form-group\"><label for=\"first_name\" class=\"col-sm-3 control-label\"></label><div class=\"col-sm-9\"style=\"color:#fb6332\">Sorry!Email already exists!</div></div>");  
        	 	
           }else{ 
        	   $("#cu3").html("	<div class=\"row form-group\"><label for=\"first_name\" class=\"col-sm-3 control-label\"></label><div class=\"col-sm-9 \">Congratulations£¡Email is not used!</div></div>");          	     
           }   
           }            
           });     
   }   
 /* ÑéÖ¤ÃÜÂëÕýÈ· */
function  validate3(){
	var password=document.getElementById("password").value; 
	var password_con=document.getElementById("Password_con").value; 
	
	 if(password_con != password)  
	    {  
	    	 $("#cu2").html("	<div class=\"row form-group\"><label for=\"first_name\" class=\"col-sm-3 control-label\"></label><div class=\"col-sm-9 \"style=\"color:#fb6332\">Sorry!Password is different!</div></div>");  
	    	 return;	      
	    } 
	 else
		 $("#cu2").html("");  
	 		return;
	
}

</script>
</head>
<body class="pumpkin_spice os-pc">
	<header class="onboarding-header">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 px-0">
				<a class="company-brand"></a>
			</div>
		</div>
	</div>
	</header>

	<div class="container">
		<div class="row">
			<div
				class="col-md-8 col-md-offset-2 onboarding-container onboarding-container--form">

				<h1>Register your information</h1>
				<h3>Complete the form to get started .</h3>
				<form id="register" name="register" class="form-horizontal"
					method="post" action="login.do?method=register">

				

					<div class="row form-group">
						<label for="first_name" class="col-sm-3 control-label">Your
							Name</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="Name" required=""
								aria-required="true" value=""  onblur="validate1()"></input>
						</div>
					</div>
					<div id="cu1" ></div>

					<div class="form-group">
						<label for="email" class="col-sm-3 control-label">Your
							Email</label>
						<div class="col-sm-9">
							<input type="email" placeholder="Email" 
								class="form-control" id="email" name="email"
								 value=""  required="" onblur="validate2()"> 


						</div>
					</div>
					<div id="cu3"></div>

					<div class="form-group">
						<label for="company_name" class="col-sm-3 control-label">Your
							Password</label>
						<div class="col-sm-9">
							<input type="text" placeholder="Password"
								 class="form-control"
								id="password" name="password"   required="" >


						</div>
					</div>
					<div class="form-group">
						<label for="phone_number" class="col-sm-3 control-label">Confirm Password</label>
						<div class="col-sm-9">
							<input type="text" placeholder="Confirm your Password"
								 class="form-control"
								id="Password_con" name="Password_con"   required=""  onblur="validate3()"></input>
						</div>
					</div>
					
					<div id="cu2" ></div>
					
					<div class="form-group">
						<label for="phone_number" class="col-sm-3 control-label">Your
							School</label>
						<div class="col-sm-9">
							<input type="text" placeholder="School" class="form-control"
								id="school" name="school" value="">


						</div>
					</div>

					<div class="form-group">
						<label for="phone_number" class="col-sm-3 control-label">Your
							Sex</label>
						<div class="col-sm-9">
							<div class="btn-group" data-toggle="buttons" >
								<label class="btn  btn-default"> <input type="radio"
									name="sex" id="option1" required=""  value=1> MAN
								</label> <label class="btn  btn-default"> <input type="radio"
									name="sex" id="option2" required=""  value=2> WOMAN
								</label>
							</div>

						</div>
					</div>



					<div class="clearfix u-mt-20">
						<button type="submit" class="btn btn-primary btn-large pull-right">
							Continue</button>
					</div>
				</form>



			</div>
		</div>


	</div>




</body>
</html>