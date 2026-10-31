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
import org.mindrot.jbcrypt.BCrypt; // Importación necesaria para verificar el hash

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
        String contrasenaPlana = request.getParameter("contrasena");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        ClienteDAO clienteDAO = new ClienteDAO();

        // 1. Intentar buscar al empleado por correo o nombre de usuario
        Usuario empleado = usuarioDAO.buscarPorCredencial(correoOUser);

        // Validar si el empleado existe y si su contraseña coincide usando BCrypt
        if (empleado != null && empleado.getContrasenaHash() != null && 
            BCrypt.checkpw(contrasenaPlana, empleado.getContrasenaHash())) {
            
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogueado", empleado);
            session.setAttribute("tipoUsuario", "empleado");
            
            // Redirigir al panel de administración o dashboard interno
            response.sendRedirect("views/admin/dashboard.jsp");
            return;
        }

        // 2. Si no se encontró en empleados, buscar en la tabla de Clientes por correo
        Cliente cliente = clienteDAO.buscarPorCorreo(correoOUser);

        // Validar si el cliente existe y si su contraseña coincide usando BCrypt
        if (cliente != null && cliente.getContrasena() != null && 
            BCrypt.checkpw(contrasenaPlana, cliente.getContrasena())) {
            
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogueado", cliente);
            session.setAttribute("tipoUsuario", "cliente");
            
            // Redirigir al inicio mediante el servlet controlador de vistas
            response.sendRedirect("SvNavbarPublico?page=home");
            return;
        }

        // 3. Si en ninguna de las dos tablas coincide o la contraseña es errónea
        response.sendRedirect("views/auth/login.jsp?error=credenciales_invalidas");
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