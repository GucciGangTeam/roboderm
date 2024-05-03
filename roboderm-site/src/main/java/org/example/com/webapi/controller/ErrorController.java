package org.example.com.webapi.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/error")
public class ErrorController {
    @RequestMapping("/show")
    public String showErrorPage(){ return "error";}
}
