package com.seehope.servlet;

import com.seehope.entity.Pro;
import com.seehope.entity.User;
import com.seehope.service.ProService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/orderCart")
public class OrderCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");

        if (user==null){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return;
        }

        String ides=request.getParameter("ids");  //1,3,5
        System.out.println(ides);
        String[] ids=ides.split(",");  //{1,3,5}
        ProService ps=new ProService();

        //将购物车的内容，筛选出选中的部分，比如购物车有这些编号的商品：1,2,3,4,5
        //但只勾选择了这三项1,3,5
        Map<Pro,Integer> cart= (Map<Pro, Integer>) session.getAttribute("cart"); //1,2,3,4,5全部购物车的商品
        Map<Pro,Integer> orderCart=new HashMap<>(); //可能只有1,3,5等商品，相当于购物车的子集
        if (cart!=null){
            for (String id:ids){
                Pro p=ps.findId(Integer.parseInt(id));
                orderCart.put(p,cart.get(p));
            }
        }

        session.setAttribute("orderCart",orderCart);
        double amount=Double.parseDouble(request.getParameter("amount")); //订单金额
        session.setAttribute("amount",amount);
        response.sendRedirect("mso_info.jsp");  //跳转到订单页面
    }
}
