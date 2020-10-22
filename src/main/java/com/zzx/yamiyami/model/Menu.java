package com.zzx.yamiyami.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;

@ToString
@Setter
@Getter
public class Menu {

    private Integer m_id;
    private Restaurant restaurant;
    private String m_name;//菜名
    private Double m_price;//价格
    private String m_img;//img的url
    private String m_describe;
    private Integer category_id;

    public Menu() {
    }

}
