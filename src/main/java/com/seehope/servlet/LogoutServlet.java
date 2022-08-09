package com.seehope.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*session中移除user*/
        HttpSession session=request.getSession();
        session.removeAttribute("user");

        /*cookie中删除*/
        Cookie cookie_username=new Cookie("cookie_username","");
        cookie_username.setMaxAge(0);

        //创建存储密码的cookie
        Cookie cookie_password=new Cookie("cookie_password","");
        cookie_password.setMaxAge(0);

        response.addCookie(cookie_username);
        response.addCookie(cookie_password);
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
