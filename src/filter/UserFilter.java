package filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UserFilter implements Filter {
    //用于防止恶意登录
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpSession session = null;

       String uri =  request.getRequestURI();
       //用于登录注册的信息不拦截
        if(uri.indexOf("login")!=-1||"/myweb/".equals(uri)||uri.indexOf("user/Add")!=-1||uri.indexOf("user_Add")!=-1){
            //放行
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        session =  request.getSession(false);
        //session如果为null，表示没有进行登录，拦截到登录页面
        if(session == null){
            request.getRequestDispatcher("/login_error.html").forward(servletRequest,servletResponse);
            return;
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }




    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
    @Override
    public void destroy() {

    }

}
