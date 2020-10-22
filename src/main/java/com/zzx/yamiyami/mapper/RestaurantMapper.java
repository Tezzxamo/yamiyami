package com.zzx.yamiyami.mapper;

import com.zzx.yamiyami.mapper.base.BaseMapper;
import com.zzx.yamiyami.model.Restaurant;
import org.apache.ibatis.annotations.Param;

public interface RestaurantMapper extends BaseMapper<Restaurant> {
    @Override
    Restaurant findById(Integer r_id);


    /**
     * 检验登录状态
     * @param res_telephone
     * @param res_password
     * @return
     *
     * 修改前：无@Param，错误
     * 修改后：增加@Param，正确
     */
    public Restaurant checkUserAndPassword(@Param("res_telephone") String res_telephone, @Param("res_password") String res_password);

//    @Override
//    Restaurant findAllOrders(Integer r_id);

    public int updatePassword(Restaurant restaurant);

}
