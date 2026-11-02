<%-- 
    Document   : citas
    Created on : 31 oct 2026, 8:27:43 p.m.
    Author     : User
--%>

<%-- 
    Document   : agendar (Subvista de Gestión y Reserva de Citas)
    Description: Formulario para agendar citas y tabla con controles y filtros estilizados en Tailwind.
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
            <h1 class="text-2xl font-bold text-slate-800">Gestión de Citas Ópticas</h1>
            <p class="text-xs text-slate-500 mt-1">Agendar nuevas evaluaciones, consulta horarios disponibles y administra tus reservas activas.</p>
        </div>
        <div class="flex items-center gap-2">
            <span class="inline-flex items-center gap-1.5 px-3 py-1.5 bg-emerald-50 text-emerald-700 text-xs font-semibold rounded-xl border border-emerald-100">
                <span class="w-2 h-2 rounded-full bg-emerald-500 animate-pulse"></span>
                Sistema Activo
            </span>
        </div>
    </div>

    <!-- 2. Formulario de Agendamiento / Reprogramación -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-6">
        <div class="border-b border-slate-100 pb-4">
            <h2 class="text-base font-bold text-slate-800 flex items-center gap-2">
                <svg class="w-5 h-5 text-sky-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"/>
                </svg>
                Agendar o Reprogramar Cita
            </h2>
            <p class="text-xs text-slate-500 mt-0.5">Selecciona el tipo de servicio, la sucursal de preferencia y el horario que mejor se adapte a ti.</p>
        </div>

        <form action="${pageContext.request.contextPath}/SvGuardarCita" method="POST" class="space-y-6">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5">
                
                <!-- Tipo de Servicio -->
                <div class="space-y-1.5">
                    <label class="block text-xs font-bold text-slate-700 uppercase tracking-wide">Tipo de Servicio</label>
                    <select name="idServicio" required class="w-full h-10 px-3.5 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                        <option value="">Seleccione un servicio...</option>
                        <option value="1">Examen Visual Completo</option>
                        <option value="2">Graduación de Lentes</option>
                        <option value="3">Adaptación de Lentes de Contacto</option>
                        <option value="4">Revisión de Armazón / Mantenimiento</option>
                    </select>
                </div>

                <!-- Sucursal -->
                <div class="space-y-1.5">
                    <label class="block text-xs font-bold text-slate-700 uppercase tracking-wide">Sucursal de Atención</label>
                    <select name="idSucursal" required class="w-full h-10 px-3.5 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                        <option value="">Seleccione una sucursal...</option>
                        <option value="1">Sucursal Principal (Centro)</option>
                        <option value="2">Sucursal Norte (Plaza Comercial)</option>
                    </select>
                </div>

                <!-- Fecha de la Cita -->
                <div class="space-y-1.5">
                    <label class="block text-xs font-bold text-slate-700 uppercase tracking-wide">Fecha de la Cita</label>
                    <input type="date" name="fechaCita" required 
                           class="w-full h-10 px-3.5 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                </div>

                <!-- Horarios Disponibles -->
                <div class="space-y-1.5">
                    <label class="block text-xs font-bold text-slate-700 uppercase tracking-wide">Horario Disponible</label>
                    <select name="horaCita" required class="w-full h-10 px-3.5 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                        <option value="">Seleccione hora...</option>
                        <option value="09:00">09:00 AM - 09:40 AM</option>
                        <option value="10:00">10:00 AM - 10:40 AM</option>
                        <option value="11:00">11:00 AM - 11:40 AM</option>
                        <option value="14:00">02:00 PM - 02:40 PM</option>
                        <option value="15:00">03:00 PM - 03:40 PM</option>
                        <option value="16:00">04:00 PM - 04:40 PM</option>
                    </select>
                </div>

                <!-- Notas o Motivo Adicional -->
                <div class="space-y-1.5 md:col-span-2">
                    <label class="block text-xs font-bold text-slate-700 uppercase tracking-wide">Notas o Síntomas (Opcional)</label>
                    <input type="text" name="notas" placeholder="Ej. Presento fatiga visual al trabajar frente al ordenador..." 
                           class="w-full h-10 px-3.5 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                </div>

            </div>

            <!-- Botón de Envío -->
            <div class="flex justify-end pt-2">
                <button type="submit" class="inline-flex items-center gap-2 bg-sky-600 hover:bg-sky-700 text-white text-xs font-bold px-6 py-2.5 rounded-xl transition-all shadow-md shadow-sky-600/20 cursor-pointer">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/>
                    </svg>
                    Confirmar y Registrar Cita
                </button>
            </div>
        </form>
    </div>

    <!-- 3. Tabla Completa de Administración de Citas -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-5">
        
        <!-- Cabecera de la sección y Filtros perfectamente alineados -->
        <div class="flex flex-col gap-4 border-b border-slate-100 pb-5">
            <div>
                <h2 class="text-base font-bold text-slate-800">Historial y Administración de Citas</h2>
                <p class="text-xs text-slate-500 mt-0.5">Consulta el estado actual de tus reservas, reprograma o cancela cuando lo necesites.</p>
            </div>
            
            <!-- Barra de controles unificada con diseño limpio -->
            <div class="flex flex-wrap items-center justify-between gap-3 bg-slate-50/70 p-3 rounded-2xl border border-slate-200/60">
                
                <!-- Izquierda: Selector de cantidad de registros -->
                <div class="flex items-center gap-2">
                    <span class="text-xs text-slate-500 font-medium">Mostrar:</span>
                    <select id="customPageLength" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
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
                        <input type="text" id="customSearch" placeholder="Buscar en historial..." 
                               class="w-48 sm:w-56 h-9 pl-9 pr-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                    </div>

                    <!-- Filtro por Estado -->
                    <div>
                        <select id="filtroEstado" class="h-9 px-3 bg-white border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
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
                        <th class="p-3.5 font-semibold">ID Cita</th>
                        <th class="p-3.5 font-semibold">Servicio</th>
                        <th class="p-3.5 font-semibold">Sucursal</th>
                        <th class="p-3.5 font-semibold">Fecha y Hora</th>
                        <th class="p-3.5 font-semibold">Estado</th>
                        <th class="p-3.5 font-semibold">Notas</th>
                        <th class="p-3.5 font-semibold text-center">Acciones de Gestión</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-slate-100">
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#C-005</td>
                        <td class="p-3.5 font-medium text-slate-800">Examen Visual Completo</td>
                        <td class="p-3.5 text-slate-600">Sucursal Principal</td>
                        <td class="p-3.5">2026-10-29 09:00</td>
                        <td class="p-3.5">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-amber-100 text-amber-700 border border-amber-200">
                                Pendiente
                            </span>
                        </td>
                        <td class="p-3.5 text-slate-500 italic">Revisión general solicitada</td>
                        <td class="p-3.5 text-center space-x-2">
                            <button class="text-sky-600 hover:text-sky-800 font-semibold text-xs transition-colors">Reprogramar</button>
                            <span class="text-slate-300">|</span>
                            <button class="text-rose-600 hover:text-rose-800 font-semibold text-xs transition-colors">Cancelar</button>
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#C-006</td>
                        <td class="p-3.5 font-medium text-slate-800">Graduación de Lentes</td>
                        <td class="p-3.5 text-slate-600">Sucursal Norte</td>
                        <td class="p-3.5">2026-10-30 15:00</td>
                        <td class="p-3.5">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-emerald-100 text-emerald-700 border border-emerald-200">
                                Completada
                            </span>
                        </td>
                        <td class="p-3.5 text-slate-500 italic">Entrega de receta exitosa</td>
                        <td class="p-3.5 text-center">
                            <span class="text-slate-400 text-xs">Finalizada</span>
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

        // Buscador
        $('#customSearch').on('keyup', function() {
            table.search(this.value).draw();
        });

        // Filtro por Estado limpio sin regex estricta
        $('#filtroEstado').on('change', function() {
            var val = $(this).val();
            table.column(4).search(val, false, false).draw();
        });

        // Selector de cantidad de registros
        $('#customPageLength').on('change', function() {
            table.page.len(parseInt($(this).val())).draw();
        });

        // Renderizado barra inferior
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