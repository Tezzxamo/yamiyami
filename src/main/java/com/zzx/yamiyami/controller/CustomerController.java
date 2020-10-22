package com.zzx.yamiyami.controller;

import com.zzx.yamiyami.model.Customer;
import com.zzx.yamiyami.model.Orders;
import com.zzx.yamiyami.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;


//    @RequestMapping("login")
//    public String login(){
//        System.out.println("..login..");
//        return "LoginAndRegister/login";
//    }

    @RequestMapping("find")
    public String find(Integer c_id){
        System.out.println("..find..");
        Customer customer = customerService.findById(c_id);
        System.out.println(customer);
        return null;
    }

    @RequestMapping("enableStatus")
    public String enableStatus(Integer c_id){
        System.out.println("enableStatus");
        customerService.enableStatus(c_id);
        System.out.println(customerService.findById(c_id).getC_vip());
        return null;
    }

    @RequestMapping("delete")
    public String delete(Integer c_id){
        System.out.println("delete");
        customerService.deleteById(c_id);
        System.out.println(customerService.findById(c_id));
        return null;
    }

    /**
     * 实际上是update密码
     * @param customer
     * @return
     */
    @RequestMapping("update")
    public String update(Customer customer){
        Customer customer1 = customerService.findById(customer.getC_id());
        customer1.setC_password(customer.getC_password());
        customerService.updateById(customer1);
        return "/WEB-INF/ok";
    }


    @RequestMapping("updatePerson")
    public String updatePerson(Customer customer){
        customerService.updateById(customer);
        return "/WEB-INF/ok";
    }

    @RequestMapping("findAllOrders")
    public String findAllOrders(HttpServletRequest request){
        Customer customer = (Customer)request.getSession().getAttribute("loginCustomer");
        List<Orders> ordersList = customerService.findAllOrders(customer.getC_id());
        request.getSession().setAttribute("ordersList",ordersList);
        System.out.println(ordersList);
        return "/CustomerBackstage/c_table";
    }

    @RequestMapping("insert")
    public String insert(Customer customer){
        System.out.println("insert");
        customerService.insert(customer);
        System.out.println(customerService.findById(customer.getC_id()));
        return "/WEB-INF/ok3";
    }

    @RequestMapping("findAllCustomers")
    public String findAllCustomers(HttpServletRequest request){
        List<Customer> customerList = customerService.findAllCustomers();
        request.getSession().setAttribute("customerList",customerList);
        System.out.println(customerList.get(0));
        System.out.println(customerList.get(1));
        return "/qweqwe";
    }

}
