package com.invoicing.pojo;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 留言表
 */
@Data
@EqualsAndHashCode(of = "id")
public class Message {
  private Integer id;
  //新闻id
  private Integer nId;
  //用户id
  private Integer uid;
  //内容
  private String content;

  private String username;

}
