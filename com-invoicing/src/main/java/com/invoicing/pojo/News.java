package com.invoicing.pojo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "id")
public class News {
  private Integer id;
  //内容
  private String  content;
  //新闻类型
  private  Integer type;
  private  String keywords;
}
