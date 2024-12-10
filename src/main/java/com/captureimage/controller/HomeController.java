package com.captureimage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "index"; // Refers to index.jsp
    }

    @GetMapping("/home")
    public String getWeighBridgePage(){
        return "weighBridge";
    }
}
