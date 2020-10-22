package com.invoicing.vo;

import lombok.Data;
import lombok.Getter;

@Data
public class Result {
	private boolean status;
	private String msg;
	private Object data;
	
	public Result(boolean status) {
		this.status = status;
	}
	
	public Result setStatus(boolean status) {
		this.status = status;
		return this;
	}
	
	public Result setMsg(String msg) {
		this.msg = msg;
		return this;
	}
	
	public Result setData(Object data) {
		this.data = data;
		return this;
	}
	
	public static Result success(String msg) {
		Result result = new Result(true);
		result.setMsg(msg);
		return result;
	}
	
	public static Result fail(String msg) {
		Result result = new Result(false);
		result.setMsg(msg);
		return result;
	}
}
