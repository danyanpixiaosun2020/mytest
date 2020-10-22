package com.invoicing.pojo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "id")
public class Plate {

  private Integer id;
  //板块名称
  private  String pname;
}
