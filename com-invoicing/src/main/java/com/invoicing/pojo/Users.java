package com.invoicing.pojo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "id")
public class Users {
	private Integer id;
	private String username;
	private String password;
}
