package com.seehope.dao;

import com.seehope.entity.Mso;
import com.seehope.entity.Msoxq;

import java.util.List;

public interface MsoMapper {

    //向mso表插入数据
    public int addMso(Mso mso);

    //向msoxq表插入数据
    public int addMsoxq(Msoxq xq);

    //根据用户编号查询所有订单（不含明细）
    public List<Mso> findMsosByUserId(int userid);

    //查询指定编号的订单信息（含订单明细）
    public Mso findMsoByMsoid(String msoid);
    public void delMso(String msoid);
    public void delMsoxq(String msoid);

    public int updateMsoPayState(String msoid);

    //修改订单的发货状态
    public void updateMsoDeliveryState(String msoid);
}
