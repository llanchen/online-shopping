package com.seehope.dao;

import com.seehope.entity.Mso;
import com.seehope.entity.Msoxq;
import com.seehope.entity.Pro;

import java.util.List;
import java.util.Map;

public interface ProMapper {
    public List<Pro> findPros(Map<String, String> map);

    //根据条件动态查询商品品牌
    public List findPname(int cid); //查询某类别的品牌

    //模糊查询某个关键字的商品信息
    public List findpSn(String pSn);

    //根据商品编号查询商品信息
    public Pro findId(int proid);

    //修改商品库存数量（减少），销量（增加）
    public void updateProNum(Msoxq msoxq);



}
