/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Config.Connextion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import models.Student;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Gabe
 */
@Controller
public class Control {
    
    Connextion con = new Connextion();
    JdbcTemplate jdbctemp = new JdbcTemplate(con.Connect());
    ModelAndView mav = new ModelAndView();
    List datas;
    String id;
    
    @RequestMapping("index.htm")
    public ModelAndView Lists(){   
        
        String sql ="select * from student";
        
        datas = this.jdbctemp.queryForList(sql);
        mav.addObject("StudentList",datas);
        mav.setViewName("index");
        return mav;
        
    }
    
    @RequestMapping(value = "regist.htm", method = RequestMethod.GET)
    public ModelAndView AddStudent(){
        mav.addObject(new Student());
        mav.setViewName("regist");
        return mav;
    }
    
    @RequestMapping(value = "regist.htm", method = RequestMethod.POST)
    public ModelAndView AddStudent(Student s){
        String sql = "insert into student values(?,?,?,?,?)";
        this.jdbctemp.update(sql, s.getStudentid(), s.getFullnames(), s.getGender(), s.getAge(), s.getDepartment());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value = "edit.htm", method = RequestMethod.GET)
    public ModelAndView Edit(HttpServletRequest request){
        id = request.getParameter("id");
        String sql = "select * from student where studentid = '"+id+"'";
        datas = this.jdbctemp.queryForList(sql);
        mav.addObject("EditStud", datas);
        mav.setViewName("edit");
        return mav;
    }
    @RequestMapping(value = "edit.htm", method = RequestMethod.POST)
    public ModelAndView Editing(Student s){
        String sql = "update student set fullnames = ?, gender = ?, age = ? where studentid = ?";
        this.jdbctemp.update(sql, s.getFullnames(), s.getGender(), s.getAge(), id);
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request){
        id = request.getParameter("did");
        String sql = "delete from student where studentid = ?";
        this.jdbctemp.update(sql, id);
        return new ModelAndView("redirect:/index.htm");
    }
    
    
}
