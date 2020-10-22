package com.zzx.yamiyami.mapper;

import com.zzx.yamiyami.mapper.base.BaseMapper;
import com.zzx.yamiyami.model.Customer;
import com.zzx.yamiyami.model.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomerMapper extends BaseMapper<Customer> {


    /**
     * 通过id查询该id的全部数据
     * @param c_name
     * @return
     */
    public Customer findByName(String c_name);

    /**
     * 开启用户会员状态
     * @param id
     */
    void enableStatus(int id);

    /**
     * 检验登录状态
     * @param c_name
     * @param c_password
     * @return
     *
     * 修改前：无@Param，错误
     * 修改后：增加@Param，正确
     */
    public Customer checkUserAndPassword(@Param("c_name") String c_name,@Param("c_password") String c_password);


    /**
     * 通过id查询该用户所有的订单
     * @param c_id
     * @return
     */
    public List<Orders> findAllOrders(@Param("c_id")Integer c_id);


    public List<Customer> findAllCustomers();

}
