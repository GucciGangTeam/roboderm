package org.example.com.webapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication
public class WebApiApplication extends SpringBootServletInitializer {
    public static void main(String[] args) {
        SpringApplication.run(WebApiApplication.class, args);
    }

}
