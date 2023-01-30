package com.jspmvc.serviceImplement;

import com.jspmvc.DaoImpl.StudentDao;
import com.jspmvc.IService.StudentServiceTwo;
import com.jspmvc.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.util.Collections;
import java.util.List;
import java.util.logging.Logger;

@Service
public class StudentServiceImplTwo implements StudentServiceTwo {

    @Autowired
    StudentDao studentDao;


    private static final Logger logger = Logger.getLogger(StudentServiceImpl.class.getName());


    public Student saveStudent(String name, String email, String username, String password, int age, String gender,
                               String degree, String division, Date deadline) {
        try {
            Student student = Student.builder()
                    .name(name)
                    .email(email)
                    .username(username)
                    .password(password)
                    .age(age)
                    .gender(gender)
                    .degree(degree)
                    .division(division)
                    .deadline(deadline)
                    .build();
            return studentDao.save(student);
        } catch (Exception e) {
            // handle the exception
            // e.printStackTrace();
            System.out.println("Error occurred while saving student: " + e.getMessage());
            return null;
        }
    }


    public boolean updateStudent(Student student) {
        try {
            return studentDao.updateStudent(student);
        } catch (Exception e) {
            System.out.println("Error occurred while saving updateStudent: " + e.getMessage());
            return false;
        }
    }


    public Student findByIdStudent(long id) {

        try {
            return studentDao.get_student_by_id(id);
        } catch (Exception e) {
            logger.severe("Error occurred while fetching students by get_student_by_id: " + e);
            return null;
        }
    }


    public List<Student> getAllStudents() {
        try {
            return studentDao.getAllStudents();
        } catch (Exception e) {
            logger.severe("Error finding all students: " + e);
        }
        return Collections.emptyList();
    }

    public boolean deleteStudentById(Long id) {
        try {
            return studentDao.deleteStudentById(id);
        } catch (Exception e) {
            logger.severe("Error delete students: " + e);
            return false;
        }
    }

    @Override
    public Student save(HttpServletRequest request) {
        return null;
    }

    @Override
    public Student edit(long id) {
        return null;
    }

    @Override
    public Student update(HttpServletRequest request) {
        return null;
    }

    @Override
    public List<Student> getAll() {
        return null;
    }

    @Override
    public boolean delete(long id) {
        return false;
    }
}
