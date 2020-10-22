package com.zzx.yamiyami.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;


@ToString
@Setter
@Getter
public class Customer {

    private Integer c_id;
    private String c_sex;
    private String c_telephone;
    private String c_address;
    private String c_name;
    private String c_password;
    private Integer c_vip;//0是非vip，1是vip
    private Integer c_age;
    //前后端日期传值问题
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date c_birthday;

    private List<Orders> ordersList;


    public Customer() {
    }

}
