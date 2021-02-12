package dao;

import entity.Knowledge;
import entity.User_detail;
import util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User_detailDao {
    private JdbcUtil util = new JdbcUtil();

    //取出用户的详细信息
    public User_detail User_detail_find(Integer uid){
        String sql = "select * from user_detail where uid = ?";
        String title,content,sex,school,profession;
        Integer did;
        ResultSet rs = null;
        PreparedStatement ps = util.createStatement(sql);
        User_detail user_detail = null;
        try {
            ps.setInt(1,uid);
            rs = ps.executeQuery();
            while (rs.next()){
                did = rs.getInt("did");
                title = rs.getString("title");
                content = rs.getString("content");
                sex  = rs.getString("sex");
                school = rs.getString("school");
                profession = rs.getString("profession");
                user_detail = new User_detail(did,title,content,sex,school,profession,uid);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            util.close(rs);
        }
        return user_detail;
    }

    //更新用户的详细信息
    public int User_detail_update(String title, String content, String sex, String school, String profession, Integer uid){
        String sql = "update user_detail set title=?,content=?,sex=?,school=?,profession=? where uid =?";
        PreparedStatement ps = util.createStatement(sql);
        User_detail user_detail = null;
        int result = 0;
        try {
            ps.setString(1,title);
            ps.setString(2,content);
            ps.setString(3,sex);
            ps.setString(4,school);
            ps.setString(5,profession);
            ps.setInt(6,uid);
            result = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return result;
    }
}
