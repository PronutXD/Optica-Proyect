<%--
    Document   : login
    Created on : 19 oct 2026, 1:37:32 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - ÓpticaVision</title>

    <!-- Tailwind CSS vía CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Google Fonts: Inter -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        body { font-family: 'Inter', sans-serif; }

        @keyframes entrar {
            from { opacity: 0; transform: translateY(12px); }
            to   { opacity: 1; transform: none; }
        }
        .entrar { animation: entrar .6s ease both; }

        @media (prefers-reduced-motion: reduce) {
            .entrar { animation: none; }
        }
    </style>
</head>
<body class="text-slate-700 antialiased flex items-center justify-center min-h-screen px-4 bg-slate-50 bg-cover bg-center"
      style="background-image: url('${pageContext.request.contextPath}/views/assets/img/fondo-lentes.jpg');">

    <main class="entrar w-full max-w-sm bg-white/85 backdrop-blur-lg border border-white rounded-3xl shadow-xl shadow-slate-900/5 p-8 sm:p-10">

        <!-- Cabecera -->
        <div class="text-center space-y-1.5 mb-8">
            <a href="index.jsp" class="inline-block text-2xl font-semibold tracking-tight text-slate-900">
                Óptica<span class="text-sky-600">Vision</span>
            </a>
            <p class="text-sm text-slate-500">Ingresa a tu cuenta</p>
        </div>

        <!-- Formulario -->
        <form action="SvNavbarPublico" method="POST" class="space-y-5">
            <input type="hidden" name="action" value="login">

            <div class="space-y-1.5">
                <label for="usuario" class="text-xs font-medium text-slate-500">Correo o usuario</label>
                <input type="text" id="usuario" name="usuario" required autofocus autocomplete="username"
                       class="w-full px-4 py-3 bg-white border border-slate-200 rounded-xl text-sm text-slate-900 placeholder-slate-400 focus:outline-none focus:border-sky-600 focus:ring-2 focus:ring-sky-600/20 transition"
                       placeholder="admin o correo@dominio.com">
            </div>

            <div class="space-y-1.5">
                <label for="password" class="text-xs font-medium text-slate-500">Contraseña</label>
                <input type="password" id="password" name="password" required autocomplete="current-password"
                       class="w-full px-4 py-3 bg-white border border-slate-200 rounded-xl text-sm text-slate-900 placeholder-slate-400 focus:outline-none focus:border-sky-600 focus:ring-2 focus:ring-sky-600/20 transition"
                       placeholder="••••••••">
            </div>

            <button type="submit"
                    class="w-full py-3 px-4 bg-sky-600 hover:bg-sky-700 text-white text-sm font-medium rounded-full transition-colors">
                Iniciar Sesión
            </button>
        </form>

        <!-- Enlaces -->
        <div class="mt-8 text-center text-xs text-slate-500 space-y-2">
            <p>
                ¿No tienes una cuenta?
                <a href="SvNavbarPublico?page=register" class="text-sky-600 hover:text-sky-700 font-medium">Regístrate</a>
            </p>
            <p>
                <a href="index.jsp" class="text-slate-400 hover:text-slate-600 transition-colors">&larr; Volver al inicio</a>
            </p>
        </div>

    </main>

</body>
</html>
