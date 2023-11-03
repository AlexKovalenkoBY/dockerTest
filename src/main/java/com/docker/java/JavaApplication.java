package com.docker.java; 

import org.springframework.boot.SpringApplication; 
import org.springframework.boot.autoconfigure.SpringBootApplication; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RestController; 
import java.util.Date;
@SpringBootApplication
@RestController
public class JavaApplication { 

	@RequestMapping("/") 
	public String home() {
		String res =  "Dockerizing Spring Boot Application " + new Date().toString();
		return res;
	
	} 

	public static void main(String[] args) { 
		SpringApplication.run(JavaApplication.class, args); 
	} 

}
