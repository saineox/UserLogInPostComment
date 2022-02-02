package com.example.demo.exception;

@SuppressWarnings("serial")
public class NotFoundByUser extends RuntimeException 
{

	public NotFoundByUser(String message)
		
	{
		super(message);
	}
	
}
