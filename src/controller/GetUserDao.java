package controller;
import dao.UserDao;
import entity.User;

import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;


public class GetUserDao {

    public List<User> GetPost(){

        List<User> lstpost=new ArrayList<User>();
        UserDao userDao=new UserDao();
        String strSQL="select * from user";
        ResultSet rs=userDao.execQuery(strSQL,new Object[]{});
        try{
            while(rs.next()){
                User user=new User();
                user.setUid(rs.getInt("Uid"));
                user.setId(rs.getString("Id"));
                user.setUpassword(rs.getString("Password"));
                lstpost.add(user);
            }
            return lstpost;
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

}