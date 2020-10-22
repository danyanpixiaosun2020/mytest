package com.invoicing.web.controller;

import com.invoicing.pojo.News;
import com.invoicing.pojo.Plate;
import com.invoicing.service.NewsSerive;
import com.invoicing.service.PlateService;
import com.invoicing.vo.Result;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {
  @Autowired
  private NewsSerive newsSerive;

  @Autowired
  private PlateService plateService;

  @GetMapping("/admin")
  public String logout(Model model,@Param("id")String id,HttpSession session) {
    List<News> list1=new ArrayList<>();
    if(null==id){
       list1=newsSerive.queryList(null);
    }else{
       list1=newsSerive.queryList(id);
    }

    List<Plate> list2=plateService.queryList();
    model.addAttribute("list1", list1);
    model.addAttribute("list2", list2);
    model.addAttribute("id",null==id ? 1 : id);
    if(null!=session.getAttribute("id")){
      session.removeAttribute("id");
    }
    session.setAttribute("id",null==id ? 1 : id);
    return "admin";
  }

  @GetMapping("/newsAdd")
  public String newsAdd() {
    return "newsAdd";
  }

  @PostMapping("/newsAdd")
  public String newsAdd(HttpSession session ,News news,Model model) {
    Integer tid=Integer.parseInt(session.getAttribute("id").toString());
    news.setType(tid);
    Result result;
   if( newsSerive.add(news)){
     result= Result.success("新增成功");
   }else{
     result=Result.success("失败");
   }
    model.addAttribute("result", result);
    return "newsAdd";
  }

  @GetMapping("/newsEdit")
  public String newsEdit(@Param("id")Integer id,Model model) {
   News news= newsSerive.selelctById(id.toString());
    model.addAttribute("news",news);
    return "newsEdit";
  }



  @PostMapping("/newsEdit")
  public String newsEdit(News news,Model model) {
    Result result;
    if(newsSerive.edit(news)){
      result= Result.success("修改成功");
    }else{
      result= Result.success("修改失败");
    }
    model.addAttribute("result",result);
    return "newsEdit";
  }

  @GetMapping("/newsDel")
  public String newsDel(@Param("id")Integer id,Model model) {
    Result result;
    if(newsSerive.remove(id)){
      result= Result.success("删除成功");
    }else{
      result= Result.success("删除失败");
    }
    model.addAttribute("result",result);
    return "newsDel";
  }


}
