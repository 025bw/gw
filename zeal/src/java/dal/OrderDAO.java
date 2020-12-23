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
import model.Item;
import model.Order;

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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
            Logger.getLogger(ItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void insertorder(Order model) {
        String sql = "INSERT INTO [dbo].[orders]\n"
                + "           ([phone]\n"
                + "           ,[orderstatus]\n"
                + "           ,[orderdate]\n"
                + "           ,[shipaddress])"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,'ordered'\n"
                + "           ,GETDATE()\n"
                + "           ,?)";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, model.getCustomer().getPhone());
            stm.setString(2, model.getShipaddress());
            ResultSet rs = stm.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertitems(int oid) {

        try {
            String sql = "INSERT INTO order_items(item_id, quantity, oid,price) \n"
                    + "   SELECT cart.item_id,cart.quantity," + oid + ",item_detail.price\n"
                    + "   from cart join item_detail on cart.item_id=item_detail.item_id;\n"
                    + "Delete from cart";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteallrecord() {
        try {
            String sql =    "Delete from order_items\n"
                    +       "Delete from orders\n"
                    +       "Delete from customers\n"
                    +       "Delete from cart";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
