/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOClasses;

import PojoClasses.InstitutePojo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class InstituteDAO {
   
    public static boolean addInstitute(Connection conn,InstitutePojo obj)throws SQLException {
        PreparedStatement ps=conn.prepareStatement("insert into institutes values(?,?,?,?,?,?,?,?,?,?,?,?,?,?");
        ps.setString(1,obj.getInstitute_id());
        ps.setString(2,obj.getName());
        ps.setString(3,obj.getCity());
        ps.setString(4,obj.getState());
        ps.setString(5,obj.getStudents_count());
        ps.setString(6,obj.getVerified());
        ps.setString(7,obj.getPassword());
        ps.setString(8,obj.getPostal_code());
        ps.setString(9, obj.getAddress());
        ps.setString(10,obj.getRegion());
        ps.setString(11,obj.getType());
        ps.setString(12,obj.getWebsite());
        ps.setString(13,obj.getPhone());
        ps.setString(14,obj.getEmail());
        
        return ps.executeUpdate()==1;
    }
    public static List<InstitutePojo> getAllInstitute(Connection conn)throws SQLException{
        Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select * from institutes");
        List<InstitutePojo>list=new ArrayList<>();
        while(rs.next()){
            InstitutePojo obj=new InstitutePojo();
            obj.setInstitute_id(rs.getString(1));
            obj.setName(rs.getString(2));
            obj.setCity(rs.getString(3));
            obj.setState(rs.getString(4));
            obj.setStudents_count(rs.getString(5));
            obj.setVerified(rs.getString(6));
            obj.setPassword(rs.getString(7));
            obj.setPostal_code(rs.getString(8));
            obj.setAddress(rs.getString(9));
            obj.setRegion(rs.getString(10));
            obj.setType(rs.getString(11));
            obj.setWebsite(rs.getString(12));
            obj.setPhone(rs.getString(13));
            obj.setEmail(rs.getString(14));
            list.add(obj);
        }
        return list;
    }
    
}
