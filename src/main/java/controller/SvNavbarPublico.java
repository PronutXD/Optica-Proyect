package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet controlador para la navegación pública de la aplicación.
 * @author User
 */
@WebServlet(name = "SvNavbarPublico", urlPatterns = {"/SvNavbarPublico"})
public class SvNavbarPublico extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Evaluar la sesión actual para determinar qué navbar inyectar dinámicamente
        HttpSession session = request.getSession(false);
        Object usuarioLogueado = (session != null) ? session.getAttribute("usuarioLogueado") : null;
        String tipoUsuario = (session != null) ? (String) session.getAttribute("tipoUsuario") : null;
        
        String navbarSeleccionada = "views/components/navbars/navbar-publico.jsp";
        
        if (usuarioLogueado != null) {
            if ("empleado".equals(tipoUsuario)) {
                navbarSeleccionada = "views/components/navbars/navbar-empleado.jsp";
            } else if ("cliente".equals(tipoUsuario)) {
                navbarSeleccionada = "views/components/navbars/navbar-cliente.jsp";
            }
        }
        
        // Inyectar la ruta de la navbar seleccionada como atributo para que la vista la reciba
        request.setAttribute("navbarInyectada", navbarSeleccionada);

        // 2. Obtenemos el parámetro 'page' enviado desde los enlaces del navbar
        String page = request.getParameter("page");
        
        if (page == null || page.trim().isEmpty()) {
            page = "home";
        }
        
        // 3. Evaluamos qué vista cargar según la sección solicitada
        // Usamos forward en lugar de sendRedirect para conservar el atributo 'navbarInyectada'
        switch (page) {
            case "home":
            case "inicio":
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;

            case "catalogo":
                request.getRequestDispatcher("catalogo.jsp").forward(request, response);
                break;

            case "servicios":
                request.getRequestDispatcher("servicios.jsp").forward(request, response);
                break;

            case "contacto":
                request.getRequestDispatcher("contacto.jsp").forward(request, response);
                break;

            case "login":
                request.getRequestDispatcher("/views/auth/login.jsp").forward(request, response);
                break;

            case "register":
                request.getRequestDispatcher("/views/auth/register.jsp").forward(request, response);
                break;

            default:
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
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

    @Override
    public String getServletInfo() {
        return "Controlador de navegación pública y ruteo de vistas";
    }
}