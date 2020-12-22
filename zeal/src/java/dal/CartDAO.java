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
import model.Cart;
import model.Item;

/**
 *
 * @author z
 */
public class CartDAO extends BaseDAO {

    @Override
    public Object get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList list() {
        ArrayList<Cart> carts = new ArrayList<>();
        String sql = "SELECT c.item_id,"
                + "sum(c.quantity)quantity,"
                + "i.name,"
                + "i.price,"
                + "i.stock "
                + "from cart c join item_detail i "
                + "on c.item_id=i.item_id "
                + "group by c.item_id , i.name , i.price , i.stock";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Cart cart = new Cart();
                Item i = new Item();
                i.setItem_id(rs.getInt("item_id"));
                i.setName(rs.getString("name"));
                i.setStock(rs.getInt("stock"));
                i.setPrice(rs.getInt("price"));
                cart.setItem(i);
                cart.setQuantity(rs.getInt("quantity"));
                carts.add(cart);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return carts;
    }

    public void insert(Cart model) {
        try {
            String sql = "INSERT INTO [dbo].[cart]\n"
                    + "           ([item_id]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, model.getItem().getItem_id());
            stm.setInt(2, model.getQuantity());
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete() {
        try {
            String sql = "DELETE FROM [dbo].[cart]";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void insert(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int count() {
        ArrayList<Item> students = new ArrayList<>();
        String sql = "SELECT COUNT(*) as total FROM cart";
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
}
