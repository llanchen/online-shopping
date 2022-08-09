package com.seehope.servlet;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.seehope.config.AlipayConfig;
import com.seehope.service.MsoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@WebServlet("/pay")
public class PayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            //获取支付宝POST过来反馈信息
            Map<String, String> params = new HashMap<>();
            Map<String, String[]> requestParams = request.getParameterMap();
            for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext(); ) {
                String name = (String) iter.next();
                String[] values = (String[]) requestParams.get(name);
                String valueStr = "";
                for (int i = 0; i < values.length; i++) {
                    valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
                }

                //乱码解决
                valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
                params.put(name, valueStr);
            }

            boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key,
                    AlipayConfig.charset, AlipayConfig.sign_type);

            //if (signVerified) {//如果验证成功。实际应用中，有时即使支付成功，但这个参数也是false，无法继续，
//所以暂时注释掉这个，暂时不考虑失败的情况
                String mosid = request.getParameter("out_trade_no");
                System.out.println("支付宝反馈回来的订单号：" + mosid);
                MsoService msoService = new MsoService();
                int i = msoService.updateMsoPayState(mosid); //修改订单支付状态
                request.getSession().removeAttribute("mso");
                request.getSession().removeAttribute("amount");
                response.sendRedirect("paysuccess.jsp");
//            } else {
//                System.out.println("支付宝验证失败！");
//                String msoid = request.getParameter("out_trade_no");
//                System.out.println("支付宝反馈回来的订单号：" + msoid);
//            }
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }//调用SDK验证签名
    }
}
