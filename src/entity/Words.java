package entity;

public class Words {
    private Integer wid;
    private String wname;
    private Integer aid;

    public Words() {
    }

    public Words(Integer wid, String wname, Integer aid) {
        this.wid = wid;
        this.wname = wname;
        this.aid = aid;
    }

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }
}
