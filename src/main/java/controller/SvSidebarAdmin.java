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
import model.CitaDetalle;
import model.InventarioDetalle;
import model.VentaSaldo;
import model.UsuarioSistema;
import dao.CitaDAO;
import dao.InventarioDAO;
import dao.VentaDAO;
import dao.UsuarioSistemaDAO;
import java.util.List;

/**
 * Servlet controlador para gestionar la navegación interna del panel y sidebar de administración.
 * @author User
 */
@WebServlet(name = "SvSidebarAdmin", urlPatterns = {"/SvSidebarAdmin"})
public class SvSidebarAdmin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Validar que exista una sesión activa y que pertenezca a un empleado/administrador
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuarioLogueado") == null) {
            response.sendRedirect(request.getContextPath() + "/views/auth/login.jsp?error=sesion_expirada");
            return;
        }

        // 2. Obtener el parámetro 'action' enviado desde los enlaces del sidebar de admin
        String action = request.getParameter("action");
        
        if (action == null || action.trim().isEmpty()) {
            action = "dashboard";
        }
        
        String subvista = "";

        // 3. Mapear las acciones a las subvistas correspondientes del panel de administración
        switch (action) {
            case "dashboard":
                subvista = "/views/components/admin/dashboard.jsp";
                break;
            case "citas":
                try {
                        CitaDAO citaDao = new CitaDAO();
                        List<CitaDetalle> listaCitas = citaDao.listarCitasDetalle();
                        request.setAttribute("listaCitas", listaCitas);
                    } catch (Exception e) {
                        e.printStackTrace(); 
                        request.setAttribute("listaCitas", new java.util.ArrayList<>()); // Evita nulos
                    }
                 subvista = "/views/components/admin/citas.jsp";
                break;
            case "inventario":
                try {
                        InventarioDAO inventarioDao = new InventarioDAO();
                        List<InventarioDetalle> listaInventario = inventarioDao.listarInventarioDetalle();
                        request.setAttribute("listaInventario", listaInventario);
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.setAttribute("listaInventario", new java.util.ArrayList<>());
                    }
                subvista = "/views/components/admin/inventario.jsp";
                break;
            case "ventas":
                try {
                        VentaDAO ventaDao = new VentaDAO();
                        List<VentaSaldo> listaVentas = ventaDao.listarVentasSaldo();
                        request.setAttribute("listaVentas", listaVentas);
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.setAttribute("listaVentas", new java.util.ArrayList<>());
                    }
                subvista = "/views/components/admin/ventas.jsp";
                break;
            case "usuarios":
                try {
                        UsuarioSistemaDAO usuarioDao = new UsuarioSistemaDAO();
                        List<UsuarioSistema> listaUsuarios = usuarioDao.listarUsuariosSistema();
                        request.setAttribute("listaUsuarios", listaUsuarios);
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.setAttribute("listaUsuarios", new java.util.ArrayList<>());
                    }
                subvista = "/views/components/admin/usuarios.jsp";
                break;
            default:
                subvista = "/views/components/admin/dashboard.jsp";
                break;
        }

        // 4. Guardar la subvista que se va a inyectar en el contenedor maestro
        request.setAttribute("vistaActual", subvista);

        // 5. Redirigir al layout maestro de administración (admin.jsp)
        request.getRequestDispatcher("/admin.jsp").forward(request, response);    
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
        return "Controlador de subvistas del panel de administración";
    }
}