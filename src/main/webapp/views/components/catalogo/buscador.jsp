<%-- 
    Document   : buscador
    Description: Componente de búsqueda y filtros minimalista y pegajoso (sticky)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Contenedor Sticky justo debajo del Navbar (h-16 = 4rem / 64px) -->
<div class="sticky top-16 z-40 bg-slate-50/80 backdrop-blur-md border-b border-slate-200/80 shadow-sm py-4 transition-all">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        <div class="flex flex-col md:flex-row items-center justify-between gap-4">
            
            <!-- Título compacto o indicador -->
            <div class="flex items-center gap-3 w-full md:w-auto">
                <h1 class="text-lg font-bold text-slate-900 tracking-tight">Catálogo</h1>
                <span class="text-xs font-semibold text-sky-600 bg-sky-50 px-2.5 py-0.5 rounded-full border border-sky-100">
                    500+ Modelos
                </span>
            </div>

            <!-- Barra de Búsqueda y Filtros Simplificados en una sola línea -->
            <div class="w-full md:flex-1 md:max-w-3xl flex flex-col sm:flex-row gap-2">
                
                <!-- Input de Búsqueda -->
                <div class="relative flex-1">
                    <span class="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-400">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </span>
                    <input type="text" name="busqueda" 
                           class="w-full pl-10 pr-4 py-2 bg-white border border-slate-200 rounded-xl text-sm text-slate-900 placeholder-slate-400 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 shadow-sm transition-all"
                           placeholder="Buscar por nombre, marca o estilo...">
                </div>

                <!-- Filtro Marca -->
                <div class="sm:w-44">
                    <select name="marca" 
                            class="w-full px-3 py-2 bg-white border border-slate-200 rounded-xl text-sm text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 shadow-sm transition-all">
                        <option value="">Todas las marcas</option>
                        <option value="rayban">Ray-Ban</option>
                        <option value="oakley">Oakley</option>
                        <option value="gucci">Gucci</option>
                        <option value="tomford">Tom Ford</option>
                        <option value="carrera">Carrera</option>
                    </select>
                </div>

                <!-- Filtro Estilo -->
                <div class="sm:w-44">
                    <select name="estilo" 
                            class="w-full px-3 py-2 bg-white border border-slate-200 rounded-xl text-sm text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 shadow-sm transition-all">
                        <option value="">Todos los estilos</option>
                        <option value="cuadrado">Cuadrado</option>
                        <option value="redondo">Redondo</option>
                        <option value="aviador">Aviador</option>
                        <option value="cat-eye">Cat-Eye</option>
                        <option value="al aire">Al aire</option>
                    </select>
                </div>

            </div>

        </div>

    </div>
</div>