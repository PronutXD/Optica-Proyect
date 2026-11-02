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
import model.Cliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClienteDAO {

    public boolean registrarCliente(Cliente cliente) {
        String sql = "INSERT INTO Cliente (Nombre, Apellido, Identidad, Telefono, Correo, Contrasena, Activo, FechaRegistro) VALUES (?, ?, ?, ?, ?, ?, 1, GETDATE())";
        
        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getApellido());
            ps.setString(3, cliente.getIdentidad());
            ps.setString(4, cliente.getTelefono());
            ps.setString(5, cliente.getCorreo());
            ps.setString(6, cliente.getContrasena()); // Recibe el hash ya preparado por el controlador de registro
            
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
            
        } catch (SQLException e) {
            System.err.println("❌ Error al registrar cliente: " + e.getMessage());
            return false;
        }
    }

    // Método para buscar al cliente únicamente por su correo
    public Cliente buscarPorCorreo(String correo) {
        // Quitamos la validación de la contraseña del SQL para que el controlador verifique el hash
        String sql = "SELECT * FROM Cliente WHERE Correo = ? AND Activo = 1";
        Cliente cliente = null;
        
        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, correo);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    cliente = new Cliente();
                    cliente.setIdCliente(rs.getInt("IdCliente"));
                    cliente.setNombre(rs.getString("Nombre"));
                    cliente.setApellido(rs.getString("Apellido"));
                    cliente.setIdentidad(rs.getString("Identidad"));
                    cliente.setRtn(rs.getString("RTN"));
                    cliente.setTelefono(rs.getString("Telefono"));
                    cliente.setCorreo(rs.getString("Correo"));
                    cliente.setContrasena(rs.getString("Contrasena")); // ¡Importante traer el hash guardado!
                    cliente.setFechaNacimiento(rs.getDate("FechaNacimiento"));
                    cliente.setDireccion(rs.getString("Direccion"));
                    cliente.setFechaRegistro(rs.getTimestamp("FechaRegistro"));
                    cliente.setActivo(rs.getBoolean("Activo"));
                }
            }
        } catch (SQLException e) {
            System.err.println("❌ Error al buscar cliente por correo: " + e.getMessage());
        }
        
        return cliente;
    }
}