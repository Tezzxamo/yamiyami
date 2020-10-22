package com.zzx.yamiyami.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;


@Setter
@Getter
@ToString
public class OrderItem {

    private Integer oi_id;
    private Integer m_id;
    private Integer o_id;
    private Integer c_id;
    private String oi_number;

    public OrderItem() {
    }


}
