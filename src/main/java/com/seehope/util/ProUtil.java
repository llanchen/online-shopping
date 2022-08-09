package com.seehope.util;

import com.seehope.entity.Pro;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProUtil {
    public static Pro MapToPro(Map map){
        Pro pro=new Pro();
        if(map!=null){
            pro.setId(Integer.parseInt((String)map.get("id")));
            pro.setpImg((String) map.get("pImg"));
            pro.setCid(Integer.parseInt((String)map.get("cid")));
            pro.setiPrice(Double.parseDouble((String)map.get("iPrice")));
            pro.setmPrice(Double.parseDouble((String)map.get("mPrice")));
            pro.setIsHot(Integer.parseInt((String)map.get("isHot")));
            pro.setIsShow(Integer.parseInt((String)map.get("isShow")));
            pro.setpDesc((String) map.get("pDesc"));
            pro.setpName((String) map.get("pName"));
            pro.setpNum(Integer.parseInt((String)map.get("pNum")));
            pro.setpSn((String) map.get("pSn"));
            pro.setPubTime((String) map.get("pubTime"));
            pro.setXqImg((String) map.get("xqImg"));
        }
        return pro;
    }

    public static Map ProToMap(Pro pro){
        Map map=new HashMap();
        if(pro!=null){
            map.put("id",pro.getId()+"");
            map.put("pNum",pro.getpNum()+"");
            map.put("cid",pro.getCid()+"");
            map.put("iPrice",pro.getiPrice()+"");
            map.put("mPrice",pro.getmPrice()+"");
            map.put("isHot",pro.getIsHot()+"");
            map.put("isShow",pro.getIsShow()+"");
            map.put("pDesc",pro.getpDesc()+" ");
            map.put("pImg",pro.getpImg());
            map.put("pName",pro.getpName());
            map.put("pSn",pro.getpSn());
            map.put("pubTime",pro.getPubTime());
            map.put("xqImg",pro.getXqImg());
        }
        return map;
    }
}
