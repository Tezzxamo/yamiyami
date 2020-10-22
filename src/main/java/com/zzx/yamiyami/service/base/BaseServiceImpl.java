package com.zzx.yamiyami.service.base;

import com.zzx.yamiyami.mapper.CustomerMapper;
import com.zzx.yamiyami.mapper.MenuMapper;
import com.zzx.yamiyami.mapper.RestaurantMapper;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class BaseServiceImpl<T> {

    @Autowired
    protected CustomerMapper customerMapper;

    @Autowired
    protected MenuMapper menuMapper;

    @Autowired
    protected RestaurantMapper restaurantMapper;
}
