package com.docker.java; 

import org.springframework.boot.SpringApplication; 
import org.springframework.boot.autoconfigure.SpringBootApplication; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RestController; 

@SpringBootApplication
@RestController
public class JavaApplication { 

	@RequestMapping("/") 
	public String home() { 
		return "Dockerizing Spring Boot Application"; 
		// return "/"; 
	} 

	public static void main(String[] args) { 
		SpringApplication.run(JavaApplication.class, args); 
	} 

}
