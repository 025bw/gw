/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Department;
import model.Student;

/**
 *
 * @author sonnt
 */
public class StudentDAO extends BaseDAO<Student> {

    @Override
    public Student get(int id) {
        String sql = "SELECT [id]\n" +
                    "      ,[name]\n" +
                    "      ,[gender]\n" +
                    "      ,[dob]\n" +
                    "      ,s.[did]\n" +
                    "	  ,d.dname\n" +
                    "  FROM [Student] s\n" +
                    "  INNER JOIN Department d\n" +
                    "  ON s.did = d.did\n" +
                    "  WHERE s.id = ?";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setDob(rs.getDate("dob"));
                s.setGender(rs.getBoolean("gender"));
                Department d = new Department();
                d.setId(rs.getInt("did"));
                d.setName(rs.getString("dname"));
                s.setDept(d);
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<Student> search(Integer id, String name, Boolean gender,
            Date from, Date to, Department d
            ) {
        ArrayList<Student> students = new ArrayList<>();
        Integer index = 0;
        String sql = "SELECT id,name, gender, dob FROM Student WHERE (1=1) ";
        if(id != null)
        {
            sql +=" AND id = ? ";
        }
        if(name != null)
        {
            sql +=" AND name like '%'+ ? + '%' ";
        }
        if(gender != null)
        {
            sql += " AND gender = ? ";
        }
        if(from != null)
        {
            sql += " AND dob >= ? ";
        }
        if(to != null)
        {
            sql += " AND dob <= ? ";
            index++;
        }
        if(d != null)
        {
            sql += " AND did = ? ";
        }
        
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            if(id != null)
            {
                index++;
                stm.setInt(index, id);
            }
            if(name != null)
            {
                index++;
                stm.setString(index, name);
            }
            if(gender != null)
            {
                index++;
                stm.setBoolean(index, gender);
            }
            if(from != null)
            {
                index++;
                stm.setDate(index, from);
            }
            if(to != null)
            {
                index++;
                stm.setDate(index, to);
            }
            if(d != null)
            {
                index++;
                stm.setInt(index, d.getId());
            }
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setDob(rs.getDate("dob"));
                s.setGender(rs.getBoolean("gender"));
                students.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

    @Override
    public ArrayList<Student> list() {
        ArrayList<Student> students = new ArrayList<>();
        String sql = "SELECT id,name, gender, dob FROM Student";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setDob(rs.getDate("dob"));
                s.setGender(rs.getBoolean("gender"));
                students.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }
    
    public ArrayList<Student> searchByName(String name) {
        ArrayList<Student> students = new ArrayList<>();
        String sql = "SELECT id,name, gender, dob FROM Student WHERE name like '%' + ? +'%'";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setDob(rs.getDate("dob"));
                s.setGender(rs.getBoolean("gender"));
                students.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

    @Override
    public void insert(Student model) {
        try {
            String sql = "INSERT INTO [Student]\n" +
                    "           ([id]\n" +
                    "           ,[name]\n" +
                    "           ,[gender]\n" +
                    "           ,[dob]\n" +
                    "           ,[did])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, model.getId());
            stm.setString(2, model.getName());
            stm.setBoolean(3, model.isGender());
            stm.setDate(4, model.getDob());
            stm.setInt(5, model.getDept().getId());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    public void update(Student model) {
        try {
            String sql = "UPDATE [Student]\n" +
            "   SET \n" +
            "      [name] = ?\n" +
            "      ,[gender] = ?\n" +
            "      ,[dob] = ?\n" +
            "      ,[did] = ?\n" +
            " WHERE [id] = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            
            stm.setString(1, model.getName());
            stm.setBoolean(2, model.isGender());
            stm.setDate(3, model.getDob());
            stm.setInt(4, model.getDept().getId());
            stm.setInt(5, model.getId());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id) {
    try {
        String sql = "DELETE FROM Student WHERE id = ?";
        PreparedStatement stm;
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
