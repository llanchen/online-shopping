package com.seehope.service;

import com.seehope.dao.ProMapper;
import com.seehope.entity.Pro;
import com.seehope.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProService {
    SqlSession sqlSession= MyBatisUtil.getSession();
    ProMapper proMapper=sqlSession.getMapper(ProMapper.class);

    //多条件查询
    public List<Pro> findPros(Map<String,String> map){
        return proMapper.findPros(map);
    }

    //查询某类别的品牌
    public List findPname(int cid){
        return proMapper.findPname(cid);
    }

    //模糊查询某关键字的商品名称，并截取前20个字符
    public List findpSn(String pSn){
        List list1=proMapper.findpSn(pSn);
        List list2=new ArrayList();

        int num=0;
        for (Object obj:list1){
            String str=obj.toString();
            if (str.length()>20){
                str=str.substring(0,20);
            }

            list2.add(str);
            num++;
            if (num==10){
                break;
            }
        }
        return list2;

    }

    //根据商品id查询商品
    public Pro findId(int proid){
        return proMapper.findId(proid);
    }

}
