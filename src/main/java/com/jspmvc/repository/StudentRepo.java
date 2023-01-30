package com.jspmvc.repository;

import com.jspmvc.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepo extends JpaRepository<Student, Long> {

    @Query("SELECT s FROM Student s WHERE s.username = :username AND s.password = :password")
    Student findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    //store procedure call
    @Procedure(procedureName = "login")
    Student login(@Param("username") String username, @Param("password") String password);


}
