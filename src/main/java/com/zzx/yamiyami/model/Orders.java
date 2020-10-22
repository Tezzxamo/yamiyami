package com.zzx.yamiyami.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.omg.PortableInterceptor.INACTIVE;

import java.util.List;


@Setter
@Getter
@ToString
public class Orders {

    private Integer o_id;
    private Integer o_code;//订单编号
    private String o_status;//订单状态，0是未收到，1是已收到
    private Integer c_id;//顾客
    private String c_address;//顾客地址
    private Integer res_id ;
    private String res_name;



    public Orders() {
    }

}
