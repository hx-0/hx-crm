package com.hx.hxcrm2;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.hx.hxcrm2.mapper")
public class HxCrm2Application {

    public static void main(String[] args) {
        SpringApplication.run(HxCrm2Application.class, args);
    }

}
