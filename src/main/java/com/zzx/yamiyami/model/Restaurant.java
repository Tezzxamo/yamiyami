package com.zzx.yamiyami.model;


import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
public class Restaurant {

    private Integer res_id;
    private String res_name;
    private String res_password;
    private String res_address;
    private String res_telephone;
    private Integer res_status;//开关店标志
    private Double res_grade;//店铺评分
    private Double res_income;//总收入


    public Restaurant() {
    }


}
