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
import dao.UsuarioDAO;
import model.Cliente;
import model.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String correoOUser = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        ClienteDAO clienteDAO = new ClienteDAO();

        // 1. Intentar iniciar sesión primero como Empleado / Usuario interno
        Usuario empleado = usuarioDAO.loginUsuario(correoOUser, contrasena);

        if (empleado != null) {
            // Es un empleado válido
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogueado", empleado);
            session.setAttribute("tipoUsuario", "empleado");
            
            // Redirigir al panel de administración o dashboard interno
            response.sendRedirect("views/admin/dashboard.jsp");
            return;
        }

        // 2. Si no se encontró en empleados, buscar en la tabla de Clientes
        Cliente cliente = clienteDAO.loginCliente(correoOUser, contrasena);

        if (cliente != null) {
            // Es un cliente válido
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogueado", cliente);
            session.setAttribute("tipoUsuario", "cliente");
            
            // Redirigir al catálogo o la página principal del cliente
            response.sendRedirect("views/cliente/catalogo.jsp");
            return;
        }

        // 3. Si en ninguna de las dos tablas coincide, credenciales incorrectas
        response.sendRedirect("login.jsp?error=credenciales_invalidas");
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