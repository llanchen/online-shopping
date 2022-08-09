package com.seehope.servlet;

import com.seehope.entity.Pro;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet("/updateCart")
public class UpdateCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("proid");
        int proid = Integer.parseInt(id);
        int quantity=Integer.parseInt(request.getParameter("quantity"));

        //只能重写id的hashcode
        Pro p=new Pro();
        p.setId(proid);

        HttpSession session=request.getSession();
        Map<Pro,Integer> cart=(Map<Pro,Integer>) session.getAttribute("cart");

        //如果商品数据为0，就删除对象
        if (quantity==0){
            cart.remove(p);
        }

        //判断如果找到与id相同的商品
        if (cart.containsKey(p)){
            cart.put(p,quantity);  //更新数量
        }

        //把cart对象放回到session作用域中，更新数据
        session.setAttribute("cart",cart);
    }
}
