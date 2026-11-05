package dao;

import conexion.ConexionDB;
import model.VentaSaldo;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VentaDAO {

    public List<VentaSaldo> listarVentasSaldo() {
        List<VentaSaldo> lista = new ArrayList<>();
        String sql = "SELECT * FROM vw_SaldoVentas";

        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                VentaSaldo v = new VentaSaldo();
                v.setIdVenta(rs.getInt("IdVenta"));
                v.setTipo(rs.getString("Tipo"));
                v.setFecha(rs.getTimestamp("Fecha"));
                v.setFechaLimiteApartado(rs.getDate("FechaLimiteApartado"));
                v.setEstadoVenta(rs.getString("EstadoVenta"));
                v.setDescuento(rs.getDouble("Descuento"));
                v.setSubtotal(rs.getDouble("Subtotal"));
                v.setIsv(rs.getDouble("ISV"));
                v.setTotal(rs.getDouble("Total"));
                v.setTotalPagado(rs.getDouble("TotalPagado"));
                v.setSaldoPendiente(rs.getDouble("SaldoPendiente"));
                v.setIdCliente(rs.getInt("IdCliente"));
                v.setNombreCliente(rs.getString("NombreCliente"));
                v.setIdentidadCliente(rs.getString("IdentidadCliente"));
                v.setTelefonoCliente(rs.getString("TelefonoCliente"));
                v.setNombreVendedor(rs.getString("NombreVendedor"));
                v.setNombreSucursal(rs.getString("NombreSucursal"));

                lista.add(v);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}