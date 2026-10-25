<%-- 
    Document   : Catalogo
    Created on : 24 oct 2026, 11:16:48 a.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="scroll-smooth">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Catálogo - ÓpticaVision</title>

        <!-- Tailwind CSS vía CDN -->
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
        <%@ include file="/views/components/navbars/navbar-publico.jsp" %>

        <main class="flex-grow space-y-8 pb-12">
            <!-- Componente de Buscador y Filtros (Sticky) -->
            <jsp:include page="/views/components/catalogo/buscador.jsp" />

            <!-- Componente de Modelos Destacados -->
            <jsp:include page="/views/components/catalogo/destacado.jsp" />
        </main>

        <!-- Pie de Página -->
        <%@ include file="/views/components/footer.jsp" %>

    </body>
</html>