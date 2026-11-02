/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet controlador para gestionar la navegación interna del panel y sidebar del cliente.
 * @author User
 */
@WebServlet(name = "SvSidebarCliente", urlPatterns = {"/SvSidebarCliente"})
public class SvSidebarCliente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Validar que exista una sesión activa y que sea un cliente
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuarioLogueado") == null) {
            response.sendRedirect(request.getContextPath() + "/views/auth/login.jsp?error=sesion_expirada");
            return;
        }

        // 2. Obtener el parámetro 'action' enviado desde los enlaces del sidebar
        String action = request.getParameter("action");
        
        if (action == null || action.trim().isEmpty()) {
            action = "dashboard";
        }
        
        String subvista = "";

        // 3. Mapear las acciones manteniendo exactamente tus rutas originales
        switch (action) {
            case "dashboard":
                subvista = "/views/components/agendar/dashboard.jsp";
                break;
            case "agendar":
            case "citas":
                subvista = "/views/components/agendar/citas.jsp";
                break;
            case "resultados":
                subvista = "/views/components/agendar/resultados.jsp";
                break;
            case "facturas":
                subvista = "/views/components/agendar/facturas.jsp";
                break;
            default:
                subvista = "/views/components/agendar/dashboard.jsp";
                break;
        }

        // 4. Guardas la subvista que se va a inyectar
        request.setAttribute("vistaActual", subvista);

        // 5. Rediriges al contenedor maestro (agendar.jsp)
        request.getRequestDispatcher("/agendar.jsp").forward(request, response);    
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

    @Override
    public String getServletInfo() {
        return "Controlador de subvistas del panel de cliente";
    }
}