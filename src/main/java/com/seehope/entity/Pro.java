package com.seehope.entity;

import java.util.Objects;

public class Pro {
    private int id;  //商品编号
    private String pName; //品牌名称
    private String pSn;  //商品名称
    private int pNum;  //商品数量
    private double mPrice; //市场价格
    private double iPrice;  //优惠价格
    private String pDesc;  //商品简介
    private String pubTime; //商品上架时间
    private int isShow;  //商品是否上架
    private int isHot;  //商品销量
    private int cid;  //商品类型ID
    private String xqImg; //商品详细图片
    private String pImg;

    public Pro() {
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Pro other = (Pro) obj;
        if (id != other.id)
            return false;
        return true;

    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + id;
        return result;
    }

    @Override
    public String toString() {
        return "Pro{" +
                "id=" + id +
                ", pName='" + pName + '\'' +
                ", pSn='" + pSn + '\'' +
                ", pNum=" + pNum +
                ", mPrice=" + mPrice +
                ", iPrice=" + iPrice +
                ", pDesc='" + pDesc + '\'' +
                ", pubTime='" + pubTime + '\'' +
                ", isShow=" + isShow +
                ", isHot=" + isHot +
                ", cid=" + cid +
                ", xqImg='" + xqImg + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpSn() {
        return pSn;
    }

    public void setpSn(String pSn) {
        this.pSn = pSn;
    }

    public int getpNum() {
        return pNum;
    }

    public void setpNum(int pNum) {
        this.pNum = pNum;
    }

    public double getmPrice() {
        return mPrice;
    }

    public void setmPrice(double mPrice) {
        this.mPrice = mPrice;
    }

    public double getiPrice() {
        return iPrice;
    }

    public void setiPrice(double iPrice) {
        this.iPrice = iPrice;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public String getPubTime() {
        return pubTime;
    }

    public void setPubTime(String pubTime) {
        this.pubTime = pubTime;
    }

    public int getIsShow() {
        return isShow;
    }

    public void setIsShow(int isShow) {
        this.isShow = isShow;
    }

    public int getIsHot() {
        return isHot;
    }

    public void setIsHot(int isHot) {
        this.isHot = isHot;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getXqImg() {
        return xqImg;
    }

    public void setXqImg(String xqImg) {
        this.xqImg = xqImg;
    }

    public String getpImg() {
        return pImg;
    }

    public void setpImg(String pImg) {
        this.pImg = pImg;
    }
}
