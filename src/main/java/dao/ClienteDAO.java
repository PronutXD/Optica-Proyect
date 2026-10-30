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

    // Método para registrar un nuevo cliente desde la vista pública de registro
    public boolean registrarCliente(Cliente cliente) {
        String sql = "INSERT INTO Cliente (Nombre, Apellido, Identidad, Telefono, Correo, Contrasena, Activo, FechaRegistro) VALUES (?, ?, ?, ?, ?, ?, 1, GETDATE())";
        
        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getApellido());
            ps.setString(3, cliente.getIdentidad());
            ps.setString(4, cliente.getTelefono());
            ps.setString(5, cliente.getCorreo());
            ps.setString(6, cliente.getContrasena()); // Idealmente cifrada con BCrypt, o texto plano para pruebas iniciales
            
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
            
        } catch (SQLException e) {
            System.err.println("❌ Error al registrar cliente: " + e.getMessage());
            return false;
        }
    }

    // Método para validar el inicio de sesión del cliente por correo y contraseña
    public Cliente loginCliente(String correo, String contrasena) {
        String sql = "SELECT * FROM Cliente WHERE Correo = ? AND Contrasena = ? AND Activo = 1";
        Cliente cliente = null;
        
        try (Connection con = ConexionDB.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, correo);
            ps.setString(2, contrasena);
            
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
                    cliente.setFechaNacimiento(rs.getDate("FechaNacimiento"));
                    cliente.setDireccion(rs.getString("Direccion"));
                    cliente.setFechaRegistro(rs.getTimestamp("FechaRegistro"));
                    cliente.setActivo(rs.getBoolean("Activo"));
                }
            }
        } catch (SQLException e) {
            System.err.println("❌ Error en login de cliente: " + e.getMessage());
        }
        
        return cliente; // Retorna null si las credenciales son incorrectas
    }
}