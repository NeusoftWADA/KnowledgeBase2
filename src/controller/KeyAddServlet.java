package controller;

import dao.KnowledgeDao;
import dao.UserDao;
import dao.User_detailDao;
import dao.WordDao;
import entity.User;
import entity.Words;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class KeyAddServlet  extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        {

            String wname,kid;
            WordDao wd = new WordDao();
            KnowledgeDao kd = new KnowledgeDao();
            int result = 0;
            int count = 0;

            request.setCharacterEncoding("utf-8");
            wname = request.getParameter("wname");
            kid = request.getParameter("kid");

            if (result != -1 &&result!=-2&&result!=-3&&count != -1) {
                Words words = new Words(8, wname, 1);
                result = wd.add(words);
                count = kd.Knowledge_change(words,kid);
            }

            request.setAttribute("count",count);
            request.getRequestDispatcher("/WriteKeywordPage.jsp").forward(request,response);

        }

    }

}
