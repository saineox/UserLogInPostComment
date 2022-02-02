package com.example.demo.exception;

import java.time.LocalDate;

public class ErrorDetailsOnBrowser 
{
	private String error_msg;
	private LocalDate error_date;
	private String error_description;
	
	
	
	public ErrorDetailsOnBrowser(String message, LocalDate now, String description) {
		// TODO Auto-generated constructor stub
	}
	public String getError_msg() {
		return error_msg;
	}
	public void setError_msg(String error_msg) {
		this.error_msg = error_msg;
	}
	public String getError_description() {
		return error_description;
	}
	public void setError_description(String error_description) {
		this.error_description = error_description;
	}
	public LocalDate getError_date() {
		return error_date;
	}
	public void setError_date(LocalDate error_date) {
		this.error_date = error_date;
	}
	
	
	
	
}
