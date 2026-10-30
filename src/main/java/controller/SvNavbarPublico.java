package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet controlador para la navegación pública de la aplicación.
 * @author User
 */
@WebServlet(name = "SvNavbarPublico", urlPatterns = {"/SvNavbarPublico"})
public class SvNavbarPublico extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtenemos el parámetro 'page' enviado desde los enlaces del navbar
        String page = request.getParameter("page");
        
        if (page == null || page.trim().isEmpty()) {
            page = "home";
        }
        
        // Evaluamos qué vista cargar según la sección solicitada
        switch (page) {
            case "home":
            case "inicio":
                response.sendRedirect("index.jsp");
                break;

            case "catalogo":
                request.getRequestDispatcher("catalogo.jsp").forward(request, response);
                break;

            case "servicios":
                // Vista pendiente de implementar o redirigir
                request.getRequestDispatcher("servicios.jsp").forward(request, response);
                break;

            case "contacto":
                // Vista pendiente de implementar o redirigir
                request.getRequestDispatcher("contacto.jsp").forward(request, response);
                break;

            case "login":
                request.getRequestDispatcher("/views/auth/login.jsp").forward(request, response);
                break;

            case "register":
                request.getRequestDispatcher("/views/auth/register.jsp").forward(request, response);
                break;

            default:
                // Si la ruta no coincide, por defecto enviamos al inicio
                response.sendRedirect("index.jsp");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Controlador de navegación pública y ruteo de vistas";
    }
}