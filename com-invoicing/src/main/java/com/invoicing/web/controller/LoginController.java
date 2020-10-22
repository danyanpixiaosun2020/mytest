package com.invoicing.web.controller;

import com.invoicing.pojo.Message;
import com.invoicing.pojo.News;
import com.invoicing.pojo.Plate;
import com.invoicing.service.MessageService;
import com.invoicing.service.NewsSerive;
import com.invoicing.service.PlateService;
import com.invoicing.service.impl.NewsSeriveImpl;
import com.mysql.cj.api.Session;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.invoicing.pojo.Users;
import com.invoicing.service.UsersService;
import com.invoicing.vo.Result;

@Controller
public class LoginController {
	
	@Autowired
	private UsersService usersService;

	@Autowired
	private NewsSerive newsSerive;

	@Autowired
	private PlateService plateService;

	@Autowired
	private MessageService messageService;

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/register")
	public String register() {
		return "register";
	}

	@PostMapping("/register")
	public String register(Users users, Model model) {
		boolean isok = usersService.register(users);
		Result result;
		if(isok){
			result=	Result.success("注册成功");
		}else{
			result=	Result.success("注册失败");
		}
		model.addAttribute("result",result);
		return "register";
	}

	@PostMapping("/login")
	public String login(Users users, Model model, HttpSession session) {
		Result result = usersService.login(users.getUsername(), users.getPassword());

		if (result.isStatus()) {
			session.setAttribute("users", result.getData());
			if(users.getUsername().equals("admin")){
				return "redirect:/admin";
			}
			return "redirect:/home";
		}

		model.addAttribute("result", result);
		return "login";
	}

	@GetMapping("/home")
	public String home( HttpSession session, Model model) {
		Object users=session.getAttribute("users");
		if(null!=users){
			model.addAttribute("users", users);
		}
		List<News> list1=newsSerive.queryList(null);
		List<Plate> list2=plateService.queryList();
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		return "home";
	}




	@GetMapping("/message")
	public String message(Model model,@Param("id")String id) {
		List<Message> list= messageService.queryList(id);
		News news=newsSerive.selelctById(id);
		model.addAttribute("list",list);
		model.addAttribute("news",news);
		return "message";
	}
	@PostMapping("/message")
	public String message(){
		return "/message";
	}


	@GetMapping("/messageAdd")
	public  String messageAdd(Model model,@Param("nId")Integer nId, @Param("content")String  content,HttpSession session){
		//新增
		Message message=new Message();
		Users users=(Users) session.getAttribute("users");
		message.setUid(users.getId());
		message.setNId(nId);
		message.setContent(content);
		messageService.add(message);
		List<Message> list= messageService.queryList(nId.toString());
		News news=newsSerive.selelctById(nId.toString());
		model.addAttribute("list",list);
		model.addAttribute("news",news);
		return "/message";
	}
}
