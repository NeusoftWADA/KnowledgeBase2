package dao;

import util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TypeDao {

    private JdbcUtil util = new JdbcUtil();

    //根据分类名找到分类编号
    public Integer findId(String cname) {
        String sql = "select tid from type where cname = ?";
        PreparedStatement ps = util.createStatement(sql);
        int tid = 0;
        ResultSet rs = null;

        try {
            ps.setString(1, cname);
            rs = ps.executeQuery();
            while (rs.next()){
                tid = rs.getInt("tid");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close(rs);
        }
        return  tid;
    }


}
