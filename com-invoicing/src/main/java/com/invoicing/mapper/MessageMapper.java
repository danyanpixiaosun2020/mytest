package com.invoicing.mapper;

import com.invoicing.pojo.Message;
import com.invoicing.pojo.News;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MessageMapper {
  boolean add(Message message);

  boolean edit(Message message);

  boolean remove(@Param("id") String id);

  List<Message> queryList(@Param("nId") String nId);



  public  static void main(String [] args){
    System.out.println("11");
  }

}
