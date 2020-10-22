package com.zzx.yamiyami.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("first")
public class FirstPageController {

    /**
     * 以下四个用于项目启动后的首界面
     * 以及
     * 相互之间的切换
     **/


    @RequestMapping("login")
    public String login(){
        System.out.println("..login..");
        return "LoginAndRegister/login";
    }

    @RequestMapping("register")
    public String register(){
        System.out.println("..register..");
        return "LoginAndRegister/register";
    }

    @RequestMapping("r_login")
    public String r_login(){
        System.out.println("..r_login..");
        return "LoginAndRegister/r_login";
    }

    @RequestMapping("r_register")
    public String r_register(){
        System.out.println("..r_register..");
        return "LoginAndRegister/r_register";
    }

    @RequestMapping("aa")
    public String aa(){
        System.out.println("..管理员登录界面..");
        return null;
    }




}
