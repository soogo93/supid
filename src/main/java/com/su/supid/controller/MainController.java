package com.su.supid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/")
public class MainController {

    public static final Logger logger = LoggerFactory.getLogger(MainController.class);

    @GetMapping("")
    public ModelAndView loginPage() {
        return new ModelAndView("main");
    }

    @GetMapping("/main")
    public ModelAndView mainPage() {
        return new ModelAndView("main");
    }

}
