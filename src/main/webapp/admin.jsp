<%-- 
    Document   : admin
    Created on : 31 oct 2026, 12:01:45 a.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Verificar directamente la sesión para determinar el navbar correcto para empleados/admin
    HttpSession sesionActual = request.getSession(false);
    boolean empleadoAutenticado = (sesionActual != null && sesionActual.getAttribute("usuarioLogueado") != null);
    
    // Seleccionar la ruta del navbar según el estado de autenticación del personal
    String navbarDinamica = empleadoAutenticado 
        ? "/views/components/navbars/navbar-empleado.jsp" 
        : "/views/components/navbars/navbar-publico.jsp";
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administración - ÓpticaVision</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50 text-slate-800">

    <%-- 1. Navbar Superior Condicional por Sesión de Empleado/Admin --%>
    <%
        try {
            pageContext.include(navbarDinamica);
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error al cargar la barra: " + e.getMessage() + "</p>");
        }
    %>

    <div class="flex min-h-screen">
        
        <!-- 2. Sidebar Fijo de Administración -->
        <jsp:include page="/views/components/sidebars/sidebar-admin.jsp" />

        <!-- 3. Contenedor Dinámico de Subvistas del Panel Admin -->
        <main class="flex-1 p-8 overflow-y-auto">
            <div class="max-w-6xl mx-auto">
                <%-- Bloque seguro: si el servlet no envió vistaActual, carga el dashboard general por defecto --%>
                <%
                    String subvista = (String) request.getAttribute("vistaActual");
                    if (subvista == null || subvista.trim().isEmpty()) {
                        subvista = "/views/components/admin/dashboard.jsp"; // O la ruta por defecto que prefieras para el panel
                    }
                %>
                <jsp:include page="<%= subvista %>" />
            </div>
        </main>

    </div>
        
    <!-- 4. Footer -->
    <footer class="mt-12">
        <jsp:include page="/views/components/footer.jsp" />
    </footer>

</body>
</html>