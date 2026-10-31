/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author User
 */
import conexion.ConexionDB;
import model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {

    // Método para buscar al empleado únicamente por correo o nombre de usuario
    public Usuario buscarPorCredencial(String correoOUser) {
        // Quitamos la validación de la contraseña del SQL para que el controlador verifique el hash con BCrypt
        String sql = "SELECT * FROM Usuario WHERE (Correo = ? OR NombreUsuario = ?) AND Activo = 1";
        Usuario usuario = null;
        
        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, correoOUser);
            ps.setString(2, correoOUser);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    usuario = new Usuario();
                    usuario.setIdUsuario(rs.getInt("IdUsuario"));
                    usuario.setIdRol(rs.getInt("IdRol"));
                    usuario.setIdSucursal(rs.getInt("IdSucursal"));
                    usuario.setNombreUsuario(rs.getString("NombreUsuario"));
                    usuario.setContrasenaHash(rs.getString("ContrasenaHash")); // ¡Importante traer el hash!
                    usuario.setNombreCompleto(rs.getString("NombreCompleto"));
                    usuario.setCorreo(rs.getString("Correo"));
                    usuario.setActivo(rs.getBoolean("Activo"));
                    usuario.setFechaCreacion(rs.getTimestamp("FechaCreacion"));
                }
            }
        } catch (SQLException e) {
            System.err.println("❌ Error al buscar usuario/empleado: " + e.getMessage());
        }
        
        return usuario;
    }
}