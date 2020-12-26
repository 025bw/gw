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
import model.Customer;
import model.Item;
import model.Order;
import model.Order_Items;

/**
 *
 * @author z
 */
public class OrderDAO extends BaseDAO {

    @Override
    public Object get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList list() {
        ArrayList<Order> Orders = new ArrayList<>();
        String sql = "SELECT oid,phone,orderstatus,orderdate,shipaddress from Orders";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                Customer c = new Customer();
                o.setOid(rs.getInt("oid"));
                c.setPhone(rs.getInt("phone"));
                o.setCustomer(c);
                o.setOrderdate(rs.getDate("orderdate"));
                o.setShipaddress(rs.getString("shipaddress"));
                o.setOrderstatus(rs.getString("orderstatus"));
                Orders.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Orders;
    }

    public ArrayList<Order> track(String key) {
        String sql = "SELECT oid,phone,orderstatus,orderdate,shipaddress from Orders where trackkey = '"+key+"'";
        ArrayList<Order> ods = new ArrayList<>();
        
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                Customer c = new Customer();
                o.setOid(rs.getInt("oid"));
                c.setPhone(rs.getInt("phone"));
                o.setCustomer(c);
                o.setOrderdate(rs.getDate("orderdate"));
                o.setShipaddress(rs.getString("shipaddress"));
                o.setOrderstatus(rs.getString("orderstatus"));
                ods.add(o);
                        
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ods;
    }
    
    public String trackx(String key) {
        String sql = "SELECT oid,phone,orderstatus,orderdate,shipaddress from Orders where trackkey = '"+key+"'";
        
        return sql;
    }
    
    public ArrayList listitems() {
        ArrayList<Order_Items> is = new ArrayList<>();
        String sql = "SELECT oid,o.item_id,quantity,o.price,i.name from \n" +
"order_items o join item_detail i on o.item_id = i.item_id";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order_Items o = new Order_Items();
                o.setOid(rs.getInt("oid"));
                o.setPrice(rs.getInt("price"));
                Item i = new Item();
                i.setName(rs.getString("name"));
                i.setItem_id(rs.getInt("item_id"));
                o.setItem(i);
                o.setQuantity(rs.getInt("quantity"));
                is.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return is;
    }

    @Override
    public void insert(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void updatestatus(String status, int oid) {
        String sql = "UPDATE [dbo].[orders]\n"
                + "   SET \n"
                + "      [orderstatus] = '"+status+"'\n"
                + " WHERE oid = "+oid+"";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String getkey(int oid) {
        ArrayList<Order> students = new ArrayList<>();
        String sql = "select trackkey from orders where oid="+oid;
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getString("trackkey");

            }
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return "0";
    }

    public int count() {
        ArrayList<Order> students = new ArrayList<>();
        String sql = "select max(oid) as total from orders";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("total");

            }
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void insertorder(Order model) {
        String sql = "INSERT INTO [dbo].[orders]\n"
                + "           ([phone]\n"
                + "           ,[orderstatus]\n"
                + "           ,[orderdate]\n"
                + "           ,[note]\n"
                + "           ,[shipaddress]"
                + "             ,[trackkey])"
                + "     VALUES\n"
                + "           (" + model.getCustomer().getPhone() + "\n"
                + "           ,'ordered'\n"
                + "           ,GETDATE()\n"
                + "           ,'" + model.getNote() + "'\n"
                + "           ,'" + model.getShipaddress() + "',NEWID())";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String insertorderx(Order model) {
        String sql = "INSERT INTO [dbo].[orders]\n"
                + "           ([phone]\n"
                + "           ,[orderstatus]\n"
                + "           ,[orderdate]\n"
                + "           ,[note]\n"
                + "           ,[shipaddress])"
                + "     VALUES\n"
                + "           (" + model.getCustomer().getPhone() + "\n"
                + "           ,'ordered'\n"
                + "           ,GETDATE()\n"
                + "           ,'" + model.getNote() + "'\n"
                + "           ,'" + model.getShipaddress() + "')";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return sql;
    }

    public void insertitems(int oid) {

        try {
            String sql = "  INSERT INTO order_items(item_id, quantity, oid,price) \n"
                    + "     SELECT cart.item_id,cart.quantity," + oid + ",item_detail.price\n"
                    + "     from cart join item_detail on cart.item_id=item_detail.item_id;\n"
                    + "     Delete from cart";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteallrecord() {
        try {
            String sql = "Delete from order_items\n"
                    + "Delete from orders\n"
                    + "Delete from customers\n"
                    + "Delete from cart\n"
                    + "DBCC CHECKIDENT ('orders', RESEED, 1)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

}
