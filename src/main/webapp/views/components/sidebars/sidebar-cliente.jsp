<%-- 
    Document   : sidebar-cliente
    Created on : 31 oct 2026, 2:03:29 p.m.
    Author     : User
--%>

<%-- 
    Document   : sidebar-cliente
    Description: Sidebar de navegación unificado para el panel del cliente.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<aside class="w-64 bg-white border-r border-slate-200 min-h-screen flex flex-col justify-between shadow-sm">
    <!-- Parte Superior: Marca y Menú -->
    <div class="p-6 space-y-6">
        <!-- Logo / Título del Panel -->
        <div class="flex items-center gap-3">
            <div class="w-9 h-9 rounded-xl bg-sky-600 flex items-center justify-center text-white shadow-md shadow-sky-600/20">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                </svg>
            </div>
            <div>
                <h2 class="text-sm font-bold text-slate-900">Mi Panel</h2>
                <p class="text-xs text-slate-500">ÓpticaVision</p>
            </div>
        </div>

        <!-- Enlaces de Navegación del Cliente -->
        <nav class="space-y-1.5 text-sm font-medium">
            <!-- 1. Dashboard Principal -->
            <a href="${pageContext.request.contextPath}/SvSidebarCliente?action=dashboard" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-sky-50 hover:text-sky-600 transition-colors">
                <svg class="w-5 h-5 text-slate-400 group-hover:text-sky-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
                </svg>
                Dashboard Principal
            </a>

            <!-- 2. Gestionar Citas -->
            <a href="${pageContext.request.contextPath}/SvSidebarCliente?action=citas" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-sky-50 hover:text-sky-600 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                </svg>
                Gestionar Citas
            </a>

            <!-- 3. Resultados Ópticos -->
            <a href="${pageContext.request.contextPath}/SvSidebarCliente?action=resultados" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-sky-50 hover:text-sky-600 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                </svg>
                Resultados Ópticos
            </a>

            <!-- 4. Facturas y Comprobantes (Módulo unificado) -->
            <a href="${pageContext.request.contextPath}/SvSidebarCliente?action=facturas" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-sky-50 hover:text-sky-600 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 14l6-6m-5.5.5h.01m4.99 5h.01M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16l3.5-2 3.5 2 3.5-2 3.5 2z" />
                </svg>
                Facturas y Comprobantes
            </a>
        </nav>
    </div>

    <!-- Parte Inferior: Volver al Sitio Principal -->
    <div class="p-6 border-t border-slate-200">
        <a href="${pageContext.request.contextPath}/SvNavbarPublico?page=home" 
           class="flex items-center gap-3 px-3.5 py-2 rounded-xl text-xs font-semibold text-slate-600 hover:bg-slate-100 transition-colors">
            <svg class="w-4 h-4 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" />
            </svg>
            Volver al Sitio Principal
        </a>
    </div>
</aside>