package controller;

import dao.UserDao;
import dao.User_detailDao;
import entity.User_detail;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class User_detailUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User_detailDao user_detailDao = new User_detailDao();
        UserDao userDao = new UserDao();
        User_detail user_detail = null;
        int res = 0;

        String title, content, sex, school, profession;
        Integer uid;

        title = request.getParameter("title");
        content = request.getParameter("content");
        sex = request.getParameter("sex");
        school = request.getParameter("school");
        profession = request.getParameter("profession");

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("uid");
        uid = userDao.findUid(id);

        res = user_detailDao.User_detail_update(title, content, sex, school, profession, uid);
        if (res!=0){
            user_detail = user_detailDao.User_detail_find(uid);
        }
        session.setAttribute("user_detail",user_detail);
        request.setAttribute("res",res);
        request.getRequestDispatcher("/PersonalInformation.jsp").forward(request,response);
    }

}
