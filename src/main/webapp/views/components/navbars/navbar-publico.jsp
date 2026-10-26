<%--
    Document   : navbar-publico
    Created on : 18 oct 2026, 3:53:17 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-200/70">
    <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16">

            <!-- Logo / Marca -->
            <a href="#inicio" class="flex items-center gap-2.5">
                <span class="w-8 h-8 rounded-lg bg-sky-600 flex items-center justify-center text-white">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                    </svg>
                </span>
                <span class="text-lg font-semibold text-slate-800 tracking-tight">Óptica<span class="text-sky-600">Vision</span></span>
            </a>

            <!-- Enlaces de Navegación (escritorio) -->
            <nav class="hidden md:flex items-center gap-8 text-sm">
                <a href="#inicio" class="text-slate-500 hover:text-slate-900 transition-colors">Inicio</a>
                <a href="#catalogo" class="text-slate-500 hover:text-slate-900 transition-colors">Catálogo</a>
                <a href="#servicios" class="text-slate-500 hover:text-slate-900 transition-colors">Servicios</a>
                <a href="#contacto" class="text-slate-500 hover:text-slate-900 transition-colors">Contacto</a>
            </nav>

            <!-- Acceso / Login (escritorio) -->
            <div class="hidden md:flex items-center gap-2">
                <a href="SvNavbarPublico?page=login" class="text-sm font-medium text-slate-600 hover:text-sky-600 px-3 py-2 transition-colors">
                    Iniciar Sesión
                </a>
                <a href="SvNavbarPublico?page=register" class="text-sm font-medium bg-sky-600 hover:bg-sky-700 text-white px-4 py-2 rounded-full transition-colors">
                    Registrarse
                </a>
            </div>

            <!-- Botón de menú (móvil) -->
            <button id="menu-btn" type="button" aria-label="Abrir menú" aria-expanded="false" aria-controls="menu-movil"
                    class="md:hidden p-2 -mr-2 text-slate-600 hover:text-slate-900 transition-colors">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7h16M4 12h16M4 17h16" />
                </svg>
            </button>
        </div>
    </div>

    <!-- Menú desplegable (móvil) -->
    <div id="menu-movil" class="hidden md:hidden border-t border-slate-200/70 bg-white">
        <div class="px-4 py-4 flex flex-col gap-3 text-sm">
            <a href="#inicio" class="text-slate-600 hover:text-sky-600 transition-colors">Inicio</a>
            <a href="#catalogo" class="text-slate-600 hover:text-sky-600 transition-colors">Catálogo</a>
            <a href="#servicios" class="text-slate-600 hover:text-sky-600 transition-colors">Servicios</a>
            <a href="#contacto" class="text-slate-600 hover:text-sky-600 transition-colors">Contacto</a>
            <div class="flex items-center gap-3 pt-3 border-t border-slate-100">
                <a href="SvNavbarPublico?page=login" class="font-medium text-slate-600 hover:text-sky-600 transition-colors">Iniciar Sesión</a>
                <a href="SvNavbarPublico?page=register" class="font-medium bg-sky-600 hover:bg-sky-700 text-white px-4 py-2 rounded-full transition-colors">Registrarse</a>
            </div>
        </div>
    </div>

    <script>
        (function () {
            var btn = document.getElementById('menu-btn');
            var menu = document.getElementById('menu-movil');
            if (!btn || !menu) return;
            btn.addEventListener('click', function () {
                var abierto = menu.classList.toggle('hidden') === false;
                btn.setAttribute('aria-expanded', abierto ? 'true' : 'false');
            });
            menu.querySelectorAll('a').forEach(function (a) {
                a.addEventListener('click', function () {
                    menu.classList.add('hidden');
                    btn.setAttribute('aria-expanded', 'false');
                });
            });
        })();
    </script>
</header>
