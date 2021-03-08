package controller;

import dao.UserDao;
import dao.User_detailDao;
import entity.User;
import entity.User_detail;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class UserAddServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        {

            String id, upassword, password;
            UserDao dao = new UserDao();
            User_detailDao user_detailDao = new User_detailDao();
            int result = 0;
            int res = 0;

            request.setCharacterEncoding("utf-8");
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
                //添加用户
                User user = new User(null, id, upassword);
                result = dao.add(user);
                //添加用户的详细信息
                if(result==1){
                    Integer uid = dao.findUid(id);
                    user_detailDao.AddUser(null,null,null,null,null,uid);
                }
            }

            request.setAttribute("result",result);
            request.getRequestDispatcher("/RegisterPage.jsp").forward(request,response);

        }

    }


}
