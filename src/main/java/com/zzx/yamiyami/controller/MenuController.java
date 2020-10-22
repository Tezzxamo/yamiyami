package com.zzx.yamiyami.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzx.yamiyami.model.Menu;
import com.zzx.yamiyami.service.MenuService;
import com.zzx.yamiyami.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author zzx
 */
@Controller
@RequestMapping("Menu")
public class MenuController {

    @Autowired
    MenuService menuService;


    @RequestMapping(value = "findAllMenu")
    public String findAllMenu(HttpServletRequest request){
        List<Menu> menuList = menuService.findAllMenu();
        request.getSession().setAttribute("menuList",menuList);
        System.out.println(menuList.get(0));
        System.out.println(menuList.get(41));
        return "/RestaurantBackstage/r_table";
    }


    @RequestMapping(value = "chinese")
    public String chinese(Model model, Page page){
        PageHelper.offsetPage(page.getStart(), page.getCount());
        List<Menu> menuList = menuService.findAllMenuByCategoryId(4);
        int total = (int) new PageInfo<>(menuList).getTotal();
        page.setTotal(total);
        model.addAttribute("menuList", menuList);
        model.addAttribute("page", page);
        return "order/dish";
    }

    @RequestMapping(value = "western")
    public String western(Model model, Page page){
        PageHelper.offsetPage(page.getStart(), page.getCount());
        List<Menu> menuList = menuService.findAllMenuByCategoryId(5);
        int total = (int) new PageInfo<>(menuList).getTotal();
        page.setTotal(total);
        model.addAttribute("menuList", menuList);
        model.addAttribute("page", page);
        return "/order/western-food";
    }

    @RequestMapping(value = "drink")
    public String drink(Model model, Page page){
        PageHelper.offsetPage(page.getStart(), page.getCount());
        List<Menu> menuList = menuService.findAllMenuByCategoryId(1);
        int total = (int) new PageInfo<>(menuList).getTotal();
        page.setTotal(total);
        model.addAttribute("menuList", menuList);
        model.addAttribute("page", page);
        return "/order/drink";
    }

    @RequestMapping(value = "dessert")
    public String dessert(Model model, Page page){
        PageHelper.offsetPage(page.getStart(), page.getCount());
        List<Menu> menuList = menuService.findAllMenuByCategoryId(2);
        int total = (int) new PageInfo<>(menuList).getTotal();
        page.setTotal(total);
        model.addAttribute("menuList", menuList);
        model.addAttribute("page", page);
        return "/order/dessert";
    }

    @RequestMapping(value = "seafood")
    public String seafood(Model model, Page page){
        PageHelper.offsetPage(page.getStart(), page.getCount());
        List<Menu> menuList = menuService.findAllMenuByCategoryId(6);
        int total = (int) new PageInfo<>(menuList).getTotal();
        page.setTotal(total);
        model.addAttribute("menuList", menuList);
        model.addAttribute("page", page);
        return "/order/seafood";
    }

    @RequestMapping(value = "food")
    public String food(Model model, Page page){
        PageHelper.offsetPage(page.getStart(), page.getCount());
        List<Menu> menuList = menuService.findAllMenuByCategoryId(3);
        int total = (int) new PageInfo<>(menuList).getTotal();
        page.setTotal(total);
        model.addAttribute("menuList", menuList);
        model.addAttribute("page", page);
        return "/order/food";
    }
}
