package com.example.graalvmdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello() {
        for(int i=0; i < 10; i++){

        }
        String response = "Hello from the Java HTTP Server!";
        return response;
    }
}