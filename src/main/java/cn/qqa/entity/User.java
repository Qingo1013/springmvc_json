package cn.qqa.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class User {
    private Integer id;
    private String name;
    @JsonIgnore //当返回javaBean的json时会忽略该属性
    private String password;
    @JsonFormat(pattern = "yyyy-MM-dd")
    //用于返回json时格式化数据 DateTimeFormat和JsonFormat只需要设置一个就可以
    private Date birthday;

    public User() {
    }

    public User(Integer id, String name, String password, Date birthday) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.birthday = birthday;
    }

    public User(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
