package com.invoicing.service;

import com.invoicing.pojo.News;
import java.util.List;

public interface NewsSerive {
  boolean add(News news);

  boolean edit(News news);

  boolean remove(Integer id);

  List<News> queryList(String type);

  News selelctById(String id);
}
