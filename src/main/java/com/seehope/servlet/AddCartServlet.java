package com.seehope.servlet;

import com.seehope.entity.Pro;
import com.seehope.service.ProService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/addCart")
public class AddCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        String id=request.getParameter("proid");  //421  ,423
        int proid=Integer.parseInt(id);  //421,423
        ProService ps=new ProService();
        Pro p=ps.findId(proid);  //鲜橙粉，阿萨姆奶茶

        if (p.getpNum()==0){  //没有库存了
            out.print("false");
            return;
        }

        //这是使用session实现购物车，从session中的购物车取出来
        HttpSession session=request.getSession();

        //hashMap的键用于存储Pro对象，值用于存储商品的购买数量
        //注意Pro实体类重写hashCode和equals方法（只选择id属性）
        Map<Pro,Integer> cart=(Map<Pro,Integer>) session.getAttribute("cart");  //null，有

        int num=1;

        //如何使第一次访问，没有购物车hashMap对象，我们就创建一个购物车对象
        if (cart==null){
            cart = new HashMap<Pro,Integer>();  //新建了一个hashMap
        }

        //查看当前集合中是否存在编号为id的商品，如果有就把值取出来加1
        if (cart.containsKey(p)){
            if (cart.get(p)==p.getpNum()){
                //原购物车中的数据已经等于库存了，不能再添加了
                out.print("false");
                return;
            }
            num=cart.get(p)+1;  //num=1+1=2
        }

        //把商品放入购物车
        cart.put(p,num); //（鲜橙粉，1）存入cart这个haspMap，（阿萨姆奶茶，1）存入cart这个haspMap，（阿萨姆奶茶，2）存入cart这个haspMap

        //把cart对象放回到session作用域中，更新数据
        session.setAttribute("cart",cart);  //把cart这个hashMap,存入session对象
        out.print("true");





    }
}
