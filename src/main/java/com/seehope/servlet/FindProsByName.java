package com.seehope.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.seehope.service.ProService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/findProNames")
public class FindProsByName extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String proname=request.getParameter("proname");
        ProService proService=new ProService();
        List proList=proService.findpSn(proname);
        response.setContentType("application/json;charset=UTF-8");

        ObjectMapper objectMapper = new ObjectMapper();
        String json=objectMapper.writeValueAsString(proList);

        /*Gson gson=new Gson();
        String json=gson.toJson(proList);
        */

        System.out.println(json);
        response.getWriter().print(json);
    }
}
