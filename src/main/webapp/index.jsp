<%--
    Document   : index
    Created on : 17 oct 2026, 6:44:26 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="scroll-smooth">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Óptica - Claridad y Estilo para tu Visión</title>

        <!-- Marca la página como "con JavaScript" para activar las animaciones suaves -->
        <script>document.documentElement.classList.add('js');</script>

        <!-- Tailwind CSS via CDN -->
        <script src="https://cdn.tailwindcss.com"></script>

        <!-- Google Fonts: Inter -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

        <style>
            body { font-family: 'Inter', sans-serif; }

            /* Al hacer clic en el menú, la sección no queda tapada por la barra fija */
            html { scroll-padding-top: 5rem; }

            /* Aparición suave al hacer scroll */
            .js .reveal {
                opacity: 0;
                transform: translateY(16px);
                transition: opacity .7s ease, transform .7s ease;
            }
            .js .reveal.is-visible { opacity: 1; transform: none; }

            /* Respeta a quien prefiere menos movimiento */
            @media (prefers-reduced-motion: reduce) {
                html { scroll-behavior: auto; }
                .js .reveal { opacity: 1; transform: none; transition: none; }
            }
        </style>
    </head>
    <body class="bg-white text-slate-600 antialiased min-h-screen flex flex-col">

        <!-- Barra de Navegación Pública -->
        <%@ include file="/views/components/navbars/navbar-publico.jsp" %>

        <main class="flex-1">
            <!-- Sección Hero -->
            <%@ include file="/views/components/index/hero.jsp" %>

            <!-- Catálogo Destacado -->
            <%@ include file="/views/components/index/catalogo-preview.jsp" %>

            <!-- Sección de Servicios -->
            <%@ include file="/views/components/index/servicios.jsp" %>
        </main>

        <!-- Pie de Página -->
        <%@ include file="/views/components/footer.jsp" %>

        <script>
            // Muestra cada bloque con una animación suave cuando entra en pantalla
            (function () {
                var els = document.querySelectorAll('.reveal');
                if (!('IntersectionObserver' in window)) {
                    els.forEach(function (e) { e.classList.add('is-visible'); });
                    return;
                }
                var io = new IntersectionObserver(function (entries) {
                    entries.forEach(function (en) {
                        if (en.isIntersecting) {
                            en.target.classList.add('is-visible');
                            io.unobserve(en.target);
                        }
                    });
                }, { threshold: 0.12 });
                els.forEach(function (e) { io.observe(e); });
            })();
        </script>
    </body>
</html>
