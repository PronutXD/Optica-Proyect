<%-- 
    Document   : citas
    Description: Subvista de gestión y control de citas para el panel de administración basada en vw_CitasDetalle.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Estilos para DataTables (remueve bordes nativos innecesarios) -->
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
            <h1 class="text-2xl font-bold text-slate-800">Gestión de Citas y Atención Visual</h1>
            <p class="text-xs text-slate-500 mt-1">Control general de citas agendadas, estados de atención y personal asignado (<code class="text-blue-600 font-mono">vw_CitasDetalle</code>).</p>
        </div>
        <div class="flex items-center gap-3">
            <button type="button" class="inline-flex items-center gap-2 bg-slate-900 hover:bg-slate-800 text-white text-xs font-bold px-4 py-2.5 rounded-xl transition-all shadow-sm cursor-pointer">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"/>
                </svg>
                Nueva Cita
            </button>
        </div>
    </div>

    <!-- 2. Tabla Completa de Administración de Citas -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-5">
        
        <!-- Cabecera de la sección y Filtros perfectamente alineados -->
        <div class="flex flex-col gap-4 border-b border-slate-100 pb-5">
            <div>
                <h2 class="text-base font-bold text-slate-800">Listado General de Citas</h2>
                <p class="text-xs text-slate-500 mt-0.5">Filtra, busca y administra las atenciones médicas y ópticas programadas en el sistema.</p>
            </div>
            
            <!-- Barra de controles unificada con diseño limpio -->
            <div class="flex flex-wrap items-center justify-between gap-3 bg-slate-50/70 p-3 rounded-2xl border border-slate-200/60">
                
                <!-- Izquierda: Selector de cantidad de registros -->
                <div class="flex items-center gap-2">
                    <span class="text-xs text-slate-500 font-medium">Mostrar:</span>
                    <select id="customPageLength" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                        <option value="5">5</option>
                        <option value="10">10</option>
                        <option value="25">25</option>
                    </select>
                    <span class="text-xs text-slate-500 font-medium">registros</span>
                </div>

                <!-- Derecha: Buscador y Filtro de Estado agrupados -->
                <div class="flex flex-wrap items-center gap-2.5">
                    <!-- Buscador -->
                    <div class="relative">
                        <span class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-slate-400">
                            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                            </svg>
                        </span>
                        <input type="text" id="customSearch" placeholder="Buscar por cliente, servicio..." 
                               class="w-48 sm:w-60 h-9 pl-9 pr-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                    </div>

                    <!-- Filtro por Estado -->
                    <div>
                        <select id="filtroEstado" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-slate-900 focus:ring-1 focus:ring-slate-900 transition-all">
                            <option value="">Todos los Estados</option>
                            <option value="Pendiente">Pendiente</option>
                            <option value="Completada">Completada</option>
                            <option value="Cancelada">Cancelada</option>
                        </select>
                    </div>
                </div>

            </div>
        </div>
        
        <!-- Tabla Interactiva -->
        <div class="overflow-x-auto">
            <table id="tablaGestionCitas" class="w-full text-left text-xs text-slate-600 border-collapse">
                <thead>
                    <tr class="bg-slate-50 text-slate-700 border-b border-slate-200">
                        <th class="p-3.5 font-semibold">ID</th>
                        <th class="p-3.5 font-semibold">Fecha y Hora</th>
                        <th class="p-3.5 font-semibold">Cliente</th>
                        <th class="p-3.5 font-semibold">Servicio</th>
                        <th class="p-3.5 font-semibold">Optometrista</th>
                        <th class="p-3.5 font-semibold">Sucursal</th>
                        <th class="p-3.5 font-semibold">Estado</th>
                        <th class="p-3.5 font-semibold text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-slate-100">
                    <!-- Fila de Ejemplo 1 (Aquí irá tu bucle Java con los datos de vw_CitasDetalle) -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#101</td>
                        <td class="p-3.5">02/11/2026 10:00 AM</td>
                        <td class="p-3.5 font-medium text-slate-800">Carlos Martínez</td>
                        <td class="p-3.5">Examen de la Vista</td>
                        <td class="p-3.5 text-slate-600">Dr. Admin2</td>
                        <td class="p-3.5 text-slate-600">Sucursal Principal</td>
                        <td class="p-3.5">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-amber-100 text-amber-700 border border-amber-200">
                                Pendiente
                            </span>
                        </td>
                        <td class="p-3.5 text-center">
                            <div class="flex items-center justify-center gap-2">
                                <button title="Completar cita" class="p-1.5 rounded-lg bg-slate-100 text-slate-600 hover:bg-slate-200 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/></svg>
                                </button>
                                <button title="Ver detalles" class="p-1.5 rounded-lg bg-sky-50 text-sky-600 hover:bg-sky-100 transition-colors cursor-pointer">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg>
                                </button>
                            </div>
                        </td>
                    </tr>
                    
                    <!-- Fila de Ejemplo 2 -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#102</td>
                        <td class="p-3.5">02/11/2026 11:30 AM</td>
                        <td class="p-3.5 font-medium text-slate-800">Ana Sofía Pineda</td>
                        <td class="p-3.5">Adaptación de Lentes</td>
                        <td class="p-3.5 text-slate-600">Dr. Admin2</td>
                        <td class="p-3.5 text-slate-600">Sucursal Principal</td>
                        <td class="p-3.5">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-emerald-100 text-emerald-700 border border-emerald-200">
                                Completada
                            </span>
                        </td>
                        <td class="p-3.5 text-center">
                            <div class="flex items-center justify-center gap-2">
                                <button title="Atendido" class="p-1.5 rounded-lg bg-slate-100 text-slate-300 cursor-not-allowed" disabled>
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/></svg>
                                </button>
                                <button title="Ver detalles" class="p-1.5 rounded-lg bg-sky-50 text-sky-600 hover:bg-sky-100 transition-colors cursor-pointer">
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
        var table = $('#tablaGestionCitas').DataTable({
            dom: 'rt',
            pageLength: 5,
            language: {
                emptyTable: "No hay citas registradas",
                zeroRecords: "No se encontraron registros coincidentes"
            }
        });

        // Buscador sincronizado
        $('#customSearch').on('keyup', function() {
            table.search(this.value).draw();
        });

        // Filtro por Estado en la columna correspondiente (índice 6)
        $('#filtroEstado').on('change', function() {
            var val = $(this).val();
            table.column(6).search(val, false, false).draw();
        });

        // Selector de cantidad de registros por página
        $('#customPageLength').on('change', function() {
            table.page.len(parseInt($(this).val())).draw();
        });

        // Renderizado dinámico de la barra inferior con Tailwind
        function renderPagination() {
            var info = table.page.info();
            var infoText = "Mostrando del " + (info.recordsTotal === 0 ? 0 : (info.start + 1)) + 
                           " al " + info.end + " de un total de " + info.recordsTotal + " citas registradas";
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