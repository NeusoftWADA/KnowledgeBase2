package controller;

import dao.KnowledgeDao;
import dao.UserDao;
import entity.Knowledge;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class KnowledgeShowContextServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KnowledgeDao dao = new KnowledgeDao();
        UserDao userDao = new UserDao();
        String title;

        title = request.getParameter("title");
        HttpSession session = request.getSession();
        Knowledge knowledge = dao.knowledge_find(title);

        request.setAttribute("knowledge", knowledge);
        request.getRequestDispatcher("/knowledgePage.jsp").forward(request, response);
    }
}
