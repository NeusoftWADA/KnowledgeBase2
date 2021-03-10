package controller;
import util.JdbcUtil;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/users/del")
public class UserDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取id
        int id=Integer.parseInt(req.getParameter("id"));
        Connection connection=null;
        PreparedStatement prsmt=null;
        String sql;
        try {
            //获取连接
            connection=new JdbcUtil().getCon();
            //判断：如果获取一个id 就按id对应的数据删除，否则删除全部
            if(id==-1){
                sql="delete from user ";

            }else {
                sql="delete from user id= "+id;
            }
            //执行sql语句
            prsmt=connection.prepareStatement(sql);
            prsmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try {
                //关闭
                connection.close();
                prsmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

        req.getRequestDispatcher("/user/lst").forward(req, resp);
    }

}