<%-- 
    Document   : navbar-cliente
    Created on : 30 oct 2026, 7:32:42 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="https://cdn.tailwindcss.com"></script>
<header class="sticky top-0 z-50 bg-slate-50/90 backdrop-blur-md border-b border-slate-200/80 shadow-sm">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="relative flex justify-between items-center h-16">
            
            <!-- Logo / Marca (Izquierda) -->
            <a href="SvNavbarPublico?page=home" class="flex items-center gap-3 z-10">
                <div class="w-10 h-10 rounded-xl bg-sky-600 flex items-center justify-center text-white shadow-md shadow-sky-600/20">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                    </svg>
                </div>
                <span class="text-xl font-bold text-slate-800 tracking-tight">Óptica<span class="text-sky-600">Vision</span></span>
            </a>

            <!-- Enlaces de Navegación del Cliente (Centrados Absolutos) -->
            <nav class="hidden md:flex items-center space-x-8 text-sm font-medium absolute left-1/2 -translate-x-1/2">
                <a href="SvNavbarPublico?page=home" class="text-slate-600 hover:text-sky-600 transition-colors">Inicio</a>
                <a href="SvNavbarPublico?page=catalogo" class="text-slate-600 hover:text-sky-600 transition-colors">Catálogo</a>
                <a href="SvNavbarPublico?page=servicios" class="text-slate-600 hover:text-sky-600 transition-colors">Servicios</a>
                <a href="SvNavbarPublico?page=agendar" class="text-slate-600 hover:text-sky-600 transition-colors font-semibold text-sky-600">Agendar Cita</a>
            </nav>

            <!-- Perfil del Cliente (Derecha) -->
            <div class="flex items-center gap-3 z-10">
                <div class="relative group">
                    <button class="flex items-center gap-2.5 px-3 py-1.5 rounded-xl border border-slate-200 bg-white hover:bg-slate-50 transition-all shadow-sm">
                        <div class="w-8 h-8 rounded-lg bg-sky-600 text-white font-bold text-xs flex items-center justify-center shadow-sm">
                            ${inicialCliente}
                        </div>
                        <span class="text-sm font-medium text-slate-700 hidden sm:block">${nombreCliente}</span>
                        <svg class="w-4 h-4 text-slate-400 group-hover:rotate-180 transition-transform duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                        </svg>
                    </button>

                    <!-- Menú Desplegable -->
                    <div class="absolute right-0 mt-2 w-48 bg-white border border-slate-200 rounded-xl shadow-lg py-1.5 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 z-50">
                        <a href="SvNavbarPublico?page=perfil" class="block px-4 py-2 text-xs font-medium text-slate-700 hover:bg-slate-50 hover:text-sky-600">Mi Perfil</a>
                        <a href="SvNavbarPublico?page=miscitas" class="block px-4 py-2 text-xs font-medium text-slate-700 hover:bg-slate-50 hover:text-sky-600">Mis Citas</a>
                        <div class="border-t border-slate-100 my-1"></div>
                        <a href="SvLogout" class="block px-4 py-2 text-xs font-bold text-rose-600 hover:bg-rose-50 transition-colors">Cerrar Sesión</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</header>