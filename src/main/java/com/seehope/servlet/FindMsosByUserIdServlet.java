package com.seehope.servlet;

import com.seehope.entity.Mso;
import com.seehope.entity.User;
import com.seehope.service.MsoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

//通过用户id查看该用户的所有订单
@WebServlet("/findMsosByUserId")
public class FindMsosByUserIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        User user= (User) session.getAttribute("user");

        if (user==null){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return;
        }

        MsoService msoService=new MsoService();
        List<Mso> orderList=msoService.findMsosByUserId(user.getId());
        session.removeAttribute("mso");
        session.removeAttribute("amount");
        request.setAttribute("orderList",orderList);
        request.getRequestDispatcher("mso_list.jsp").forward(request,response);
    }
}
