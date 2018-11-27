package com.spring.contrallor;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class Hellocontroller {
@RequestMapping("/Hellocontroller")
public String hi( ) {
	System.out.println("hello");
	return "index";
}
	

}
