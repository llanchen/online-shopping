package com.seehope.servlet;

import com.seehope.service.MsoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delMso")
public class DelMsoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msoid=request.getParameter("msoid");
        MsoService msoService=new MsoService();
        msoService.delMso(msoid);
        response.getWriter().print(1);
    }
}
