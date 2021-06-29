package com.ben.springdemo.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class WebCustomerAspect {
	
//	set up logger
	private Logger logger = Logger.getLogger(getClass().getName()); 
	
	@Pointcut("execution(* com.ben.springdemo.controller.*.*(..))")
	private void forControllerPackage() {
		
	}
	
	@Pointcut("execution(* com.ben.springdemo.service.*.*(..))")
	private void forServicePackage() {
		
	}
	
	@Pointcut("execution(* com.ben.springdemo.dao.*.*(..))")
	private void forDAOPackage() {
		
	}
	
	@Pointcut("forControllerPackage() || forServicePackage() || forDAOPackage()")
	private void forAppFlow() {
		
	}
	

	@Before("forAppFlow()")
	public void beforeAppFlow(JoinPoint joinPoint) {
		String method = joinPoint.getSignature().toShortString();
		logger.info(method);
		Object[] args = joinPoint.getArgs();
		for(Object eachArg: args) {
			logger.info("" + eachArg);
		}
	}
	
	@AfterReturning(pointcut="forAppFlow()", returning="result")
	public void afterAppFlow(JoinPoint joinPoint, Object result) {
		String method = joinPoint.getSignature().toShortString();
		logger.info("Exiting the method " + method);
		logger.info("Return object is " + result);
	}
	
//	add @AfterReturning advice
}
