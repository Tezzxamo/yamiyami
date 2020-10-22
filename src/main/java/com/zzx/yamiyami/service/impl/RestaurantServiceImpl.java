package com.zzx.yamiyami.service.impl;


import com.zzx.yamiyami.model.Restaurant;
import com.zzx.yamiyami.service.RestaurantService;
import com.zzx.yamiyami.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RestaurantServiceImpl extends BaseServiceImpl<Restaurant> implements RestaurantService {
    @Override
    public Restaurant checkUserAndPassword(String res_telephone, String res_password) {
        Restaurant restaurant = restaurantMapper.checkUserAndPassword(res_telephone,res_password);
        System.out.println(restaurant);
        return restaurant;
    }

    @Override
    public int updateById(Restaurant restaurant) {
        return restaurantMapper.updateById(restaurant);
    }

    @Override
    public int updatePassword(Restaurant restaurant) {
        return restaurantMapper.updatePassword(restaurant);
    }

    @Override
    public int insert(Restaurant restaurant) {
        return restaurantMapper.insert(restaurant);
    }
}
