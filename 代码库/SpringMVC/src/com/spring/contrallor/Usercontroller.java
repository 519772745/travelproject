package com.spring.contrallor;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.entity.User;

@Controller
@RequestMapping("/usercontroller")
public class Usercontroller {

public void login( String name,  String password) {
	User user=new User();
	user.setName(name);
	user.setPassword(password);
	System.out.println(name+"     ------   "+password);
}

}
