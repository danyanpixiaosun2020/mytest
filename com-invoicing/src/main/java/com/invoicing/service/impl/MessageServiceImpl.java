package com.invoicing.service.impl;

import com.invoicing.mapper.MessageMapper;
import com.invoicing.pojo.Message;
import com.invoicing.pojo.News;
import com.invoicing.service.MessageService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {
  @Autowired
  MessageMapper messageMapper;

  @Override
  public boolean add(Message message) {
    boolean result=messageMapper.add(message);
    return result;
  }

  @Override
  public boolean edit(Message message) {
    boolean result=messageMapper.edit(message);
    return result;
  }

  @Override
  public boolean remove(String id) {
    boolean result=messageMapper.remove(id);
    return result;
  }

  @Override
  public List<Message> queryList(String nId) {
    List<Message>  result=messageMapper.queryList(nId);
    return result;
  }
}
