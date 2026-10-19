package po.optica.proyect.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "SvNavbarPublico", urlPatterns = {"/SvNavbarPublico"})
public class SvNavbarPublico extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtenemos el parámetro 'page' enviado desde los enlaces del navbar
        String page = request.getParameter("page");
        
        if (page == null) {
            page = "home";
        }
        
        // Evaluamos qué vista cargar desde Web Pages/views/auth/
        switch (page) {
            case "login":
                request.getRequestDispatcher("/views/auth/login.jsp").forward(request, response);
                break;
            case "register":
                request.getRequestDispatcher("/views/auth/register.jsp").forward(request, response);
                break;
            default:
                // Si no coincide o es home, redirige a la página principal
                response.sendRedirect("index.jsp");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Por ahora las peticiones POST de autenticación las manejaremos aquí o en su propio método
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Controlador de navegación pública y autenticación";
    }
}