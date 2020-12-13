/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Dummy;
import model.Student;

/**
 *
 * @author sonnt
 */
public class DummyDAO extends BaseDAO<Dummy> {

    @Override
    public Dummy get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Dummy> list() {
        ArrayList<Dummy> dummies = new ArrayList<>();
        String sql = "SELECT id,name FROM Dummy";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Dummy d = new Dummy();
                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                dummies.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DummyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dummies;
    }
    
    public ArrayList<Dummy> paging(int pagesize, int pageindex) {
        ArrayList<Dummy> dummies = new ArrayList<>();
        String sql = "SELECT id,name FROM \n" +
"(SELECT ROW_NUMBER() OVER (ORDER BY id ASC)\n" +
"as rownum, *  FROM Dummy) tbl\n" +
"WHERE \n" +
"rownum >= (? -1)*? + 1 AND rownum <= ? * ?";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, pageindex);
            stm.setInt(2, pagesize);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Dummy d = new Dummy();
                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                dummies.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DummyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dummies;
    }
    public int count() {
        ArrayList<Dummy> dummies = new ArrayList<>();
        String sql = "SELECT COUNT(*) as total FROM Dummy";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DummyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    
    @Override
    public void insert(Dummy model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Dummy model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
