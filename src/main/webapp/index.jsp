<%-- 
    Document   : index
    Created on : 17 oct 2026, 6:44:26 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="scroll-smooth">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Óptica - Claridad y Estilo para tu Visión</title>

        <!-- Tailwind CSS via CDN -->
        <script src="https://cdn.tailwindcss.com"></script>
        
        <!-- Google Fonts: Inter -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

        <style>
            body { font-family: 'Inter', sans-serif; }
        </style>
    </head>
    <body class="bg-slate-100/70 text-slate-700 antialiased min-h-screen flex flex-col justify-between">

        <!-- Barra de Navegación Pública -->
        <!-- Barra de Navegación Dinámica Controlada por el Servlet -->
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

        <main>
            <!-- Sección Hero (Con enfoque multimedia / video de fondo preparado) -->
            <%@ include file="/views/components/index/hero.jsp" %>

            <!-- Catálogo Destacado (Ahora va primero para enganchar al usuario) -->
            <%@ include file="/views/components/index/catalogo-preview.jsp" %>

            <!-- Sección de Servicios (Movida hacia abajo) -->
            <%@ include file="/views/components/index/servicios.jsp" %>
        </main>

        <!-- Pie de Página (Más compacto) -->
        <%@ include file="/views/components/footer.jsp" %>

    </body>
</html>