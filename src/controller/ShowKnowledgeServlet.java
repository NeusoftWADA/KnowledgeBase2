package controller;

import dao.KnowledgeDao;
import dao.UserDao;
import entity.Knowledge;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ShowKnowledgeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KnowledgeDao dao = new KnowledgeDao();
        UserDao userDao = new UserDao();
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        String  id = (String) session.getAttribute("uid");
        //通过用户的id找到uid
        Integer uid = userDao.findUid(id);
        List<Knowledge> knowledges = dao.knowledges_fetch(uid);

        request.setAttribute("knowledges",knowledges);
        request.getRequestDispatcher("/PersonalPage.jsp").forward(request,response);
    }
}
