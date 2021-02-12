package controller;

import dao.KnowledgeDao;
import dao.TypeDao;
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
        TypeDao typeDao = new TypeDao();

        //根据标题获取到对应知识点内容
        String title = request.getParameter("title");
        Knowledge knowledge = dao.knowledge_find(title);

        //根据类别号获取知识点类别名
        Integer tid = knowledge.getTid();
        String cname = typeDao.findCname(tid);

        request.setAttribute("cname",cname);
        request.setAttribute("knowledge", knowledge);
        request.getRequestDispatcher("/knowledgePage.jsp").forward(request, response);


    }
}
