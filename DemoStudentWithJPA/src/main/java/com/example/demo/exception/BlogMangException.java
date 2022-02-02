package com.example.demo.exception;

import java.time.LocalDate;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice   //TO handle Global Exception
public class BlogMangException extends ResponseEntityExceptionHandler
{
	@ExceptionHandler(NotFoundByUser.class)
	public ResponseEntity<ErrorDetailsOnBrowser>handleExceptionMethod(NotFoundByUser NotFoundByUser_object,WebRequest request_object)
	{
		ErrorDetailsOnBrowser erdob_object = new ErrorDetailsOnBrowser
				(NotFoundByUser_object.getMessage(),LocalDate.now(),request_object.getDescription(false));
		
		return new ResponseEntity<ErrorDetailsOnBrowser>(erdob_object,HttpStatus.NOT_FOUND);
	}
}
