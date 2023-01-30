package com.jspmvc.DaoImpl;

import com.jspmvc.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository(value = "studentDao")
@Transactional
public class StudentDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public Student save(Student student) {
        String degreeString = String.join(",", student.getDegree());
        jdbcTemplate.update("CALL saveStudent(?,?,?,?,?,?,?,?,?)",

                student.getName(),
                student.getEmail(),
                student.getUsername(),
                student.getPassword(),
                student.getAge(),
                student.getGender(),
                degreeString,
                student.getDivision(),
                student.getDeadline());

        return student;
    }

   /* public Student get_student_by_id(long id) {
        return jdbcTemplate.queryForObject("call get_student_by_id(?)", new Object[] { id },
                new BeanPropertyRowMapper<Student>(Student.class));
    }*/

    public Student get_student_by_id(long id) {
        return jdbcTemplate.queryForObject("CALL get_student_by_id(?)",
                (rs, rowNum) -> new Student(rs.getLong("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("age"),
                        rs.getString("gender"),
                        rs.getString("degree"),
                        rs.getString("division"),
                        rs.getDate("deadline")), id);
    }

    public boolean updateStudent(Student student) {
        try {
            String degreeString = String.join(",", student.getDegree());
            int rowsAffected = jdbcTemplate.update("CALL update_student(?,?,?,?,?,?,?,?,?,?)",
                    student.getId(),
                    student.getName(),
                    student.getEmail(),
                    student.getUsername(),
                    student.getPassword(),
                    student.getAge(),
                    student.getGender(),
                    degreeString,
                    student.getDivision(),
                    student.getDeadline());
            return rowsAffected > 0;
        } catch (Exception e) {
            // handle the exception
            // e.printStackTrace();
            System.out.println("Error occurred while updating student: " + e.getMessage());
            return false;
        }
    }

    public List<Student> getAllStudents() {

        return jdbcTemplate.query("CALL getAllStudents()", (rs, rowNum) -> {

            return Student.builder()
                    .id(rs.getLong("id"))
                    .name(rs.getString("name"))
                    .email(rs.getString("email"))
                    .username(rs.getString("username"))
                    .password(rs.getString("password"))
                    .age(rs.getInt("age"))
                    .gender(rs.getString("gender"))
                    .degree(rs.getString("degree"))
                    .division(rs.getString("division"))
                    .deadline(rs.getDate("deadline"))
                    .build();
        });
    }


    public boolean deleteStudentById(Long id) {
        try {
            String sql = "CALL deleteStudentById(?)";
            int rowsAffected = jdbcTemplate.update(sql, id);
            return rowsAffected > 0;
        } catch (Exception e) {
            // Log the exception
            e.printStackTrace();
            return false;
        }
    }
}
