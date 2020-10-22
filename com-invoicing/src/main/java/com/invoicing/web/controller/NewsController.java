package com.invoicing.web.controller;

import com.invoicing.pojo.News;
import com.invoicing.pojo.Plate;
import com.invoicing.service.NewsSerive;
import com.invoicing.service.PlateService;
import com.invoicing.service.impl.NewsSeriveImpl;
import java.util.List;
import javax.management.relation.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class NewsController {

  @Autowired
  private NewsSerive newsSerive;


  @Autowired
  private PlateService plateService;

  @GetMapping("/news")
  public String news(@Param("id")String id,Model model) {
    List<News> list1=newsSerive.queryList(id);
    List<Plate> list2=plateService.queryList();
    model.addAttribute("list1", list1);
    model.addAttribute("list2", list2);
    return "home";
  }
  @PostMapping("/news")
  public String news(Model model){
    List<News> list1=newsSerive.queryList(null);
    List<Plate> list2=plateService.queryList();
    model.addAttribute("list1", list1);
    model.addAttribute("list2", list2);
    return "home";
  }
}
