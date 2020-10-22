package com.invoicing.mapper;

import com.invoicing.pojo.News;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface NewsMapper {
  boolean add(News news);

  boolean edit(News news);

  boolean remove(@Param("id") Integer id);

  List<News> queryList(@Param("type") String type);

  News selelctById(@Param("id") String id);
}
