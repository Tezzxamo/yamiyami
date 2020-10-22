package com.zzx.yamiyami.controller;

import com.zzx.yamiyami.model.Customer;
import com.zzx.yamiyami.model.Menu;
import com.zzx.yamiyami.model.Restaurant;
import com.zzx.yamiyami.service.CustomerService;
import com.zzx.yamiyami.service.MenuService;
import com.zzx.yamiyami.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping
public class LoginController {

    @Autowired
    CustomerService customerService;
    @Autowired
    RestaurantService restaurantService;
    @Autowired
    MenuService menuService;

    @RequestMapping("login")
    public String login(Customer customer, HttpServletRequest request){
        try{
            customer = customerService.checkUserAndPassword(customer.getC_name(),customer.getC_password());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = customer.getC_birthday();
            String birthday = simpleDateFormat.format(date);
            //customer.setC_birthday(simpleDateFormat.parse(birthday));
            //System.out.println(birthday);//1998-05-09
            if (customer.getC_id()!=null){
                //登录成功]
//                model.addAttribute("loginCustomer",customer);
//                model.addAttribute("error",null);
                request.getSession().setAttribute("birthday",birthday);
                request.getSession().setAttribute("loginCustomer",customer);
                request.setAttribute("error",null);
                return "/CustomerBackstage/c_index";
                /*CustomerBackstage/*/
            }
            else{
                //request.setAttribute("error","");
                request.setAttribute("error","登录失败，请重新登录！");
                return "LoginAndRegister/login";
            }
        }catch (Exception e){
            //request.setAttribute("error","");
            request.setAttribute("error","登录失败，请重新登录！");
            e.printStackTrace();
            return "LoginAndRegister/login";
        }
    }

    @RequestMapping(value="r_login")
    public String r_login(Restaurant restaurant, HttpServletRequest request){
        try{
            restaurant = restaurantService.checkUserAndPassword(restaurant.getRes_telephone(),restaurant.getRes_password());
            if (restaurant.getRes_id()!=null){//登录成功
                request.getSession().setAttribute("loginRestaurant",restaurant);
                request.setAttribute("error",null);
                List<Menu> menuList = menuService.findAllMenu();
                request.getSession().setAttribute("menuList",menuList);
                return "/RestaurantBackstage/r_index";
            }
            else{
                //request.setAttribute("error","");
                request.setAttribute("error","登录失败，请重新登录！");
                return "LoginAndRegister/login";
            }
        }catch (Exception e){
            //request.setAttribute("error","");
            request.setAttribute("error","登录失败，请重新登录！");
            e.printStackTrace();
            return "LoginAndRegister/login";
        }
    }




}
