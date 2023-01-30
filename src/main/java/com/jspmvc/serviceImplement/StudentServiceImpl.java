package com.jspmvc.serviceImplement;

import com.jspmvc.IService.StudentService;
import com.jspmvc.model.Student;
import com.jspmvc.repository.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.logging.Logger;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentRepo studentRepo;


    private static final Logger logger = Logger.getLogger(StudentServiceImpl.class.getName());

    public Student findByStudentUsernameAndPassword(String username, String password) {
        return studentRepo.findByUsernameAndPassword(username, password);
        // return studentRepo.findByStudentnameAndPassword(username, password);
    }

    @Transactional
    public Student login(String username, String password) {
        return studentRepo.login(username, password);
    }


    @Override
    public boolean studentSave(Student student) {
        try {
            Student student1 = studentRepo.save(student);
            boolean iSsuccess = student.getId() > 0;
            return iSsuccess;
        } catch (Exception e) {
            // handle the exception
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean studentUpdate(Student student) {

        try {
            studentRepo.save(student);
            return true;
        } catch (Exception e) {
            logger.severe("Error updating student: " + e);
            return false;
        }
    }

    @Override
    public boolean deleteByIdStudent(Long id) {
        try {
            studentRepo.deleteById(id);
            return true;
        } catch (Exception e) {
            logger.severe("Error Deleting student: " + e);
            return false;
        }
    }

    @Override
    public Student findByIdStudent(Long id) {

        try {
            Optional<Student> opt = studentRepo.findById(id);
            if (opt.isPresent()) {
                return opt.get();
            }
        } catch (Exception e) {
            logger.severe("Error finding student: " + e);
        }
        return null;
    }

    @Override
    public List<Student> findAllStudent() {
        try {
            return studentRepo.findAll();
        } catch (Exception e) {
            logger.severe("Error finding all students: " + e);
        }
        return Collections.emptyList();
    }
}
