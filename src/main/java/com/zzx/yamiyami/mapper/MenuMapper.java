package com.zzx.yamiyami.mapper;

import com.zzx.yamiyami.model.Menu;

import java.util.List;

public interface MenuMapper {


    public List<Menu> findAllMenu();

    public List<Menu> findAllMenuByCategoryId(Integer category_id);
}
