package com.example.demo.exception;

@SuppressWarnings("serial")
public class NotFound extends RuntimeException 
{

	public NotFound(String message)
		
	{
		super(message);
	}
	
}
