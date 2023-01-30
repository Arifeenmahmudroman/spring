package com.jspmvc.IService;

import com.jspmvc.model.Student;

import java.util.List;

public interface StudentService {

    boolean studentSave(Student student);

    boolean studentUpdate(Student student);

    boolean deleteByIdStudent(Long id);

    Student findByStudentUsernameAndPassword(String username, String password);

    Student login(String username, String password);

    Student findByIdStudent(Long id);

    List<Student> findAllStudent();
}
