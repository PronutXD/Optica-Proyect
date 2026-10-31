<%-- 
    Document   : agendar
    Created on : 31 oct 2026, 12:02:05 a.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Cliente - ÓpticaVision</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50 text-slate-800">
    
    <%
            String navbarDinamica = (String) request.getAttribute("navbarInyectada");
            if (navbarDinamica == null || navbarDinamica.trim().isEmpty()) {
                navbarDinamica = "views/components/navbars/navbar-publico.jsp"; // Fallback de seguridad
            }
            try {
                pageContext.include(navbarDinamica);
            } catch (Exception e) {
                out.println("<p style='color:red;'>Error al cargar la barra de navegación: " + e.getMessage() + "</p>");
            }
        %>

    <div class="flex min-h-screen">
        
        <!-- Componente 1: Sidebar Fijo -->
        <jsp:include page="/views/components/sidebars/sidebar-cliente.jsp" />

        <!-- Componente 2: Contenedor Dinámico de Subvistas -->
        <main class="flex-1 p-8 overflow-y-auto">
            <div class="max-w-6xl mx-auto">
                
            </div>
        </main>

    </div>
            
    <footer class="mt-12">
            <jsp:include page="/views/components/footer.jsp" />
    </footer>
      

</body>
</html>