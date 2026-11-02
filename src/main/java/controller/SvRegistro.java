/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

/**
 *
 * @author User
 */
import dao.ClienteDAO;
import model.Cliente;
import org.mindrot.jbcrypt.BCrypt; // Importación necesaria para el cifrado con BCrypt

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SvRegistro", urlPatterns = {"/SvRegistro"})
public class SvRegistro extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Capturar los datos enviados desde el formulario de registro
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String identidad = request.getParameter("identidad");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String contrasenaPlana = request.getParameter("contrasena");

        // SEGURIDAD: Hashear la contraseña en el controlador antes de asignarla al modelo
        String passwordHash = BCrypt.hashpw(contrasenaPlana, BCrypt.gensalt());

        // Crear el objeto Cliente con el hash de la contraseña (nunca en texto plano)
        Cliente cliente = new Cliente();
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setIdentidad(identidad);
        cliente.setTelefono(telefono);
        cliente.setCorreo(correo);
        cliente.setContrasena(passwordHash);

        // Instanciar el DAO y ejecutar el registro
        ClienteDAO clienteDAO = new ClienteDAO();
        boolean registrado = clienteDAO.registrarCliente(cliente);

        if (registrado) {
            // Redirigir al login con parámetro de éxito
            response.sendRedirect("views/auth/login.jsp?registro=exitoso");
        } else {
            // Redirigir de vuelta al registro con un mensaje de error
            response.sendRedirect("views/auth/register.jsp?error=falta_datos");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}