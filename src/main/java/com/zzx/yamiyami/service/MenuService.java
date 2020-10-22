package com.zzx.yamiyami.service;

import com.zzx.yamiyami.model.Menu;

import java.util.List;

public interface MenuService {

    public List<Menu> findAllMenu();

    public List<Menu> findAllMenuByCategoryId(Integer category_id);
}
