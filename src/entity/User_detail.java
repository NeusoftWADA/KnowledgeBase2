package entity;

public class User_detail {
    private Integer did;
    private String title;
    private String content;
    private String sex;
    private String school;
    private String profession;
    private Integer uid;

    public User_detail() {
    }

    public User_detail(Integer did, String title, String content, String sex, String school, String profession, Integer uid) {
        this.did = did;
        this.title = title;
        this.content = content;
        this.sex = sex;
        this.school = school;
        this.profession = profession;
        this.uid = uid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
