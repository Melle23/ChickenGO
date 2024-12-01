package Modelo;

import Controlador.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author rezro
 */
public class ModeloProducto {
    
    public ArrayList<Producto> getAllProductos(){
        ArrayList<Producto> productos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        Conexion con = new Conexion();
        
        try {
            String sql = "call selectProductos()";
            pst = con.getConexion().prepareCall(sql);
            rs = pst.executeQuery();
            
            while (rs.next()) {                
                productos.add(new Producto(rs.getInt("id_producto"), rs.getString("nombre"), 
                rs.getString("img_producto"), rs.getDouble("precio"), rs.getInt("stock")));
            }
            
        } catch (Exception e) {
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con.getConexion() != null) {
                    con.getConexion().close();
                }
            } catch (Exception e) {
            }
        }
        return productos;
    }
    
    public Producto getProducto( int id){
        Producto producto = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        Conexion con = new Conexion();
        
        try {
            String sql = "call selectProducto(?)";
            pst = con.getConexion().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            
            while (rs.next()) {                
                producto = new Producto(rs.getInt("id_producto"), rs.getString("nombre"), 
                rs.getString("img_producto"), rs.getDouble("precio"), rs.getInt("stock"));
            }
            
        } catch (Exception e) {
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con.getConexion() != null) {
                    con.getConexion().close();
                }
            } catch (Exception e) {
            }
        }
        return producto;
    }
}
