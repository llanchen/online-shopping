package com.seehope.servlet;

import com.seehope.entity.Mso;
import com.seehope.service.MsoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//查看订单详情
@WebServlet("/getMsoxq")
public class GetMsoxqServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msoid=request.getParameter("msoid");
        MsoService msoService=new MsoService();
        Mso mso=msoService.findMsoByMsoid(msoid);
        request.setAttribute("mso",mso);
        request.getRequestDispatcher("mso_detail.jsp").forward(request,response);
    }
}
