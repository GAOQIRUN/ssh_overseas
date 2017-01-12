package com.mvc.controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/index.do")
public class IndexController {
	//log  aop
	protected final transient Log log = LogFactory.getLog(IndexController.class);	
	//¹¹Ôìº¯Êý
	public IndexController(){}
	@RequestMapping(params ="method=login")
	public String login(HttpServletRequest request, ModelMap modelMap) throws Exception{
		return "login";
	}	
	
	@RequestMapping(params ="method=register")
	public String register(HttpServletRequest request, ModelMap modelMap) throws Exception{
		return "register";
	}	
	
}


