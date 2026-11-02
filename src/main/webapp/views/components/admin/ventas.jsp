<%-- 
    Document   : ventas
    Created on : 1 nov 2026, 10:31:30 p.m.
    Author     : User
--%>

<%-- 
    Document   : ventas
    Description: Subvista de control de ventas, facturación y saldos pendientes basada en vw_SaldoVentas.
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
            <h1 class="text-2xl font-bold text-slate-800">Ventas, Facturación y Saldos</h1>
            <p class="text-xs text-slate-500 mt-1">Control financiero de transacciones, apartados y saldos pendientes de pago (<code class="text-blue-600 font-mono">vw_SaldoVentas</code>).</p>
        </div>
        <div class="flex items-center gap-3">
            <button type="button" class="inline-flex items-center gap-2 bg-slate-900 hover:bg-slate-800 text-white text-xs font-bold px-4 py-2.5 rounded-xl transition-all shadow-sm cursor-pointer">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"/>
                </svg>
                Nueva Factura / Venta
            </button>
        </div>
    </div>

    <!-- 2. Tabla Completa de Ventas y Finanzas -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-5">
        
        <!-- Cabecera y Filtros -->
        <div class="flex flex-col gap-4 border-b border-slate-100 pb-5">
            <div>
                <h2 class="text-base font-bold text-slate-800">Historial de Transacciones</h2>
                <p class="text-xs text-slate-500 mt-0.5">Monitorea el total facturado, los abonos realizados y los saldos pendientes de los clientes.</p>
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
                        <input type="text" id="customSearch" placeholder="Buscar por cliente..." 
                               class="w-48 sm:w-60 h-9 pl-9 pr-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                    </div>

                    <div>
                        <select id="filtroTipo" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                            <option value="">Todos los Tipos</option>
                            <option value="Contado">Contado</option>
                            <option value="Apartado">Apartado</option>
                        </select>
                    </div>
                </div>

            </div>
        </div>
        
        <!-- Tabla Interactiva -->
        <div class="overflow-x-auto">
            <table id="tablaVentas" class="w-full text-left text-xs text-slate-600 border-collapse">
                <thead>
                    <tr class="bg-slate-50 text-slate-700 border-b border-slate-200">
                        <th class="p-3.5 font-semibold">ID Venta</th>
                        <th class="p-3.5 font-semibold">Fecha</th>
                        <th class="p-3.5 font-semibold">Cliente</th>
                        <th class="p-3.5 font-semibold">Tipo</th>
                        <th class="p-3.5 font-semibold">Total</th>
                        <th class="p-3.5 font-semibold">Pagado</th>
                        <th class="p-3.5 font-semibold">Saldo Pendiente</th>
                        <th class="p-3.5 font-semibold text-center">Estado</th>
                        <th class="p-3.5 font-semibold text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-slate-100">
                    <!-- Fila de Ejemplo 1 (Contado / Pagado por completo) -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#V-012</td>
                        <td class="p-3.5">02/11/2026</td>
                        <td class="p-3.5 font-medium text-slate-800">Carlos Martínez</td>
                        <td class="p-3.5 text-slate-600">Contado</td>
                        <td class="p-3.5 font-semibold text-slate-800">L. 2,450.00</td>
                        <td class="p-3.5 font-semibold text-emerald-600">L. 2,450.00</td>
                        <td class="p-3.5 font-semibold text-slate-500">L. 0.00</td>
                        <td class="p-3.5 text-center">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-emerald-100 text-emerald-700 border border-emerald-200">
                                Pagado
                            </span>
                        </td>
                        <td class="p-3.5 text-center">
                            <div class="flex items-center justify-center gap-2">
                                <button title="Ver Factura" class="p-1.5 rounded-lg bg-sky-50 text-sky-600 hover:bg-sky-100 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg>
                                </button>
                            </div>
                        </td>
                    </tr>
                    
                    <!-- Fila de Ejemplo 2 (Apartado / Con saldo pendiente) -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#V-013</td>
                        <td class="p-3.5">02/11/2026</td>
                        <td class="p-3.5 font-medium text-slate-800">Ana Sofía Pineda</td>
                        <td class="p-3.5 text-slate-600">Apartado</td>
                        <td class="p-3.5 font-semibold text-slate-800">L. 3,800.00</td>
                        <td class="p-3.5 font-semibold text-emerald-600">L. 1,500.00</td>
                        <td class="p-3.5 font-semibold text-amber-600">L. 2,300.00</td>
                        <td class="p-3.5 text-center">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-amber-100 text-amber-700 border border-amber-200">
                                Pendiente
                            </span>
                        </td>
                        <td class="p-3.5 text-center">
                            <div class="flex items-center justify-center gap-2">
                                <button title="Registrar Abono / Pago" class="p-1.5 rounded-lg bg-slate-100 text-slate-600 hover:bg-slate-200 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
                                </button>
                                <button title="Ver Factura" class="p-1.5 rounded-lg bg-sky-50 text-sky-600 hover:bg-sky-100 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg>
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
        var table = $('#tablaVentas').DataTable({
            dom: 'rt',
            pageLength: 5,
            language: {
                emptyTable: "No hay registros de ventas o facturación",
                zeroRecords: "No se encontraron registros coincidentes"
            }
        });

        // Buscador sincronizado
        $('#customSearch').on('keyup', function() {
            table.search(this.value).draw();
        });

        // Filtro por Tipo de Venta (Contado / Apartado) en la columna correspondiente (índice 3)
        $('#filtroTipo').on('change', function() {
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
                           " al " + info.end + " de un total de " + info.recordsTotal + " ventas";
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