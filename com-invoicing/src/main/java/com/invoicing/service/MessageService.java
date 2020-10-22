package com.invoicing.service;

import com.invoicing.pojo.Message;
import com.invoicing.pojo.News;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MessageService {
  boolean add(Message message);

  boolean edit(Message message);

  boolean remove( String id);

  List<Message> queryList( String nId);

}
