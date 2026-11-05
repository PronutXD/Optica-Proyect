package dao;

import conexion.ConexionDB;
import model.InventarioDetalle;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class InventarioDAO {

    public List<InventarioDetalle> listarInventarioDetalle() {
        List<InventarioDetalle> lista = new ArrayList<>();
        String sql = "SELECT * FROM vw_InventarioDetalle";

        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                InventarioDetalle inv = new InventarioDetalle();
                inv.setIdProducto(rs.getInt("IdProducto"));
                inv.setIdSucursal(rs.getInt("IdSucursal"));
                inv.setStock(rs.getInt("Stock"));
                inv.setStockMinimo(rs.getInt("StockMinimo"));
                inv.setCodigoProducto(rs.getString("CodigoProducto"));
                inv.setNombreProducto(rs.getString("NombreProducto"));
                inv.setMarca(rs.getString("Marca"));
                inv.setPrecioCompra(rs.getDouble("PrecioCompra"));
                inv.setPrecioVenta(rs.getDouble("PrecioVenta"));
                inv.setIdCategoria(rs.getInt("IdCategoria"));
                inv.setNombreCategoria(rs.getString("NombreCategoria"));
                inv.setNombreSucursal(rs.getString("NombreSucursal"));
                inv.setDireccionSucursal(rs.getString("DireccionSucursal"));

                lista.add(inv);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}