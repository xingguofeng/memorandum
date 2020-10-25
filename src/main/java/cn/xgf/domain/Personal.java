package cn.xgf.domain;

import com.fasterxml.jackson.annotation.JsonFormat;


import java.sql.Date;

public class Personal {
    private Integer id;

    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date time;
    private String event;

    @Override
    public String toString() {
        return "Personal{" +
                "id=" + id +
                ", time=" + time +
                ", event='" + event + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

   @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    public Date getTime() {
        return time;
    }
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    public void setTime(Date time) {
        this.time = time;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public Personal(Integer id, Date time, String event) {

        this.id = id;
        this.time = time;
        this.event = event;
    }

    public Personal() {

    }
}
