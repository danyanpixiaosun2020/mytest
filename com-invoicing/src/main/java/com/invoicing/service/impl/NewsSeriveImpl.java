package com.invoicing.service.impl;

import com.invoicing.mapper.NewsMapper;
import com.invoicing.pojo.News;
import com.invoicing.service.NewsSerive;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsSeriveImpl implements NewsSerive {

    @Autowired
    private NewsMapper newsMapper;

  @Override
  public boolean add(News news) {
   boolean result=newsMapper.add(news);
   return result;
  }

  @Override
  public boolean edit(News news) {
    boolean result=newsMapper.edit(news);
    return result;
  }

  @Override
  public boolean remove(Integer id) {
    boolean result=newsMapper.remove(id);
    return result;
  }

  @Override
  public List<News> queryList(String type) {
    List<News> result=newsMapper.queryList(type);
    return result;
  }

  @Override
  public News selelctById(String id) {
   News result=newsMapper.selelctById(id);
    return result;
  }
}
