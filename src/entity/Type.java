package entity;

public class Type {
    private Integer tid;
    private String cname;

    public Type() {
    }

    public Type(Integer tid, String cname) {
        this.tid = tid;
        this.cname = cname;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
}

