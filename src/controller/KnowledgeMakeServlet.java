package controller;

import com.mysql.cj.Session;
import dao.KnowledgeDao;
import dao.TypeDao;
import dao.UserDao;
import entity.Knowledge;
import entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class KnowledgeMakeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title, content;
        Integer tid, uid;
        String cname;
        Knowledge knowledge = null;

        int flag = 0;
        TypeDao typeDao = new TypeDao();
        KnowledgeDao dao = new KnowledgeDao();
        UserDao userDao = new UserDao();
        //获取请求参数值
        title = request.getParameter("title");
        content = request.getParameter("ncontent");
        //通过类别名找到类别编号tid
        cname = request.getParameter("Classification");
        tid = typeDao.findId(cname);

        HttpSession session = request.getSession();
        String  id = (String) session.getAttribute("uid");
        //通过用户的id找到uid
        uid = userDao.findUid(id);
        //如果标题为空
        if ("".equals(title)) {
            flag = -1;
        }
        //如果内容为空
        if ("".equals(content)) {
            flag = -2;
        }
        //类比没有选择
        if (cname.equals("—请选择类别—")) {
            flag = -3;
        }

        //知识点录入
        if (flag != -1 && flag != -2 && flag != -3) {
            knowledge = new Knowledge(null, title, content, null, null, tid, null, uid);
            flag = dao.Knowledge_insert(knowledge);
        }
        //录入成功
        if (flag == 1) {
            response.sendRedirect("/myweb/knowledge/Knowlede_Make_Success.jsp");
        } else {//录入失败
            request.setAttribute("flag", flag);
            request.getRequestDispatcher("/knowledge/knowledge_Make_false.jsp").forward(request, response);
        }


    }

}
