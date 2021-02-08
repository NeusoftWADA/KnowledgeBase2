package entity;

public class Knowledge {
    private Integer kid;
    private String title;
    private String content;
    private Integer attention;
    private Integer share;
    private Integer tid;
    private Integer wid;
    private Integer uid;

    public Knowledge() {
    }

    public Knowledge(Integer kid, String title, String content, Integer attention, Integer share, Integer tid, Integer wid, Integer uid) {
        this.kid = kid;
        this.title = title;
        this.content = content;
        this.attention = attention;
        this.share = share;
        this.tid = tid;
        this.wid = wid;
        this.uid = uid;
    }

    public Integer getKid() {
        return kid;
    }

    public void setKid(Integer kid) {
        this.kid = kid;
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

    public Integer getAttention() {
        return attention;
    }

    public void setAttention(Integer attention) {
        this.attention = attention;
    }

    public Integer getShare() {
        return share;
    }

    public void setShare(Integer share) {
        this.share = share;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
