package com.seehope.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(dispatcherTypes = {DispatcherType.REQUEST,DispatcherType.FORWARD},urlPatterns = {"/","/index.jsp",
"/cart.jsp","/shopping","/proDetail"})
public class LoginPathFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request=(HttpServletRequest)req;
        HttpServletResponse response=(HttpServletResponse)resp;

        String path=request.getRequestURI();  //获得路径

        if (path.equals("/shopping/shopping")){
            //如果请求路径是商品列表，还要考虑参数
            int pageno=1;  //默认页数
            String changeIndex=req.getParameter("pi");
            if (changeIndex!=null){
                //符合条件就把相应的页数赋给index
                pageno=Integer.parseInt(changeIndex);
            }

            String cid=request.getParameter("cid");
            String pName=request.getParameter("pName");
            String pSn=request.getParameter("pSn");
            String minPrice=request.getParameter("minPrice");
            String maxPrice=request.getParameter("maxPrice");

            //原来从哪里登录返回哪里
            path +="?pi="+pageno+"&cid="+cid;
            if (pName!=null){
                path+="&pName="+pName;
            }
            if (pSn!=null){
                path+="&pSn="+pSn;
            }
            if (minPrice!=null){
                path+="&minPrice="+minPrice;
            }
            if (maxPrice!=null){
                path+="&maxPrice="+maxPrice;
            }
        }

        if (path.equals("/shopping/proDetail")){
            //访问路径为商品详情，同样要考虑参数
            String proid=request.getParameter("proid");
            //原来从哪里登录返回哪里
            path+="?proid="+proid;

        }

        //将请求路径，即登录前的路径保存起来
        request.getSession().setAttribute("path",path);
        System.out.println(path);  //测试用
        System.out.println("session(path):"+(String)request.getSession().getAttribute("path"));


        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
