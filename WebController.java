package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {

    @GetMapping("/")
    public String home() {
        return "user/login";
    }

    @GetMapping("/login")
    public String login() {
        return "user/login";
    }

    @GetMapping("/register")
    public String signup() {
        return "user/signup";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "user/dashboard";
    }
}
