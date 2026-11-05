package dao;

import conexion.ConexionDB;
import model.CitaDetalle;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CitaDAO {

    public List<CitaDetalle> listarCitasDetalle() {
        List<CitaDetalle> lista = new ArrayList<>();
        String sql = "SELECT * FROM vw_CitasDetalle";

        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                CitaDetalle c = new CitaDetalle();
                c.setIdCita(rs.getInt("IdCita"));
                c.setFechaHora(rs.getTimestamp("FechaHora"));
                c.setEstado(rs.getString("Estado"));
                c.setNotas(rs.getString("Notas"));
                c.setIdCliente(rs.getInt("IdCliente"));
                c.setNombreCliente(rs.getString("NombreCliente"));
                c.setIdentidadCliente(rs.getString("IdentidadCliente"));
                c.setTelefonoCliente(rs.getString("TelefonoCliente"));
                c.setIdServicio(rs.getInt("IdServicio"));
                c.setNombreServicio(rs.getString("NombreServicio"));
                c.setPrecioServicio(rs.getDouble("PrecioServicio"));
                c.setIdUsuario(rs.getInt("IdUsuario"));
                c.setNombreOptometrista(rs.getString("NombreOptometrista"));
                c.setIdSucursal(rs.getInt("IdSucursal"));
                c.setNombreSucursal(rs.getString("NombreSucursal"));

                lista.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}