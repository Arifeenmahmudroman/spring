package com.jspmvc.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;
import java.sql.Date;

@SuperBuilder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "student")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;
    @Column(name = "name")
    private String name;
    @Column(name = "email")
    private String email;
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name = "age")
    private int age;
    @Column(name = "gender")
    private String gender;
    @Column(name = "degree")
    private String degree;
    @Column(name = "division")
    private String division;
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Column(name = "deadline")
    private Date deadline;


   /* public Student(long id, String name, String email, String username, String password, int age, String gender, String degree, String division, Date deadline) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.username = username;
        this.password = password;
        this.age = age;
        this.gender = gender;
        this.degree = degree;
        this.division = division;
        this.deadline = deadline;
    }*/
}
