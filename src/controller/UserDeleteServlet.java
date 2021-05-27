package controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;


public class UserDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UserDeleteServlet() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        GetUserServlet gud=new GetUserServlet();

        List<User> list=gud.GetPost();
        request.setAttribute("list",list);
        System.out.println(list.get(1).getUid());

        request.getRequestDispatcher("/ManageUser.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

}
