package controller;

import dao.KnowledgeDao;
import dao.TypeDao;
import entity.Knowledge;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

//开始页面按照分类知识点的获取
public class BeginRefreshServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        KnowledgeDao knowledgeDao = new KnowledgeDao();
        TypeDao typeDao = new TypeDao();

        String[] type = {"计算机类","英语","高数","物理"};
        for (int i = 0; i < type.length; i++) {
            String tname = type[i];
            Integer tid = typeDao.findId(tname);
            List<Knowledge> knowledges = knowledgeDao.knowledges_fetchByType(tid);
            HttpSession session = request.getSession();
            session.setAttribute(tname,knowledges);
        }
        request.getRequestDispatcher("/HomePage.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
