package com.zzx.yamiyami.service.impl;


import com.zzx.yamiyami.model.Customer;
import com.zzx.yamiyami.model.Menu;
import com.zzx.yamiyami.service.MenuService;
import com.zzx.yamiyami.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MenuServiceImpl extends BaseServiceImpl<Customer> implements MenuService {


    @Override
    public List<Menu> findAllMenu() {
        /*Menu menu = new Menu();
        menu.getM_price();*/
        List<Menu> menuList = menuMapper.findAllMenu();
        return menuList;
    }

    @Override
    public List<Menu> findAllMenuByCategoryId(Integer category_id) {
        List<Menu> menuList = menuMapper.findAllMenuByCategoryId(category_id);
        return menuList;
    }
}
