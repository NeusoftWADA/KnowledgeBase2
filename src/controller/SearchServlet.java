package controller;

import dao.KnowledgeDao;
import entity.Knowledge;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        KnowledgeDao knowledgeDao = new KnowledgeDao();
        String words = req.getParameter("words");
        String wname =  words ;
        List<Knowledge> knowledges = new ArrayList<>();
        knowledges = knowledgeDao.knowledges_fetchByWords(wname);
        req.setAttribute("Knowledges",knowledges);
        req.getRequestDispatcher("/data/SearchValue.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
