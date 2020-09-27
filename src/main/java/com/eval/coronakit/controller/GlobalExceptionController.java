package com.eval.coronakit.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.eval.coronakit.exception.CoronaKitException;

@ControllerAdvice
public class GlobalExceptionController {
	
	@ExceptionHandler(CoronaKitException.class)
	public ModelAndView ErrorPage(CoronaKitException exp)
	{
		return new ModelAndView("error-page","errMsg",exp.getMessage());		
	}

}
