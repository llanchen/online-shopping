package com.seehope.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Mso {
    private String msoid;  //订单号码
    private String msoname; //订单人姓名
    private String telephone; //订单人电话
    private String address;  //收获地址
    private Date msoTime;  //订单时间
    private String paystate;  //付款状态
    private double msomoney;  //订单金额
    private int userid;  //用户编号
    private String deliveryState;  //发货（物流）状态

    //订单中的订单明细项
    private List<Msoxq> msoxqs=new ArrayList<>();
    public List<Msoxq> getMsoxqs(){return msoxqs;}


    public String getMsoid() {
        return msoid;
    }

    public void setMsoid(String msoid) {
        this.msoid = msoid;
    }

    public String getMsoname() {
        return msoname;
    }

    public void setMsoname(String msoname) {
        this.msoname = msoname;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getMsoTime() {
        return msoTime;
    }

    public void setMsoTime(Date msoTime) {
        this.msoTime = msoTime;
    }

    public String getPaystate() {
        return paystate;
    }

    public void setPaystate(String paystate) {
        this.paystate = paystate;
    }

    public double getMsomoney() {
        return msomoney;
    }

    public void setMsomoney(double msomoney) {
        this.msomoney = msomoney;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getDeliveryState() {
        return deliveryState;
    }

    public void setDeliveryState(String deliveryState) {
        this.deliveryState = deliveryState;
    }

    public void setMsoxqs(List<Msoxq> msoxqs) {
        this.msoxqs = msoxqs;
    }
}
