<%-- 
    Document   : inventario
    Created on : 1 nov 2026, 10:27:55 p.m.
    Author     : User
--%>

<%-- 
    Document   : inventario
    Description: Subvista de inventario y catálogo de productos para el panel de administración basada en vw_InventarioDetalle.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Estilos para DataTables -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
<style>
    table.dataTable.no-footer {
        border-bottom: 1px solid #e2e8f0 !important;
    }
</style>

<div class="space-y-8">

    <!-- 1. Encabezado de la Sección -->
    <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4 bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm">
        <div>
            <h1 class="text-2xl font-bold text-slate-800">Inventario y Catálogo de Productos</h1>
            <p class="text-xs text-slate-500 mt-1">Control de existencias, stock mínimo y precios por sucursal (<code class="text-blue-600 font-mono">vw_InventarioDetalle</code>).</p>
        </div>
        <div class="flex items-center gap-3">
            <button type="button" class="inline-flex items-center gap-2 bg-slate-900 hover:bg-slate-800 text-white text-xs font-bold px-4 py-2.5 rounded-xl transition-all shadow-sm cursor-pointer">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"/>
                </svg>
                Nuevo Producto
            </button>
        </div>
    </div>

    <!-- 2. Tabla Completa de Inventario -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-5">
        
        <!-- Cabecera y Filtros -->
        <div class="flex flex-col gap-4 border-b border-slate-100 pb-5">
            <div>
                <h2 class="text-base font-bold text-slate-800">Existencias en Almacén</h2>
                <p class="text-xs text-slate-500 mt-0.5">Monitorea los niveles de stock actual frente al stock mínimo establecido en cada sucursal.</p>
            </div>
            
            <!-- Barra de controles unificada -->
            <div class="flex flex-wrap items-center justify-between gap-3 bg-slate-50/70 p-3 rounded-2xl border border-slate-200/60">
                
                <!-- Selector de cantidad de registros -->
                <div class="flex items-center gap-2">
                    <span class="text-xs text-slate-500 font-medium">Mostrar:</span>
                    <select id="customPageLength" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                        <option value="5">5</option>
                        <option value="10">10</option>
                        <option value="25">25</option>
                    </select>
                    <span class="text-xs text-slate-500 font-medium">registros</span>
                </div>

                <!-- Buscador y Filtro -->
                <div class="flex flex-wrap items-center gap-2.5">
                    <div class="relative">
                        <span class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-slate-400">
                            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                            </svg>
                        </span>
                        <input type="text" id="customSearch" placeholder="Buscar por código, producto..." 
                               class="w-48 sm:w-60 h-9 pl-9 pr-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                    </div>

                    <div>
                        <select id="filtroSucursal" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                            <option value="">Todas las Sucursales</option>
                            <option value="Sucursal Principal">Sucursal Principal</option>
                            <option value="Sucursal Norte">Sucursal Norte</option>
                        </select>
                    </div>
                </div>

            </div>
        </div>
        
        <!-- Tabla Interactiva -->
        <div class="overflow-x-auto">
            <table id="tablaInventario" class="w-full text-left text-xs text-slate-600 border-collapse">
                <thead>
                    <tr class="bg-slate-50 text-slate-700 border-b border-slate-200">
                        <th class="p-3.5 font-semibold">Código</th>
                        <th class="p-3.5 font-semibold">Producto / Marca</th>
                        <th class="p-3.5 font-semibold">Categoría</th>
                        <th class="p-3.5 font-semibold">Sucursal</th>
                        <th class="p-3.5 font-semibold">Precio Venta</th>
                        <th class="p-3.5 font-semibold text-center">Stock</th>
                        <th class="p-3.5 font-semibold text-center">Estado</th>
                        <th class="p-3.5 font-semibold text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-slate-100">
                    <!-- Fila de Ejemplo 1 (Aquí iterarás con tu bucle Java basado en vw_InventarioDetalle) -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">PRD-001</td>
                        <td class="p-3.5">
                            <p class="font-medium text-slate-800">Armazón Aviador Metal</p>
                            <p class="text-[10px] text-slate-400">Ray-Ban</p>
                        </td>
                        <td class="p-3.5 text-slate-600">Armazones</td>
                        <td class="p-3.5 text-slate-600">Sucursal Principal</td>
                        <td class="p-3.5 font-semibold text-slate-800">L. 2,450.00</td>
                        <td class="p-3.5 text-center font-bold text-slate-800">12</td>
                        <td class="p-3.5 text-center">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-emerald-100 text-emerald-700 border border-emerald-200">
                                Normal
                            </span>
                        </td>
                        <td class="p-3.5 text-center">
                            <div class="flex items-center justify-center gap-2">
                                <button title="Editar producto" class="p-1.5 rounded-lg bg-slate-100 text-slate-600 hover:bg-slate-200 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"/></svg>
                                </button>
                                <button title="Ajustar stock" class="p-1.5 rounded-lg bg-sky-50 text-sky-600 hover:bg-sky-100 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"/></svg>
                                </button>
                            </div>
                        </td>
                    </tr>
                    
                    <!-- Fila de Ejemplo 2 (Simulando Stock Bajo) -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">PRD-002</td>
                        <td class="p-3.5">
                            <p class="font-medium text-slate-800">Líquido Limpiador de Lentes</p>
                            <p class="text-[10px] text-slate-400">OptiClean</p>
                        </td>
                        <td class="p-3.5 text-slate-600">Accesorios</td>
                        <td class="p-3.5 text-slate-600">Sucursal Principal</td>
                        <td class="p-3.5 font-semibold text-slate-800">L. 180.00</td>
                        <td class="p-3.5 text-center font-bold text-amber-600">2</td>
                        <td class="p-3.5 text-center">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-amber-100 text-amber-700 border border-amber-200">
                                Stock Bajo
                            </span>
                        </td>
                        <td class="p-3.5 text-center">
                            <div class="flex items-center justify-center gap-2">
                                <button title="Editar producto" class="p-1.5 rounded-lg bg-slate-100 text-slate-600 hover:bg-slate-200 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"/></svg>
                                </button>
                                <button title="Ajustar stock" class="p-1.5 rounded-lg bg-sky-50 text-sky-600 hover:bg-sky-100 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"/></svg>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Barra Inferior Personalizada (Paginación e Información) -->
        <div class="flex flex-col sm:flex-row items-center justify-between gap-4 pt-4 border-t border-slate-100">
            <div id="tableInfo" class="text-xs text-slate-500 font-medium"></div>
            <div id="tablePaginate" class="flex items-center gap-1.5"></div>
        </div>

    </div>

