package com.zzx.yamiyami.controller;


import com.zzx.yamiyami.model.Restaurant;
import com.zzx.yamiyami.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("restaurant")
public class RestaurantController {

    @Autowired
    RestaurantService restaurantService;

    @RequestMapping("updateRestaurant")
    public String updatePerson(Restaurant restaurant){
        restaurantService.updateById(restaurant);
        return "/WEB-INF/ok2";
    }

    @RequestMapping("updatePassword")
    public String updatePassword(Restaurant restaurant){

        restaurantService.updatePassword(restaurant);
        return "/WEB-INF/ok2";
    }


    @RequestMapping("insert")
    public String insert(Restaurant restaurant){
        restaurantService.insert(restaurant);
        return "/WEB-INF/ok4";
    }
}
