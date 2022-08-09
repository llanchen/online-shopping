package com.seehope.servlet;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.seehope.entity.Pro;
import com.seehope.service.ProService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/shopping")
public class ShoppingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageno=1; //默认页数
        int pageSize=0;  //每页显示的信息数
        String changeIndex=request.getParameter("pi");//pi就是pageNum

        if(changeIndex!=null){
            //符合条件就把相应的页数赋给index
            pageno=Integer.parseInt(changeIndex);
        }

        String cid=request.getParameter("cid");
        String pName=request.getParameter("pName");
        String pSn=request.getParameter("pSn");
        String minPrice=request.getParameter("minPrice");
        String maxPrice=request.getParameter("maxPrice");
        Map<String,String> map=new HashMap<>();
        map.put("cid",cid);
        map.put("pName",pName);
        map.put("pSn",pSn);
        map.put("minPrice",minPrice);
        map.put("maxPrice",maxPrice);

        ProService proService=new ProService();
        PageHelper.startPage(pageno,pageSize);
        List<Pro> proList=proService.findPros(map);
        PageInfo<Pro> pageInfo=new PageInfo(proList);

        //存储查询条件
        request.setAttribute("cid",cid);
        request.setAttribute("pName",pName);
        request.setAttribute("pSn",pSn);
        request.setAttribute("minPrice",minPrice);
        request.setAttribute("maxPrice",maxPrice);
        request.setAttribute("page",pageInfo);

        if (cid!=null&&!"".equals(cid)){
            List<String> pList=proService.findPname(Integer.parseInt(cid));
            request.setAttribute("pList",pList);  //存储分页信息
        }

        request.getRequestDispatcher("/shopping.jsp").forward(request,response);











    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
