package dao;

import entity.Knowledge;
import util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class KnowledgeDao {
    private JdbcUtil util = new JdbcUtil();

    //知识点录入
    public int Knowledge_insert(Knowledge knowledge){
        int count=0;
        String sql="insert into knowledge(title,content,tid,uid) values(?,?,?,?)";
        PreparedStatement ps = util.createStatement(sql);

        try {
            ps.setString(1,knowledge.getTitle());
            ps.setString(2, knowledge.getContent());
            ps.setInt(3, knowledge.getTid());
            ps.setInt(4, knowledge.getUid());
            count=ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            util.close();
        }
        return count;
    }

/*    //按知识点类别读取排名前十的知识点
    public List<Knowledge> findType(){

    }*/




/*    //修改发帖
    public static boolean Knowledge_Update(Knowledge knowledge){
        boolean flag=false;
        int count=0;
        Connection con = JdbcUtil.getCon();
        String sql="update knowledge set title=? ,  content=?  where kid=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps= con.prepareStatement(sql);
            ps.setString(1, knowledge.getTitle());
            ps.setString(2, knowledge.getContent());
            ps.setInt(3, knowledge.getTid());
            count=ps.executeUpdate();
            if(count > 0 ){
                flag=true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        JdbcUtil.closers(rs);
        JdbcUtil.closestmt(ps);
        JdbcUtil.closecon(con);
        return flag;
    }
    // 删除主帖(id)
    public static boolean DeleteOne(int tid) {
        boolean flag = false;
        Connection con = JdbcUtil.getCon();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement("update knowledge set content='已删除' where kid=?");
            ps.setInt(1, tid);
            int row = ps.executeUpdate();
            if (row > 0) {
                flag = true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        JdbcUtil.closers(rs);
        JdbcUtil.closestmt(ps);
        JdbcUtil.closecon(con);

        return flag;
    }*/



}
