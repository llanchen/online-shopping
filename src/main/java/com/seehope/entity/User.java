package com.seehope.entity;

import java.util.Date;

public class User {
    private int id;
    private String username;
    private String password;
    private String telephone;
    private String name;
    private Date datetime;

    public User() {
    }

    public User(int id, String username, String password, String telephone, String name, Date datetime) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.telephone = telephone;
        this.name = name;
        this.datetime = datetime;
    }

    public User(String username, String password, String telephone, String name, Date datetime) {
        this.username = username;
        this.password = password;
        this.telephone = telephone;
        this.name = name;
        this.datetime = datetime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", telephone='" + telephone + '\'' +
                ", name='" + name + '\'' +
                ", datetime=" + datetime +
                '}';
    }
}
