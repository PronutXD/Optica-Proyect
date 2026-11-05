package dao;

import conexion.ConexionDB;
import model.UsuarioSistema;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsuarioSistemaDAO {

    public List<UsuarioSistema> listarUsuariosSistema() {
        List<UsuarioSistema> lista = new ArrayList<>();
        String sql = "SELECT * FROM vw_UsuariosSistema";

        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                UsuarioSistema u = new UsuarioSistema();
                u.setIdUsuario(rs.getInt("IdUsuario"));
                u.setNombreUsuario(rs.getString("NombreUsuario"));
                u.setContrasenaHash(rs.getString("ContrasenaHash"));
                u.setNombreCompleto(rs.getString("NombreCompleto"));
                u.setCorreo(rs.getString("Correo"));
                u.setActivo(rs.getBoolean("Activo"));
                u.setFechaCreacion(rs.getTimestamp("FechaCreacion"));
                u.setIdRol(rs.getInt("IdRol"));
                u.setRol(rs.getString("Rol"));
                u.setIdSucursal(rs.getInt("IdSucursal"));
                u.setSucursal(rs.getString("Sucursal"));

                lista.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}