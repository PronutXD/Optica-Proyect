<%-- 
    Document   : sibebar-admin
    Created on : 1 nov 2026, 8:29:14 p.m.
    Author     : User
--%>

<%-- 
    Document   : sidebar-admin
    Description: Sidebar lateral para el panel de administración de ÓpticaVision.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<aside class="w-64 bg-white border-r border-slate-200 min-h-screen flex flex-col justify-between shadow-sm">
    <!-- Parte Superior: Marca y Menú de Administración -->
    <div class="p-6 space-y-6">
        <!-- Logo / Identificador del Panel -->
        <div class="flex items-center gap-3">
            <div class="w-9 h-9 rounded-xl bg-slate-900 flex items-center justify-center text-white shadow-md shadow-slate-900/20">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                </svg>
            </div>
            <div>
                <h2 class="text-sm font-bold text-slate-900">Panel Admin</h2>
                <p class="text-xs text-slate-500">ÓpticaVision</p>
            </div>
        </div>

        <!-- Enlaces de Navegación del Panel de Administración -->
        <nav class="space-y-1.5 text-sm font-medium">
            <!-- 1. Dashboard General -->
            <a href="${pageContext.request.contextPath}/SvAdmin?action=dashboard" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-slate-100 hover:text-slate-900 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
                </svg>
                Dashboard General
            </a>

            <!-- 2. Sección: Citas y Atención Visual (Usa vw_CitasDetalle / vw_ExamenesDetalle) -->
            <a href="${pageContext.request.contextPath}/SvSidebarAdmin?action=citas" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-slate-100 hover:text-slate-900 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                </svg>
                Citas y Atención
            </a>

            <!-- 3. Sección: Inventario y Catálogo (Usa vw_InventarioDetalle / vw_StockBajo) -->
            <a href="${pageContext.request.contextPath}/SvSidebarAdmin?action=inventario" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-slate-100 hover:text-slate-900 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
                </svg>
                Inventario y Productos
            </a>

            <!-- 4. Sección: Ventas y Facturación (Usa vw_SaldoVentas) -->
            <a href="${pageContext.request.contextPath}/SvSidebarAdmin?action=ventas" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-slate-100 hover:text-slate-900 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 14l6-6m-5.5.5h.01m4.99 5h.01M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16l3.5-2 3.5 2 3.5-2 3.5 2z" />
                </svg>
                Ventas y Facturación
            </a>

            <!-- 5. Sección: Personal, Roles y Sucursales (Usa vw_UsuariosSistema) -->
            <a href="${pageContext.request.contextPath}/SvSidebarAdmin?action=usuarios" 
               class="flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-slate-600 hover:bg-slate-100 hover:text-slate-900 transition-colors">
                <svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
                </svg>
                Personal y Sucursales
            </a>
        </nav>
    </div>

    <!-- Parte Inferior: Retorno al sitio principal -->
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