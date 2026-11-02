<%-- 
    Document   : resultados
    Created on : 31 oct 2026, 10:05:49 p.m.
    Author     : User
--%>

<%-- 
    Document   : resultados (Subvista de Historial de Resultados Ópticos)
    Description: Listado de exámenes de la vista del paciente adaptado a DataTables y Tailwind CSS.
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
            <h1 class="text-2xl font-bold text-slate-800">Resultados de Exámenes Ópticos</h1>
            <p class="text-xs text-slate-500 mt-1">Historial clínico y valores de graduación obtenidos en tus evaluaciones visuales.</p>
        </div>
        <div class="flex items-center gap-2">
            <span class="inline-flex items-center gap-1.5 px-3 py-1.5 bg-sky-50 text-sky-700 text-xs font-semibold rounded-xl border border-sky-100">
                <svg class="w-4 h-4 text-sky-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/>
                </svg>
                Historial Clínico
            </span>
        </div>
    </div>

    <!-- 2. Tabla de Resultados Ópticos con DataTables y Filtros Alineados -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-5">
        
        <!-- Cabecera de controles unificada -->
        <div class="flex flex-col gap-4 border-b border-slate-100 pb-5">
            <div>
                <h2 class="text-base font-bold text-slate-800">Historial de Evaluaciones Visuales</h2>
                <p class="text-xs text-slate-500 mt-0.5">Detalle de esferas, cilindros, ejes y parámetros de tu receta óptica.</p>
            </div>
            
            <div class="flex flex-wrap items-center justify-between gap-3 bg-slate-50/70 p-3 rounded-2xl border border-slate-200/60">
                
                <!-- Selector de cantidad de registros -->
                <div class="flex items-center gap-2">
                    <span class="text-xs text-slate-500 font-medium">Mostrar:</span>
                    <select id="customPageLength" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                        <option value="5">5</option>
                        <option value="10">10</option>
                        <option value="25">25</option>
                    </select>
                    <span class="text-xs text-slate-500 font-medium">registros</span>
                </div>

                <!-- Buscador General -->
                <div class="flex items-center gap-2.5">
                    <div class="relative">
                        <span class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-slate-400">
                            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                            </svg>
                        </span>
                        <input type="text" id="customSearch" placeholder="Buscar por fecha u observaciones..." 
                               class="w-56 sm:w-64 h-9 pl-9 pr-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                    </div>
                </div>

            </div>
        </div>
        
        <!-- Tabla estructurada en base a los campos de ExamenVista -->
        <div class="overflow-x-auto">
            <table id="tablaResultados" class="w-full text-left text-xs text-slate-600 border-collapse">
                <thead>
                    <tr class="bg-slate-50 text-slate-700 border-b border-slate-200">
                        <th class="p-3.5 font-semibold">ID Examen</th>
                        <th class="p-3.5 font-semibold">Fecha</th>
                        <th class="p-3.5 font-semibold">Ojo Derecho (OD) [Esf / Cil / Eje]</th>
                        <th class="p-3.5 font-semibold">Ojo Izquierdo (OI) [Esf / Cil / Eje]</th>
                        <th class="p-3.5 font-semibold">Adición</th>
                        <th class="p-3.5 font-semibold">D.P.</th>
                        <th class="p-3.5 font-semibold">Observaciones</th>
                        <th class="p-3.5 font-semibold text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-slate-100">
                    <!-- Fila de ejemplo 1 mapeada con los campos reales -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#EX-001</td>
                        <td class="p-3.5 font-medium text-slate-800">2026-10-30</td>
                        <td class="p-3.5 text-slate-700 font-mono">-1.50 / -0.50 x 90°</td>
                        <td class="p-3.5 text-slate-700 font-mono">-1.25 / -0.25 x 85°</td>
                        <td class="p-3.5 text-slate-700 font-mono">+2.00</td>
                        <td class="p-3.5 text-slate-700 font-mono">62 mm</td>
                        <td class="p-3.5 text-slate-500 italic">Leve astigmatismo miópico bilateral.</td>
                        <td class="p-3.5 text-center">
                            <button class="inline-flex items-center gap-1 text-sky-600 hover:text-sky-800 font-semibold text-xs transition-colors">
                                <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                                </svg>
                                Descargar Receta
                            </button>
                        </td>
                    </tr>
                    <!-- Fila de ejemplo 2 -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#EX-000</td>
                        <td class="p-3.5 font-medium text-slate-800">2026-06-15</td>
                        <td class="p-3.5 text-slate-700 font-mono">-1.25 / 0.00 x 0°</td>
                        <td class="p-3.5 text-slate-700 font-mono">-1.00 / 0.00 x 0°</td>
                        <td class="p-3.5 text-slate-700 font-mono">+1.75</td>
                        <td class="p-3.5 text-slate-700 font-mono">60 mm</td>
                        <td class="p-3.5 text-slate-500 italic">Estabilidad visual correcta.</td>
                        <td class="p-3.5 text-center">
                            <button class="inline-flex items-center gap-1 text-sky-600 hover:text-sky-800 font-semibold text-xs transition-colors">
                                <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                                </svg>
                                Descargar Receta
                            </button>
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
        var table = $('#tablaResultados').DataTable({
            dom: 'rt',
            pageLength: 5,
            language: {
                emptyTable: "No hay resultados de exámenes registrados",
                zeroRecords: "No se encontraron registros coincidentes"
            }
        });

        // Buscador personalizado
        $('#customSearch').on('keyup', function() {
            table.search(this.value).draw();
        });

        // Selector de cantidad de registros
        $('#customPageLength').on('change', function() {
            table.page.len(parseInt($(this).val())).draw();
        });

        // Renderizado barra inferior con Tailwind
        function renderPagination() {
            var info = table.page.info();
            var infoText = "Mostrando del " + (info.recordsTotal === 0 ? 0 : (info.start + 1)) + 
                           " al " + info.end + " de un total de " + info.recordsTotal + " exámenes registrados";
            $('#tableInfo').text(infoText);

            var paginationHtml = '';
            var prevClasses = info.page === 0 
                ? 'opacity-40 cursor-not-allowed bg-slate-50 text-slate-400 border-slate-200' 
                : 'hover:bg-slate-100 bg-white text-slate-700 border-slate-200 cursor-pointer';
            paginationHtml += '<button type="button" class="px-3.5 py-1.5 text-xs font-semibold border rounded-lg transition-all ' + prevClasses + '" ' + (info.page === 0 ? 'disabled' : 'id="btnPrev"') + '>Anterior</button>';

            for (var i = 0; i < info.pages; i++) {
                var isActive = i === info.page;
                var pageClasses = isActive 
                    ? 'bg-sky-600 text-white border-sky-600 shadow-sm shadow-sky-600/20' 
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