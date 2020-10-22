package com.zzx.yamiyami.service.impl;


import com.zzx.yamiyami.model.Customer;
import com.zzx.yamiyami.model.Orders;
import com.zzx.yamiyami.service.CustomerService;
import com.zzx.yamiyami.service.base.BaseServiceImpl;
import com.zzx.yamiyami.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl extends BaseServiceImpl<Customer> implements CustomerService {

    HttpServletRequest request;
    @Override
    public List<Orders> findAllOrders(Integer   c_id ) {
        return customerMapper.findAllOrders(c_id);
    }

    @Override
    public Customer findByName(String c_name) {
        return customerMapper.findByName(c_name);
    }

    @Override
    public Customer checkUserAndPassword(String c_name, String c_password) {
        Customer customer = customerMapper.checkUserAndPassword(c_name,c_password);
        System.out.println(customer);
        return customer;
    }

    @Override
    public Customer findById(Integer c_id) {
        return customerMapper.findById(c_id);
    }

    /*设置用户为会员*/
    @Override
    public void enableStatus(Integer c_id) {
        customerMapper.enableStatus(c_id);
    }

    @Override
    public void deleteById(Integer c_id) {
        customerMapper.deleteById(c_id);
    }

    @Override
    public int updateById(Customer customer) {
        //通过生日自动修改age
        Util util = new Util();
        Integer age = util.getAgeByBirth(customer.getC_birthday());
        customer.setC_age(age);
        return customerMapper.updateById(customer);
    }

    /*新增顾客*/
    @Override
    public int insert(Customer customer) {
        return customerMapper.insert(customer);
    }

    @Override
    public List<Customer> findAllCustomers() {
        return customerMapper.findAllCustomers();
    }
}
