package com.zzx.yamiyami.service;

import com.zzx.yamiyami.model.Restaurant;

public interface RestaurantService   {

    /**
     * 登录校验，并返回顾客的所有信息
     * @param res_telephone
     * @param res_password
     * @return
     */
    public Restaurant checkUserAndPassword(String res_telephone, String res_password);


    /**
     * 更新顾客信息
     * @param restaurant
     * @return
     */
    public int updateById(Restaurant restaurant);

    public int updatePassword(Restaurant restaurant);

    public int insert(Restaurant restaurant);
}
