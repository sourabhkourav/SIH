/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOClasses;

import PojoClasses.StudentPojo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

/**
 *
 * @author hmayw
 */
public class StudentDAO {
   public static boolean addStudents(Connection conn,StudentPojo obj)throws SQLException{
     PreparedStatement ps=conn.prepareStatement("insert into students values(?,?,?,?,?,?,?,?,?,?,?,?");
     ps.setString(1,obj.getEnrollment());
     ps.setString(2,obj.getInstitute_id());
     ps.setString(3,obj.getGender());
     ps.setString(4,obj.getName());
     ps.setString(5,obj.getEmail());
     ps.setString(6,obj.getPhone());
     ps.setString(7,obj.get10th_percent());
     ps.setString(8,obj.get10th_percent());
     ps.setString(9,obj.getDegree_percent());
     ps.setString(10,obj.getPassout_year());
     ps.setString(11,obj.getPlacement_status());
     ps.setString(12,obj.getBranch());
     
     return ps.executeUpdate()==1;
   }   
   public static StudentPojo getStudentById(Connection conn,String id)throws SQLException{
       PreparedStatement ps=conn.prepareStatement("select * from students where enrollment=?");
       ps.setString(1,id);
       ResultSet rs=ps.executeQuery();
       rs.next();
       StudentPojo obj=new StudentPojo();
       obj.setEnrollment(rs.getString(1));
       obj.setInstitute_id(rs.getString(2));
       obj.setGender(rs.getString(3));
       obj.setName(rs.getString(4));
       obj.setEmail(rs.getString(5));
       obj.setPhone(rs.getString(6));
       obj.set10th_percent(rs.getString(7));
       obj.set12th_percent(rs.getString(8));
       obj.setDegree_percent(rs.getString(9));
       obj.setPassout_year(rs.getString(10));
       obj.setPassout_year(rs.getString(11));
       obj.setBranch(rs.getString(12));
       
       return obj;
       
   }
   public static List<StudentPojo> getAllStudents(Connection conn)throws SQLException{
       List<StudentPojo>list=new ArrayList<>();
       Statement st=conn.createStatement();
       
       ResultSet rs=st.executeQuery("select * from students");
       while(rs.next()){
           StudentPojo obj=new StudentPojo();
       obj.setEnrollment(rs.getString(1));
       obj.setInstitute_id(rs.getString(2));
       obj.setGender(rs.getString(3));
       obj.setName(rs.getString(4));
       obj.setEmail(rs.getString(5));
       obj.setPhone(rs.getString(6));
       obj.set10th_percent(rs.getString(7));
       obj.set12th_percent(rs.getString(8));
       obj.setDegree_percent(rs.getString(9));
       obj.setPassout_year(rs.getString(10));
       obj.setPassout_year(rs.getString(11));
       obj.setBranch(rs.getString(12));
       
       list.add(obj);
       }
     return list;
   }
}
