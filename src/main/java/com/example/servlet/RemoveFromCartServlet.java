package com.example.servlet;

import com.example.domain.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RemoveFromCartServlet")
public class RemoveFromCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取请求参数 id
        int id = Integer.parseInt(request.getParameter("id"));
        //2.1 若Session中存在cart对象，则调用其reomve方法，响应客户端购物车视图页面
        if(request.getSession().getAttribute("cart") != null){
            ShoppingCart cart  = (ShoppingCart)request.getSession().getAttribute("cart");
            cart.remove(id);
            response.sendRedirect(request.getContextPath() + "/cart.jsp");
        } else{//2.2 若Session中不存在cart对象，则响应客户端首页视图页面
            response.sendRedirect(request.getContextPath() + "/index2.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
