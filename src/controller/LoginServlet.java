package controller;

import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id, upassword;
        UserDao dao = new UserDao();
        int loginResult = 0;
        //1.调用请求对象对请求体使用utf-8字符集进行重新编译
        request.setCharacterEncoding("utf-8");
        //2.请求参数
        id = request.getParameter("id");
        upassword = request.getParameter("upassword");
        if (id.substring(0,5).equals("admin")){
           loginResult = dao.loginAdmin(id,upassword);
            if (loginResult == 1) {
                HttpSession session = request.getSession();
                session.setAttribute("aid",id);
                response.sendRedirect("/myweb/adminindex.jsp");
            } else {
                response.sendRedirect("/myweb/login_error.html");
            }
        }else{
            loginResult = dao.loginUser(id,upassword);
            if (loginResult == 1) {
                HttpSession session = request.getSession();
                session.setAttribute("uid",id);
                response.sendRedirect("/myweb/HomePage.jsp");
            } else {
                request.setAttribute("loginResult",loginResult);
                request.getRequestDispatcher("/HomePage.jsp").forward(request,response);
            }
        }

    }
}
