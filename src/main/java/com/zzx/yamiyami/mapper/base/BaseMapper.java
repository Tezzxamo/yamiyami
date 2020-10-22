package com.zzx.yamiyami.mapper.base;

public interface BaseMapper<T> {

    /**
     * 通过id查询该id的全部数据
     * @param id
     * @return
     */
    public T findById(Integer id);
    //public T findAllOrders(Integer id);

    /**
     * 通过id删除该id的全部数据
     * @param id
     * @return
     */
    public void deleteById(Integer id);

    /**
     * 通过id修改非空数据
     * @param entity
     * @return
     */
    public int updateById(T entity);

    /**
     * 插入数据
     * @param entity
     * @return
     */
    public int insert(T entity);
}
