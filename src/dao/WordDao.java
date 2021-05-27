package dao;

import entity.Words;
import util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WordDao {

    private JdbcUtil util = new JdbcUtil();

    public int add(Words words){
        String sql ="insert into words(wname,aid) values(?,1)";
        PreparedStatement ps = util.createStatement(sql);
        int result = 0;
        try {
            ps.setString(1, words.getWname());
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
}
