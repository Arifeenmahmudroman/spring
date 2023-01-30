package com.jspmvc.controller;

import com.google.gson.Gson;
import com.jspmvc.IService.StudentService;
import com.jspmvc.model.Student;
import com.jspmvc.serviceImplement.StudentServiceImplTwo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping(value = "student")
public class studentController {

    @Autowired
    StudentService studentService;

    @Autowired
    StudentServiceImplTwo studentServiceImplTwo;

    //login start
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        return new ModelAndView("/login");
    }



    @RequestMapping(value="/dashBord1", method = RequestMethod.GET)
    public ModelAndView loginUser(@ModelAttribute Student student) {
        //Student foundStudent = studentService.findByStudentUsernameAndPassword(student.getUsername(), student.getPassword()) ;
        Student foundStudent = studentService.login(student.getUsername(),student.getPassword());
            if (foundStudent != null) {
                List<Student> students = studentService.findAllStudent();
                return new ModelAndView("/dashBord", "students", students);
            } else {

                return new ModelAndView("/login");
            }
        }

    /*@PostMapping
    public ResponseEntity<String> login(@RequestBody Student student) {
        Student foundStudent = studentService.findByStudentnameAndPassword(student.getName(), student.getPassword());
        if (foundStudent != null) {
            return new ResponseEntity<>("Welcome " + foundStudent.getName(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>("Invalid username or password", HttpStatus.UNAUTHORIZED);
        }
    }*/
    //login end

    //registration page get
    @RequestMapping(value = "/registrationStudent", method = RequestMethod.GET)
    public ModelAndView registrationStudentShow(){
        return new ModelAndView("/registrationStudent" );
    }


    //for registration
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveStudent(@RequestParam("name") String name,
                                    @RequestParam("email") String email,
                                    @RequestParam("username") String username,
                                    @RequestParam("password") String password,
                                    @RequestParam("age") int age,
                                    @RequestParam("gender") String gender,
                                    @RequestParam("degree") String degree,
                                    @RequestParam("division") String division,
                                    @RequestParam("deadline") Date deadline) {
        try{
             studentServiceImplTwo.saveStudent(name, email, username, password, age, gender, degree, division, deadline);
            //studentService.studentSave(student);
            return new ModelAndView ("/registrationStudent","message","Student information have Save" +
                    " !");
        }catch(Exception e){
            return new ModelAndView ("/registrationStudent","message","Student saving failed!");
        }
    }

    //for show student List
    @RequestMapping(value = "/dashBord", method = RequestMethod.GET)
    public ModelAndView view() {
        List<Student> students = studentServiceImplTwo.getAllStudents();
        return new ModelAndView("/dashBord", "students", students);
    }

   /* @RequestMapping(value="/listJson", method = RequestMethod.GET)
    public String showJson() {
        List<Student> st = studentService.findAllStudent();
        Gson gson = new Gson();
        String json= gson.toJson(st);
        return json;
    }*/

    /* for edit */
   /* @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable Long id) {
        Student c = studentService.findByIdStudent(id);
        return new ModelAndView("/updateStudent", "c", c);
    }*/

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable long id) {
        /*long pid = Integer.valueOf(id);*/
        Student c = studentServiceImplTwo.findByIdStudent(id);
        return new ModelAndView("/updateStudent", "c", c);
    }

    /* For update */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView updateStudent(Student student) {
        boolean p = studentServiceImplTwo.updateStudent(student);
        List<Student> students = studentServiceImplTwo.getAllStudents();
        return new ModelAndView("/dashBord", "students", students);

    }
    /* For delete */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteStudent(@PathVariable String id) {
        long pid = Integer.valueOf(id);
        boolean p = studentServiceImplTwo.deleteStudentById(pid);
        List<Student> students = studentServiceImplTwo.getAllStudents();
        return new ModelAndView("/dashBord", "students", students);
    }





}
