package com.seehope.servlet;

import com.seehope.entity.User;
import com.seehope.service.UserService;
import com.seehope.util.Md5Utils;
import sun.security.provider.MD5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isRedirect = true;
        HttpSession session = request.getSession();

        //获得输入的用户名和密码
        Md5Utils md5 = new Md5Utils();
        String username = request.getParameter("username");
        String password = Md5Utils.getMD5(request.getParameter("password"));

        //将用户名和密码传递给service层
        String validCode = request.getParameter("validCode");
        String vcode = (String) session.getAttribute("vcode");

        if (!validCode.equals(vcode)) {
            response.getWriter().write("{\"vcode\":" + false + "}");
            return;
        }

        UserService service=new UserService();
        User user=null;
        user = service.login(username,password);

        //判断用户是否登录成功，user是否是null
        if(user!=null){
            //将user对象存到session中
            session.setAttribute("user",user);

            //原来从哪来登录返回哪里
            String path=(String) session.getAttribute("path");

            if (path==null){
                path="index.jsp";
            }

            System.out.println("{\"isRedirect\":"+isRedirect+",\"path\":\""+path+"\"}");
            response.getWriter().write("{\"isRedirect\":"+isRedirect+",\"path\":\""+path+"\"}");
        }

    }
}
