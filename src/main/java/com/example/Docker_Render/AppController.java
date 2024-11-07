package com.example.Docker_Render;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController
{

    @GetMapping("/")
    public String index(Model model){
        return "index";
    }
}
