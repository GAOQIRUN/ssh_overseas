package com.mvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.mvc.entity.Account;
import com.mvc.service.AccountService;


@Controller
@RequestMapping("/login.do")
public class LoginController {
	
	// �����������
	@Autowired
	public AccountService accountService;
	// log aop
	protected final transient Log log = LogFactory.getLog(LoginController.class);

	// ���캯��
	public LoginController() {}

	 @RequestMapping(params="method=login")
	 public ModelAndView loginAction(@RequestParam(value="username") String username, @RequestParam(value="password") String password, HttpSession session, HttpServletResponse resp, @RequestParam(value="savetime", required=false) String savetime) {  
	     session.removeAttribute("login_message");  
	     
	     
	     List<Account> Aps=null;
		//Aps=accountService.loginbyname(username);
	     ModelAndView view = null;  
	    
	     if(accountService.loginbyname(username).size()<1) {  
	         view = new ModelAndView("login");  
	         session.setAttribute("login_message", "�û�������ȷ");  
	         return view;  
	     } 
	     //boolean isPasswordCorrect = EncryptionUtil.compareSHA(password, user.getPassword());  
	     Aps=accountService.login(username, password);
	     boolean isPasswordCorrect = (Aps.size()>=1);
	     if(isPasswordCorrect){  
	         session.setAttribute("currentUser", username);  
	         Map<String ,Object> model=new HashMap<String,Object>();
	         model.put("account", Aps.get(0));
	         view = new ModelAndView("showAccount",model);  
	     } else{  
	         view = new ModelAndView("login");  
	         session.setAttribute("login_message", "���벻��ȷ");  
	     }  
	           
	     return view;  
	 }  
	 
	 //�ظ�����֤
	 @RequestMapping(params="method=validate1")
	 public void  validate1Action(@RequestParam(value="name") String name,HttpServletResponse resp) throws IOException{
		
		 if(accountService.is_exist("name", name))
			 resp.getWriter().write("true");
		 else 
			 resp.getWriter().write("false");
		 
		
	 }
	 
	 //�ظ�email��֤
	 @RequestMapping(params="method=validate2")
	 public void  validate2Action(@RequestParam(value="email") String email,HttpServletResponse resp) throws IOException{
		
		 if(accountService.is_exist("email", email))
			 resp.getWriter().write("true");
		 else 
			 resp.getWriter().write("false");
		 
		
	 }
	 
	 @RequestMapping(params="method=clearsessionmessage")
	 public void clearsessionmessageAction(HttpSession session){
		 session.removeAttribute("login_message");  
	 }
	 
	//registerת��
		@RequestMapping(params="method=register")
		 public ModelAndView registerAction(@RequestParam(value="name") String name, @RequestParam(value="password") String password, @RequestParam(value="Password_con") String password_con, @RequestParam(value="email") String email, @RequestParam(value="school") String school, @RequestParam(value="sex") int sex,HttpSession session, HttpServletResponse resp, @RequestParam(value="savetime", required=false) String savetime) {
			session.removeAttribute("login_message"); 
			
			Account ap=new Account();
			ModelAndView view = null;  
			ap.setName(name);
			ap.setEmail(email);
			ap.setPassword(password);
			ap.setSchool(school);
			ap.setSex(sex);
			ap.setIS_DELETE(false);
			try{
				if(accountService.is_exist("name", name))
				{
					 session.setAttribute("login_message", "�û����ظ�");  
					 return new ModelAndView("register");  
				}
				if(accountService.is_exist("email", email))
				{
					 session.setAttribute("login_message", "Email�ظ�");  
					 return new ModelAndView("register");  
				}
				if(!password.equals(password_con))
				{
					
					 session.setAttribute("login_message", "���벻һ��");  
					 return new ModelAndView("register");  
				}
				accountService.save(ap);
				 Map<String ,Object> model=new HashMap<String,Object>();
		         model.put("account", ap);
		         view = new ModelAndView("showAccount",model);  
				/*modelMap.put("addstate", "��ӳɹ�");*/
			}
			catch(Exception e){
				e.printStackTrace();
				
				log.error(e.getMessage());
				
				 view = new ModelAndView("register");  
				/*modelMap.put("addstate", "���ʧ��b");*/
			}		
			
			
			return view;  
		}

}
