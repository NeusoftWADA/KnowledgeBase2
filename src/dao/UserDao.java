package dao;


import entity.User;
import util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 2020/4/27
 */
public class UserDao {

    private JdbcUtil util = new JdbcUtil();
    //用户注册,判断用户是否存在
    public List IdExist(){
        String sql = "select id from user";
        String id ;
        List<String> list = new ArrayList<>();
        PreparedStatement ps = util.createStatement(sql);
        ResultSet rs =null;
        try {
            rs = ps.executeQuery();
            while (rs.next()){
               id= rs.getString("id");
               list.add(id);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            util.close(rs);
        }
        return  list;
    }
    //用户注册
    public int add(User user){
        String sql ="insert into user(id,upassword) values(?,?)";
        PreparedStatement ps = util.createStatement(sql);
        int result = 0;
        try {
            ps.setString(1, user.getId());
            ps.setString(2, user.getUpassword());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e){
            e.printStackTrace();
        }  finally {
            util.close();
        }
        return result;
    }



    //用户登录验证
    public int loginUser(String id,String upassword){
        String sql="select count(*) from user where id=? and upassword=?";
        PreparedStatement ps = util.createStatement(sql);
        ResultSet rs = null;
        int result = 0;
        try {
            ps.setString(1, id);
            ps.setString(2, upassword);
            rs = ps.executeQuery();
            while(rs.next()){
               result =  rs.getInt("count(*)");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            util.close(rs);
        }
        return result;
    }
    public int loginAdmin(String uname,String apassword){
        String sql="select count(*) from admin where uname=? and apassword=?";
        PreparedStatement ps = util.createStatement(sql);
        ResultSet rs = null;
        int result = 0;
        try {
            ps.setString(1, uname);
            ps.setString(2, apassword);
            rs = ps.executeQuery();
            while(rs.next()){
                result =  rs.getInt("count(*)");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            util.close(rs);
        }
        return result;
    }

    public int findUid(String id){
        String sql = "select uid from user where id = ?";
        PreparedStatement ps = util.createStatement(sql);
        int uid = 0;
        ResultSet rs = null;

        try {
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()){
                uid = rs.getInt("uid");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close(rs);
        }
        return  uid;
    }

}
