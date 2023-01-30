package com.jspmvc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = {"com.jspmvc"})
public class JspMvcApplication {

    public static void main(String[] args) {
        SpringApplication.run(JspMvcApplication.class, args);
    }


}
