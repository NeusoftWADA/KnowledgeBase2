package dao;

import util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TypeDao {

    private JdbcUtil util = new JdbcUtil();

    //根据分类名找到分类编号
    public Integer findId(String cname) {
        String sql = "select tid from type where cname=?";
        PreparedStatement ps = util.createStatement(sql);
        Integer res = 0;
        ResultSet rs = null;

        try {
            ps.setString(1, cname);
            rs = ps.executeQuery();
            while (rs.next()){
                res = rs.getInt("tid");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close(rs);
        }
        return  res;
    }

    //根据分类号找到分类名
    public String findCname(Integer tid){
        String sql = "select cname from type where tid = ?";
        PreparedStatement ps = util.createStatement(sql);
        String cname = null;
        ResultSet rs = null;

        try {
            ps.setInt(1, tid);
            rs = ps.executeQuery();
            while (rs.next()){
                cname = rs.getString("cname");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close(rs);
        }
        return cname;
    }

}
