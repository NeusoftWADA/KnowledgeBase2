package dao;

import entity.Knowledge;
import util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class KnowledgeDao {
    private JdbcUtil util = new JdbcUtil();

    //按分类取出点赞量比较多的知识点
    public List<Knowledge> knowledges_fetchByType(Integer tid){
        String sql = "select kid,title,content,attention,share,wid,uid from Knowledge where tid = ? order by attention desc limit 0,10";
        String title,content;
        Integer  kid,attention,share,wid,uid;
        ResultSet rs = null;
        List<Knowledge> list = new ArrayList<>();
        PreparedStatement ps = util.createStatement(sql);
        try {
            ps.setInt(1,tid);
            rs = ps.executeQuery();
            while (rs.next()){
                kid = rs.getInt("kid");
                title = rs.getString("title");
                content = rs.getString("content");
                attention  = rs.getInt("attention");
                share = rs.getInt("share");
                wid = rs.getInt("wid");
                uid = rs.getInt("uid");
                Knowledge knowledge = new Knowledge(kid,title,content,attention,share,tid,wid,uid);
                list.add(knowledge);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            util.close(rs);
        }
        return list;
    }

    //取出所有知识点
    public List<Knowledge> knowledges_fetch(Integer uid){
        String sql = "select * from knowledge where uid = ?";
        String title,content;
        Integer  kid,attention,share,tid,wid;
        ResultSet rs = null;
        List<Knowledge> list = new ArrayList<>();
        PreparedStatement ps = util.createStatement(sql);
        try {
            ps.setInt(1,uid);
            rs = ps.executeQuery();
            while (rs.next()){
                kid = rs.getInt("kid");
                title = rs.getString("title");
                content = rs.getString("content");
                attention  = rs.getInt("attention");
                share = rs.getInt("share");
                tid = rs.getInt("tid");
                wid = rs.getInt("wid");
                Knowledge knowledge = new Knowledge(kid,title,content,attention,share,tid,wid,uid);
                list.add(knowledge);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            util.close(rs);
        }
        return list;
    }

    //取出标题对应的知识点
    public Knowledge knowledge_find(String title){
        String sql = "select * from knowledge where title = ?";
        String content;
        Integer  kid,attention,share,tid,wid,uid;
        ResultSet rs = null;
        PreparedStatement ps = util.createStatement(sql);
        Knowledge knowledge = null;
        try {
            ps.setString(1,title);
            rs = ps.executeQuery();
            while (rs.next()){
                kid = rs.getInt("kid");
                title = rs.getString("title");
                content = rs.getString("content");
                attention  = rs.getInt("attention");
                share = rs.getInt("share");
                tid = rs.getInt("tid");
                wid = rs.getInt("wid");
                uid = rs.getInt("uid");
                knowledge = new Knowledge(kid,title,content,attention,share,tid,wid,uid);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            util.close(rs);
        }
        return knowledge;
    }



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
