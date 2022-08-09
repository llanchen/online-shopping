package com.seehope.servlet;

import com.seehope.entity.User;
import com.seehope.service.UserService;
import com.seehope.util.Md5Utils;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    public RegisterServlet(){
        super();
    }

    public void destroy() {
        super.destroy();
    }






    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("测试注册");
        request.setCharacterEncoding("UTF-8");

        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String telephone=request.getParameter("telephone");
        String number=request.getParameter("number");
        String number1=(String)request.getSession().getAttribute("num");

        if (number1==null){
            request.setAttribute("msg","验证码超时！");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }

        //判断验证码是否正确
        if (!number1.equals(number)){
            request.setAttribute("msg","验证码错误！");
            request.getRequestDispatcher("register.jsp").forward(request,response);
            return;
        }

        //数据回调
        request.setAttribute("username",username);
        request.setAttribute("password",password);
        request.setAttribute("telephone",telephone);

        User user=new User();
        user.setUsername(username);
        user.setPassword(Md5Utils.getMD5(password));
        user.setTelephone(telephone);

        //将User传递给service层
        UserService service=new UserService();

        //调用工具类，发送
        boolean isRegisterSuccess=service.addUser(user);

        if (isRegisterSuccess){
            request.getRequestDispatcher("go.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }
}
