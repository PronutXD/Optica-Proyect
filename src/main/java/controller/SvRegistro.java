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
        String contrasena = request.getParameter("contrasena"); // Recuerda aplicar hash si usas seguridad avanzada

        // Crear el objeto Cliente con los datos básicos
        Cliente cliente = new Cliente();
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setIdentidad(identidad);
        cliente.setTelefono(telefono);
        cliente.setCorreo(correo);
        cliente.setContrasena(contrasena);

        // Instanciar el DAO y ejecutar el registro
        ClienteDAO clienteDAO = new ClienteDAO();
        boolean registrado = clienteDAO.registrarCliente(cliente);

        if (registrado) {
            // Redirigir al login o a una página de éxito
            response.sendRedirect("login.jsp?registro=exitoso");
        } else {
            // Redirigir de vuelta al registro con un mensaje de error
            response.sendRedirect("registro.jsp?error=falta_datos");
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