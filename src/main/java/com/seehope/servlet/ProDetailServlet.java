package com.seehope.servlet;

import com.seehope.entity.Comment;
import com.seehope.entity.Pro;
import com.seehope.service.CommentService;
import com.seehope.service.ProService;
import com.seehope.util.JedisPoolUtil;
import com.seehope.util.ProUtil;
import redis.clients.jedis.Jedis;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@WebServlet("/proDetail")
public class ProDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获得商品id
        String proid = request.getParameter("proid");

        //原来从哪里登录返回哪里
        /*String path=request.getRequestURI()+"?proid="+proid;
        System.out.println(path);
        request.getSession().setAttribute("path",path);*/

        int id = 0;
        ProService service = new ProService();
        Pro pro = new Pro();
        if (proid != "" && proid != null) {
            id = Integer.parseInt(proid);

            //首先从redis缓存中取数据，取不到才从数据库取
            Jedis jedis = JedisPoolUtil.getJedis();
            Map map = jedis.hgetAll("pro" + id);

            if (map != null && map.size() > 0) {
                pro = ProUtil.MapToPro(map);
                System.out.println("从redis中读取");
            } else {
                pro = service.findId(id);  //从数据库取数据，并且存一份到redis缓存
                map = ProUtil.ProToMap(pro);
                System.out.println("从database数据库中读取并转换为map存入redis，proTomap:" + map);
                jedis.hmset("pro:" + proid, map);
            }
            jedis.close();
            request.setAttribute("item", pro);

        }


    //获取评论
    CommentService commentService = new CommentService();
    List<Comment> comments = commentService.searchComments(id);
        request.setAttribute("comments",comments);


    //将商品id存入cookie，以便首页能获得最近浏览的商品
    //获得客户端已存入的cookie 获得名字是proid的cookie
    String proids = proid;
    Cookie[] cookies = request.getCookies();
        if(cookies!=null)

    {
        for (Cookie cookie : cookies) {
            if ("proids".equals(cookie.getName())) {
                proids = cookie.getValue();

                //更改显示顺序
                String[] split = proids.split("-");
                List<String> asList = Arrays.asList(split);  //转换成集合
                LinkedList<String> list = new LinkedList<>(asList);

                //判断集合中是否存在目前传递的proid
                if (list.contains(proid)) {
                    //包含当前传递来的proid移除
                    list.remove(proid);
                }

                //添加到首位
                list.addFirst(proid);

                //将集合转换成以"-"连接的字符串
                StringBuffer sb = new StringBuffer();

                for (int i = 0; i < list.size() && i < 7; i++) {
                    sb.append(list.get(i));
                    sb.append("-");
                }
                proids = sb.substring(0, sb.length() - 1);
            }
        }
    }

    //将proids存入cookie
    Cookie c = new Cookie("proids", proids);
        response.addCookie(c);

        request.getRequestDispatcher("/pro_info.jsp").

    forward(request, response);
}
}
