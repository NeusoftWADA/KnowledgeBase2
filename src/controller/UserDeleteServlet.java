package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.GetUserDao;
import entity.User;

@WebServlet("/del")
public class UserDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UserDeleteServlet() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        GetUserDao gud=new GetUserDao();

        List<User> list=gud.GetPost();
        request.setAttribute("list",list);

        request.getRequestDispatcher("/ManagerUser.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
