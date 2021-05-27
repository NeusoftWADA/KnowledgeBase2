package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginOutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        session.removeAttribute("uid");
        request.getRequestDispatcher("/begin/refresh").forward(request,response);
    }

}
