<%-- 
    Document   : navbar-publico
    Created on : 18 oct 2026, 3:53:17 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="sticky top-0 z-50 bg-slate-50/90 backdrop-blur-md border-b border-slate-200/80 shadow-sm">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16">
            
            <!-- Logo / Marca -->
            <div class="flex items-center gap-3">
                <div class="w-10 h-10 rounded-xl bg-sky-600 flex items-center justify-center text-white shadow-md shadow-sky-600/20">
                    <!-- Icono Gafas / Óptica -->
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                    </svg>
                </div>
                <span class="text-xl font-bold text-slate-800 tracking-tight">Óptica<span class="text-sky-600">Vision</span></span>
            </div>

            <!-- Enlaces de Navegación -->
            <nav class="hidden md:flex items-center space-x-8 text-sm font-medium">
                <a href="#inicio" class="text-slate-600 hover:text-sky-600 transition-colors">Inicio</a>
                <a href="#catalogo" class="text-slate-600 hover:text-sky-600 transition-colors">Catálogo</a>
                <a href="#servicios" class="text-slate-600 hover:text-sky-600 transition-colors">Servicios</a>
                <a href="#contacto" class="text-slate-600 hover:text-sky-600 transition-colors">Contacto</a>
            </nav>

            <!-- Acceso / Login -->
            <div class="flex items-center gap-3">
                <a href="login.jsp" class="text-sm font-medium text-slate-700 hover:text-sky-600 px-3 py-2 transition-colors">
                    Iniciar Sesión
                </a>
                <a href="registro.jsp" class="text-sm font-medium bg-sky-600 hover:bg-sky-700 text-white px-4 py-2 rounded-lg shadow-sm hover:shadow transition-all">
                    Registrarse
                </a>
            </div>
        </div>
    </div>
</header>