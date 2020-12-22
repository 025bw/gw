package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Item;

public class ItemDAO extends BaseDAO {

    @Override
    public Object get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Item> list() {
        ArrayList<Item> items = new ArrayList<>();
        String sql = "SELECT [item_id]\n"
                + "      ,[price]\n"
                + "      ,[cat_id]\n"
                + "      ,[name]\n"
                + "      ,[stock]\n"
                + "  FROM [dbo].[item_detail]";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Item i = new Item();
                i.setItem_id(rs.getInt("item_id"));
                i.setName(rs.getString("name"));
                Category c = new Category();
                c.setCat_id(rs.getInt("cat_id"));
                i.setCategory(c);
                i.setPrice(rs.getInt("price"));
                i.setStock(rs.getInt("stock"));
                items.add(i);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return items;
    }

    @Override
    public void insert(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int count() {
        ArrayList<Item> students = new ArrayList<>();
        String sql = "SELECT COUNT(*) as total FROM [dbo].[item_detail]";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<Item> listpaging(int pagesize, int pageindex, String sort) {
        ArrayList<Item> items = new ArrayList<>();
        String sql = "SELECT [item_id]\n"
                + "                   ,[price]\n"
                + "                   ,[cat_id]\n"
                + "                   ,[name]\n"
                + "                   ,[stock]\n"
                + "                 FROM (SELECT ROW_NUMBER() OVER (ORDER BY ? )\n"
                + "                as rownum, *  FROM item_detail ) tbl\n"
                + "                WHERE \n"
                + "                rownum >= (? -1)*? + 1 AND rownum <= ? * ?";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            if (sort == null) {
                sort = "item_id asc";
            }
            stm.setString(1, sort);
            stm.setInt(2, pageindex);
            stm.setInt(3, pagesize);
            stm.setInt(4, pageindex);
            stm.setInt(5, pagesize);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Item i = new Item();
                i.setItem_id(rs.getInt("item_id"));
                i.setName(rs.getString("name"));
                Category c = new Category();
                c.setCat_id(rs.getInt("cat_id"));
                i.setCategory(c);
                i.setPrice(rs.getInt("price"));
                i.setStock(rs.getInt("stock"));
                items.add(i);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return items;
    }

    public ArrayList<Item> search(Integer catid, String name, Integer from, Integer to, String sort, int pagesize, int pageindex, String instock) {
        ArrayList<Item> items = new ArrayList<>();
        Integer index = 1;
        String sql = "SELECT item_id, name, price, stock, cat_id, cat_name FROM (SELECT ROW_NUMBER() OVER (ORDER BY ? ) as rownum, i.item_id, i.name,i.price,i.stock,i.cat_id,c.cat_name FROM item_detail i join category c on i.cat_id=c.cat_id where (1=1)";
        if (catid != null) {
            sql += " and i.cat_id = ? ";
        }
        if (name != null) {
            sql += " and name like '%'+ ? + '%' ";
        }
        if (from != null) {
            sql += " and price > ? ";
        }
        if (to != null) {
            sql += " and price < ? ";
        }
        if (instock.equals(""
                + "on"))
        {
            sql += " and stock > 0 ";
        }
        sql +=") tbl WHERE rownum >= (? -1)*? + 1 AND rownum <= ? * ?";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            
            if (sort != null) {
                stm.setString(1, sort);
            }else
                stm.setString(1, "item_id");
            if (catid != null) {
                index++;
                stm.setInt(index, catid);
            }
            if (name != null) {
                index++;
                stm.setString(index, name);
            }
            if (from != null) {
                index++;
                stm.setInt(index, from);
            }
            if (to != null) {
                index++;
                stm.setInt(index, to);
            }
            index++;
            stm.setInt(index, pageindex);
            index++;
            stm.setInt(index, pagesize);
            index++;
            stm.setInt(index, pageindex);
            index++;
            stm.setInt(index, pagesize);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Item i = new Item();
                i.setItem_id(rs.getInt("item_id"));
                i.setName(rs.getString("name"));
                Category c = new Category();
                c.setCat_id(rs.getInt("cat_id"));
                i.setCategory(c);
                i.setPrice(rs.getInt("price"));
                i.setStock(rs.getInt("stock"));
                items.add(i);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return items;
    }

}