</div>

<!-- Scripts de jQuery y DataTables -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<script>
    $(document).ready(function() {
        var table = $('#tablaInventario').DataTable({
            dom: 'rt',
            pageLength: 5,
            language: {
                emptyTable: "No hay productos registrados en el inventario",
                zeroRecords: "No se encontraron registros coincidentes"
            }
        });

        // Buscador sincronizado
        $('#customSearch').on('keyup', function() {
            table.search(this.value).draw();
        });

        // Filtro por Sucursal en la columna correspondiente (índice 3)
        $('#filtroSucursal').on('change', function() {
            var val = $(this).val();
            table.column(3).search(val, false, false).draw();
        });

        // Selector de cantidad de registros por página
        $('#customPageLength').on('change', function() {
            table.page.len(parseInt($(this).val())).draw();
        });

        // Renderizado dinámico de la barra inferior con Tailwind
        function renderPagination() {
            var info = table.page.info();
            var infoText = "Mostrando del " + (info.recordsTotal === 0 ? 0 : (info.start + 1)) + 
                           " al " + info.end + " de un total de " + info.recordsTotal + " productos";
            $('#tableInfo').text(infoText);

            var paginationHtml = '';
            var prevClasses = info.page === 0 
                ? 'opacity-40 cursor-not-allowed bg-slate-50 text-slate-400 border-slate-200' 
                : 'hover:bg-slate-100 bg-white text-slate-700 border-slate-200 cursor-pointer';
            paginationHtml += '<button type="button" class="px-3.5 py-1.5 text-xs font-semibold border rounded-lg transition-all ' + prevClasses + '" ' + (info.page === 0 ? 'disabled' : 'id="btnPrev"') + '>Anterior</button>';

            for (var i = 0; i < info.pages; i++) {
                var isActive = i === info.page;
                var pageClasses = isActive 
                    ? 'bg-slate-900 text-white border-slate-900 shadow-sm' 
                    : 'bg-white text-slate-700 border-slate-200 hover:bg-slate-100';
                paginationHtml += '<button type="button" class="px-3.5 py-1.5 text-xs font-semibold border rounded-lg transition-all page-number ' + pageClasses + '" data-page="' + i + '">' + (i + 1) + '</button>';
            }

            var nextClasses = (info.page >= info.pages - 1 || info.pages === 0) 
                ? 'opacity-40 cursor-not-allowed bg-slate-50 text-slate-400 border-slate-200' 
                : 'hover:bg-slate-100 bg-white text-slate-700 border-slate-200 cursor-pointer';
            paginationHtml += '<button type="button" class="px-3.5 py-1.5 text-xs font-semibold border rounded-lg transition-all ' + nextClasses + '" ' + (info.page >= info.pages - 1 || info.pages === 0 ? 'disabled' : 'id="btnNext"') + '>Siguiente</button>';

            $('#tablePaginate').html(paginationHtml);
        }

        table.on('draw', renderPagination);
        renderPagination();

        $(document).on('click', '.page-number', function() {
            var pageIndex = $(this).data('page');
            table.page(pageIndex).draw('page');
        });
        $(document).on('click', '#btnPrev', function() {
            table.page('previous').draw('page');
        });
        $(document).on('click', '#btnNext', function() {
            table.page('next').draw('page');
        });
    });
</script>