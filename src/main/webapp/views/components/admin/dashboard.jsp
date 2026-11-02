<%-- 
    Document   : dashboard
    Created on : 1 nov 2026, 8:59:11 p.m.
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="space-y-6">
    
    <!-- Encabezado de Bienvenida -->
    <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-4 bg-white p-6 rounded-2xl border border-slate-200 shadow-sm">
        <div>
            <h1 class="text-xl font-bold text-slate-900">Panel de Control General</h1>
            <p class="text-sm text-slate-500 mt-1">Resumen general de operaciones, inventario y atenciones en ÓpticaVision.</p>
        </div>
        <div class="flex items-center gap-3">
            <span class="inline-flex items-center px-3 py-1.5 rounded-xl text-xs font-semibold bg-emerald-50 text-emerald-700 border border-emerald-200">
                <span class="w-2 h-2 rounded-full bg-emerald-500 mr-2 animate-pulse"></span>
                Sistema Activo (Azure)
            </span>
        </div>
    </div>

    <!-- Tarjetas de Métricas Principales (KPIs) -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
        
        <!-- Tarjeta 1: Citas del Día -->
        <div class="bg-white p-6 rounded-2xl border border-slate-200 shadow-sm hover:shadow-md transition-shadow">
            <div class="flex items-center justify-between">
                <span class="text-xs font-semibold uppercase tracking-wider text-slate-400">Citas Pendientes</span>
                <div class="w-10 h-10 rounded-xl bg-blue-50 text-blue-600 flex items-center justify-center">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                    </svg>
                </div>
            </div>
            <div class="mt-4 flex items-baseline justify-between">
                <span class="text-2xl font-bold text-slate-900">12</span>
                <span class="text-xs font-medium text-emerald-600 bg-emerald-50 px-2 py-0.5 rounded-lg">+3 hoy</span>
            </div>
        </div>

        <!-- Tarjeta 2: Ventas / Saldo Global -->
        <div class="bg-white p-6 rounded-2xl border border-slate-200 shadow-sm hover:shadow-md transition-shadow">
            <div class="flex items-center justify-between">
                <span class="text-xs font-semibold uppercase tracking-wider text-slate-400">Ventas del Mes</span>
                <div class="w-10 h-10 rounded-xl bg-violet-50 text-violet-600 flex items-center justify-center">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                    </svg>
                </div>
            </div>
            <div class="mt-4 flex items-baseline justify-between">
                <span class="text-2xl font-bold text-slate-900">L. 45,850</span>
                <span class="text-xs font-medium text-emerald-600 bg-emerald-50 px-2 py-0.5 rounded-lg">+12.5%</span>
            </div>
        </div>

        <!-- Tarjeta 3: Alertas de Stock Bajo -->
        <div class="bg-white p-6 rounded-2xl border border-slate-200 shadow-sm hover:shadow-md transition-shadow">
            <div class="flex items-center justify-between">
                <span class="text-xs font-semibold uppercase tracking-wider text-slate-400">Stock Bajo</span>
                <div class="w-10 h-10 rounded-xl bg-amber-50 text-amber-600 flex items-center justify-center">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"/>
                    </svg>
                </div>
            </div>
            <div class="mt-4 flex items-baseline justify-between">
                <span class="text-2xl font-bold text-amber-600">4</span>
                <span class="text-xs font-medium text-amber-600 bg-amber-50 px-2 py-0.5 rounded-lg">Revisar stock</span>
            </div>
        </div>

        <!-- Tarjeta 4: Usuarios Activos -->
        <div class="bg-white p-6 rounded-2xl border border-slate-200 shadow-sm hover:shadow-md transition-shadow">
            <div class="flex items-center justify-between">
                <span class="text-xs font-semibold uppercase tracking-wider text-slate-400">Personal Activo</span>
                <div class="w-10 h-10 rounded-xl bg-indigo-50 text-indigo-600 flex items-center justify-center">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"/>
                    </svg>
                </div>
            </div>
            <div class="mt-4 flex items-baseline justify-between">
                <span class="text-2xl font-bold text-slate-900">8</span>
                <span class="text-xs font-medium text-slate-600 bg-slate-100 px-2 py-0.5 rounded-lg">En línea</span>
            </div>
        </div>

    </div>

    <!-- Sección Inferior: Accesos Rápidos o Tabla Resumen -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
        
        <!-- Columna Izquierda: Accesos Directos -->
        <div class="bg-white p-6 rounded-2xl border border-slate-200 shadow-sm lg:col-span-1">
            <h2 class="text-sm font-bold text-slate-900 mb-4">Accesos Rápidos</h2>
            <div class="space-y-2">
                <a href="${pageContext.request.contextPath}/SvAdmin?action=citas" class="flex items-center justify-between p-3 rounded-xl hover:bg-slate-50 transition-colors border border-transparent hover:border-slate-200">
                    <span class="text-xs font-medium text-slate-700">Ver Agenda de Citas</span>
                    <svg class="w-4 h-4 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/></svg>
                </a>
                <a href="${pageContext.request.contextPath}/SvAdmin?action=inventario" class="flex items-center justify-between p-3 rounded-xl hover:bg-slate-50 transition-colors border border-transparent hover:border-slate-200">
                    <span class="text-xs font-medium text-slate-700">Consultar Inventario</span>
                    <svg class="w-4 h-4 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/></svg>
                </a>
                <a href="${pageContext.request.contextPath}/SvAdmin?action=ventas" class="flex items-center justify-between p-3 rounded-xl hover:bg-slate-50 transition-colors border border-transparent hover:border-slate-200">
                    <span class="text-xs font-medium text-slate-700">Historial de Ventas / Facturas</span>
                    <svg class="w-4 h-4 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/></svg>
                </a>
            </div>
        </div>

        <!-- Columna Derecha: Alertas o Actividad Reciente -->
        <div class="bg-white p-6 rounded-2xl border border-slate-200 shadow-sm lg:col-span-2">
            <h2 class="text-sm font-bold text-slate-900 mb-4">Estado del Sistema y Alertas</h2>
            <div class="p-4 rounded-xl bg-slate-50 border border-slate-200 text-xs text-slate-600">
                <p class="font-semibold text-slate-800 mb-1">Conexión establecida con Azure SQL Server</p>
                Las vistas principales (<code class="text-blue-600 font-mono">vw_CitasDetalle</code>, <code class="text-blue-600 font-mono">vw_InventarioDetalle</code>, <code class="text-blue-600 font-mono">vw_SaldoVentas</code>) se encuentran operativas y listas para conectarse mediante los DAOs del sistema.
            </div>
        </div>

    </div>

</div>