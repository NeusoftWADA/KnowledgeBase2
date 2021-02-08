package controller;

import dao.UserDao;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UserAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        {
            String id, upassword, password;
            UserDao dao = new UserDao();
            int result = 0;

            id = request.getParameter("id");
            upassword = request.getParameter("upassword");
            password = request.getParameter("password");


            //判断账号是否存在
            List<String> list = dao.IdExist();
            for (String s : list) {
                if (s.equals(id)) {
                    result = -1;
                }
            }

            //判断第二次密码是否正确
            if (!upassword.equals(password)) {
                result = -2;
            }

            //判断密码是否小于6位数
            if(upassword.length()<6){
                result=-3;
            }

            //添加数据
            if (result != -1 &&result!=-2&&result!=-3) {
                User user = new User(null, id, upassword);
                result = dao.add(user);
            }

            if (result==1){
                response.sendRedirect("/myweb/user_Add_Success.jsp");
            }else{
                request.setAttribute("result",result);
                request.getRequestDispatcher("/user_Add_False.jsp").forward(request,response);
            }



        }

    }


}
