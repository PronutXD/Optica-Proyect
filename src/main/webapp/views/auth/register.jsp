<%-- 
    Document   : register
    Created on : 19 oct 2026, 1:37:50 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Cliente - ÓpticaVision</title>
    <!-- Tailwind CSS vía CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="text-slate-800 flex items-center justify-center min-h-screen px-4 py-8" style="background-image: url('${pageContext.request.contextPath}/views/assets/img/fondo-lentes.jpg'); background-size: cover; background-position: center;">

    <div class="max-w-lg w-full bg-white/45 backdrop-blur-lg border border-white/50 rounded-2xl shadow-2xl p-8 space-y-6">
        
        <!-- Cabecera -->
        <div class="text-center space-y-2">
            <a href="SvNavbarPublico?page=home" class="inline-block text-2xl font-extrabold tracking-tight text-slate-900">
                Óptica<span class="text-sky-600">Vision</span>
            </a>
            <p class="text-xs text-slate-600 font-medium">Crea tu cuenta de cliente para agendar citas y apartar aros</p>
        </div>

        <!-- Formulario de Registro apuntando al Servlet SvRegistro -->
        <form action="SvRegistro" method="POST" class="space-y-4">
            
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div class="space-y-1">
                    <label class="text-xs font-semibold text-slate-700 uppercase tracking-wider">Nombre</label>
                    <input type="text" name="nombre" required 
                           class="w-full px-3.5 py-2 bg-white/50 border border-slate-300/80 rounded-lg text-sm text-slate-900 placeholder-slate-500 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600"
                           placeholder="Tu nombre">
                </div>
                <div class="space-y-1">
                    <label class="text-xs font-semibold text-slate-700 uppercase tracking-wider">Apellido</label>
                    <input type="text" name="apellido" required 
                           class="w-full px-3.5 py-2 bg-white/50 border border-slate-300/80 rounded-lg text-sm text-slate-900 placeholder-slate-500 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600"
                           placeholder="Tu apellido">
                </div>
            </div>

            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div class="space-y-1">
                    <label class="text-xs font-semibold text-slate-700 uppercase tracking-wider">Identidad (DNI)</label>
                    <input type="text" name="identidad" 
                           class="w-full px-3.5 py-2 bg-white/50 border border-slate-300/80 rounded-lg text-sm text-slate-900 placeholder-slate-500 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600"
                           placeholder="0801-1999-00000">
                </div>
                <div class="space-y-1">
                    <label class="text-xs font-semibold text-slate-700 uppercase tracking-wider">Teléfono</label>
                    <input type="text" name="telefono" 
                           class="w-full px-3.5 py-2 bg-white/50 border border-slate-300/80 rounded-lg text-sm text-slate-900 placeholder-slate-500 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600"
                           placeholder="+504 0000-0000">
                </div>
            </div>

            <div class="space-y-1">
                <label class="text-xs font-semibold text-slate-700 uppercase tracking-wider">Correo Electrónico</label>
                <input type="email" name="correo" required 
                       class="w-full px-3.5 py-2 bg-white/50 border border-slate-300/80 rounded-lg text-sm text-slate-900 placeholder-slate-500 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600"
                       placeholder="correo@dominio.com">
            </div>

            <div class="space-y-1">
                <label class="text-xs font-semibold text-slate-700 uppercase tracking-wider">Contraseña</label>
                <input type="password" name="contrasena" required 
                       class="w-full px-3.5 py-2 bg-white/50 border border-slate-300/80 rounded-lg text-sm text-slate-900 placeholder-slate-500 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600"
                       placeholder="••••••••">
            </div>

            <button type="submit" 
                    class="w-full py-2.5 px-4 bg-sky-600 hover:bg-sky-700 text-white text-sm font-semibold rounded-lg shadow-md transition-all mt-2">
                Registrarse
            </button>
        </form>

        <!-- Enlace de Retorno -->
        <div class="text-center pt-2 border-t border-slate-300/60 text-xs text-slate-600 font-medium">
            ¿Ya tienes una cuenta? 
            <a href="SvNavbarPublico?page=login" class="text-sky-600 hover:underline font-semibold">Inicia sesión</a>
        </div>
        
    </div>

</body>
</html>