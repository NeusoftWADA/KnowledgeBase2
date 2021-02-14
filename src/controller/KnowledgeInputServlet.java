package controller;

import dao.KnowledgeDao;
import dao.TypeDao;
import dao.UserDao;
import entity.Knowledge;
import entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class KnowledgeInputServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TypeDao typeDao = new TypeDao();
        UserDao userDao = new UserDao();
        KnowledgeDao knowledgeDao = new KnowledgeDao();

        request.setCharacterEncoding("utf-8");
        String title, content, cname;
        Integer tid,uid;
        int result = 0;
        title = request.getParameter("title");
        content = request.getParameter("content");
        cname = request.getParameter("selectType");

        //根据分类名找到分类编号
        tid = typeDao.findId(cname);
        HttpSession session = request.getSession();
        String  id = (String) session.getAttribute("uid");
        //通过用户的id找到uid
        uid = userDao.findUid(id);

        Knowledge knowledge = new Knowledge(null,title,content,null,null,tid,null,uid);


        //判断标题是否填写
        if (title == null){
            result = -1;
        }
        if (content == null){
            result = -2;
        }
        if ("—请选择类别—".equals(cname)){
            result = -3;
        }
        if (result!=-1&&result!=-2&&result!=-3){
            //录入知识点
            result = knowledgeDao.Knowledge_insert(knowledge);
        }

        request.setAttribute("result",result);
        request.getRequestDispatcher("/KnowledgeInput.jsp").forward(request,response);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
