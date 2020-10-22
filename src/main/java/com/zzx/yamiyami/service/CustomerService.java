package com.zzx.yamiyami.service;

import com.zzx.yamiyami.model.Customer;
import com.zzx.yamiyami.model.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomerService {

    /**
     * 查询该用户的所有订单
     * @return
     */
    public List<Orders> findAllOrders(Integer c_id);
    /**
     * 查询是否存在该用户
     * 查询该用户的密码
     * @param c_name
     * @return
     */
    public Customer findByName(String c_name);
    /**
     * 登录校验，并返回顾客的所有信息
     * @param c_name
     * @param c_password
     * @return
     */
    public Customer checkUserAndPassword(String c_name,String c_password);
    /**
     * 查询顾客信息
     * @param c_id
     * @return
     */
    public Customer findById(Integer c_id);
    /**
     * 设置顾客为会员
     * @param c_id
     */
    public void enableStatus(Integer c_id);
    /**
     * 删除顾客
     * @param c_id
     */
    public void deleteById(Integer c_id);
    /**
     * 更新顾客信息
     * @param customer
     * @return
     */
    public int updateById(Customer customer);

    /**
     * 插入新的顾客
     * @param customer
     * @return
     */
    public int insert(Customer customer);


    public List<Customer> findAllCustomers();

}
