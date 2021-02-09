package entity;

public class User {
    private Integer uid;
    private String id;
    private String upassword;

    public User() {
    }

    public User(Integer uid, String id, String upassword) {
        this.uid = uid;
        this.id = id;
        this.upassword = upassword;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }
}
