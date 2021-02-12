package controller;

import dao.KnowledgeDao;
import dao.UserDao;
import dao.User_detailDao;
import entity.Knowledge;
import entity.User_detail;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ShowKnowledgeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KnowledgeDao dao = new KnowledgeDao();
        UserDao userDao = new UserDao();
        User_detailDao user_detailDao = new User_detailDao();

        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        String  id = (String) session.getAttribute("uid");
        //通过用户的id找到uid
        Integer uid = userDao.findUid(id);

        //取出用户对应的知识点
        List<Knowledge> knowledges = dao.knowledges_fetch(uid);
        //取出用户的详细信心
        User_detail user_detail = user_detailDao.User_detail_find(uid);

        request.setAttribute("user_detail",user_detail);
        request.setAttribute("knowledges",knowledges);
        request.getRequestDispatcher("/PersonalPage.jsp").forward(request,response);
    }
}
