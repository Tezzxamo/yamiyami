package com.zzx.yamiyami.model;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Category {

    private Integer category_id;//种类id
    private String category_name;//种类名称

    public Category() {
    }
}
