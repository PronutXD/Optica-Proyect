<%-- 
    Document   : dashboard
    Created on : 31 oct 2026, 3:47:31 p.m.
    Author     : User
--%>

<%-- 
    Document   : dashboard
    Description: Dashboard principal con Calendario Dinámico e Interactivo y Tabla con DataTables estilizada.
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

    <!-- 1. Encabezado del Dashboard -->
    <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4 bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm">
        <div>
            <h1 class="text-2xl font-bold text-slate-800">Mis Citas Médicas</h1>
            <p class="text-xs text-slate-500 mt-1">Consulta tu agenda activa y el historial completo de evaluaciones ópticas.</p>
        </div>
        <a href="${pageContext.request.contextPath}/SvPanelCliente?action=agendar" 
           class="inline-flex items-center justify-center gap-2 bg-sky-600 hover:bg-sky-700 text-white text-sm font-semibold px-4 py-2.5 rounded-xl transition-all shadow-md shadow-sky-600/20">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"/>
            </svg>
            Agendar Nueva Cita
        </a>
    </div>

    <!-- 2. Sección de Próxima Cita y Calendario Dinámico e Interactivo -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-4">
        <div class="flex items-center justify-between border-b border-slate-100 pb-4">
            <h2 class="text-base font-bold text-slate-800 flex items-center gap-2">
                <svg class="w-5 h-5 text-sky-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                </svg>
                Vista General y Agenda del Mes
            </h2>
            <span class="text-xs font-semibold px-2.5 py-1 bg-sky-50 text-sky-700 rounded-full border border-sky-100" id="mesAnioLabel">Cargando...</span>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
            
            <!-- Izquierda: Tarjeta de la Cita Inmediata / Próxima -->
            <div class="bg-gradient-to-br from-sky-600 to-sky-700 rounded-xl p-5 text-white shadow-md flex flex-col justify-between">
                <div>
                    <span class="text-xs uppercase tracking-wider font-semibold opacity-80">Próxima Consulta</span>
                    <h3 class="text-lg font-extrabold mt-1" id="proxServicio">Examen de Vista Completo</h3>
                    <p class="text-xs opacity-90 mt-2" id="proxDetalle">Sucursal Principal • Dr. Especialista</p>
                </div>
                <div class="mt-6 pt-4 border-t border-white/20 flex justify-between items-center text-xs">
                    <span class="font-bold bg-white/20 px-2.5 py-1 rounded-lg" id="proxFecha">29 Oct 2026</span>
                    <span class="font-medium" id="proxHora">09:00 AM</span>
                </div>
            </div>

            <!-- Derecha: Calendario Dinámico Funcional -->
            <div class="lg:col-span-2 bg-slate-50 border border-slate-200/60 rounded-xl p-5 flex flex-col justify-between">
                
                <!-- Controles de Navegación del Calendario (Mes Anterior / Siguiente) -->
                <div class="flex items-center justify-between mb-3">
                    <span id="calendarTitle" class="text-xs font-bold text-slate-700 uppercase tracking-wide">Octubre 2026</span>
                    <div class="flex items-center gap-2">
                        <button type="button" id="prevMonth" class="p-1 rounded-lg hover:bg-slate-200 text-slate-600 transition-colors">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"/></svg>
                        </button>
                        <button type="button" id="nextMonth" class="p-1 rounded-lg hover:bg-slate-200 text-slate-600 transition-colors">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                </div>

                <!-- Días de la semana -->
                <div class="grid grid-cols-7 gap-1 text-center text-[11px] font-bold text-slate-400 mb-1">
                    <div>Lun</div><div>Mar</div><div>Mié</div><div>Jue</div><div>Vie</div><div>Sáb</div><div>Dom</div>
                </div>

                <!-- Cuadrícula dinámica donde JavaScript inyectará los días -->
                <div id="calendarDays" class="grid grid-cols-7 gap-1 text-center text-xs">
                    <!-- Generado dinámicamente por JS -->
                </div>

            </div>
        </div>
    </div>

    <!-- 3. Sección Historial de Citas -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-5">
        
        <!-- Controles Superiores -->
        <div class="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4">
            <h2 class="text-base font-bold text-slate-800">Historial y Estado de Citas</h2>
            
            <div class="flex flex-wrap items-center gap-3">
                <div class="flex items-center gap-2">
                    <span class="text-xs text-slate-500 font-medium">Mostrar:</span>
                    <select id="customPageLength" class="px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                        <option value="5">5</option>
                        <option value="10">10</option>
                        <option value="25">25</option>
                        <option value="50">50</option>
                    </select>
                </div>

                <div class="relative">
                    <span class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-slate-400">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                        </svg>
                    </span>
                    <input type="text" id="customSearch" placeholder="Buscar en historial..." 
                           class="w-full sm:w-56 pl-9 pr-4 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                </div>

                <div>
                    <select id="filtroEstado" class="px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs text-slate-700 focus:outline-none focus:border-sky-600 focus:ring-1 focus:ring-sky-600 transition-all">
                        <option value="">Todos los Estados</option>
                        <option value="Pendiente">Pendiente</option>
                        <option value="Completada">Completada</option>
                        <option value="Cancelada">Cancelada</option>
                    </select>
                </div>
            </div>
        </div>
        
        <!-- Tabla -->
        <div class="overflow-x-auto">
            <table id="tablaCitas" class="w-full text-left text-xs text-slate-600 border-collapse">
                <thead>
                    <tr class="bg-slate-50 text-slate-700 border-b border-slate-200">
                        <th class="p-3.5 font-semibold">ID Cita</th>
                        <th class="p-3.5 font-semibold">Servicio</th>
                        <th class="p-3.5 font-semibold">Sucursal</th>
                        <th class="p-3.5 font-semibold">Fecha y Hora</th>
                        <th class="p-3.5 font-semibold">Estado</th>
                        <th class="p-3.5 font-semibold">Notas</th>
                        <th class="p-3.5 font-semibold text-center">Acciones</th>
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
                        <td class="p-3.5 text-center">
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
                            <span class="text-slate-400 text-xs">Sin acciones</span>
                        </td>
                    </tr>
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3.5 font-bold text-slate-800">#C-007</td>
                        <td class="p-3.5 font-medium text-slate-800">Adaptación de Lentes de Contacto</td>
                        <td class="p-3.5 text-slate-600">Sucursal Principal</td>
                        <td class="p-3.5">2026-10-28 16:00</td>
                        <td class="p-3.5">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-emerald-100 text-emerald-700 border border-emerald-200">
                                Completada
                            </span>
                        </td>
                        <td class="p-3.5 text-slate-500 italic">Prueba de comodidad ok</td>
                        <td class="p-3.5 text-center">
                            <span class="text-slate-400 text-xs">Sin acciones</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Barra Inferior Personalizada -->
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
        // ==========================================
        // 1. CONFIGURACIÓN DE DATATABLES
        // ==========================================
        var table = $('#tablaCitas').DataTable({
            dom: 'rt',
            pageLength: 5,
            language: {
                emptyTable: "No hay citas registradas",
                zeroRecords: "No se encontraron registros coincidentes"
            }
        });

        $('#customSearch').on('keyup', function() {
            table.search(this.value).draw();
        });

        $('#filtroEstado').on('change', function() {
            var val = $(this).val();
            table.column(4).search(val, false, false).draw();
        });

        $('#customPageLength').on('change', function() {
            table.page.len(parseInt($(this).val())).draw();
        });

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

        // ==========================================
        // 2. CALENDARIO DINÁMICO E INTERACTIVO
        // ==========================================
        // Aquí puedes inyectar tus citas desde la base de datos (Formato YYYY-MM-DD)
        var citasBD = [
            { fecha: "2026-10-28", servicio: "Adaptación de Lentes", hora: "16:00" },
            { fecha: "2026-10-29", servicio: "Examen Visual Completo", hora: "09:00" },
            { fecha: "2026-10-30", servicio: "Graduación de Lentes", hora: "15:00" }
        ];

        var currentDate = new Date(2026, 9, 1); // Octubre 2026 basado en tu contexto actual

        function renderCalendar(date) {
            var year = date.getFullYear();
            var month = date.getMonth();

            var monthsNames = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
            $('#calendarTitle, #mesAnioLabel').text(monthsNames[month] + " " + year);

            var firstDayIndex = new Date(year, month, 1).getDay();
            // Ajustar para que la semana empiece en Lunes (Lunes = 0, Domingo = 6)
            firstDayIndex = (firstDayIndex === 0) ? 6 : firstDayIndex - 1;

            var totalDays = new Date(year, month + 1, 0).getDate();
            var prevTotalDays = new Date(year, month, 0).getDate();

            var calendarHtml = '';

            // Días del mes anterior (relleno)
            for (var i = firstDayIndex; i > 0; i--) {
                var dayNum = prevTotalDays - i + 1;
                calendarHtml += '<div class="py-2 text-slate-300">' + dayNum + '</div>';
            }

            // Días del mes actual
            for (var d = 1; d <= totalDays; d++) {
                var formattedMonth = String(month + 1).padStart(2, '0');
                var formattedDay = String(d).padStart(2, '0');
                var dateString = year + "-" + formattedMonth + "-" + formattedDay;

                // Verificar si este día tiene cita en el arreglo de la BD
                var citaEnDia = citasBD.find(c => c.fecha === dateString);
                
                if (citaEnDia) {
                    calendarHtml += '<div class="py-2 relative font-bold text-sky-700 bg-sky-50 rounded-lg border border-sky-200 cursor-pointer group" title="' + citaEnDia.servicio + ' - ' + citaEnDia.hora + '">' + 
                                        d + 
                                        '<span class="absolute bottom-0.5 left-1/2 transform -translate-x-1/2 w-1 h-1 bg-sky-600 rounded-full"></span>' +
                                    '</div>';
                } else {
                    calendarHtml += '<div class="py-2 text-slate-700 font-medium">' + d + '</div>';
                }
            }

            $('#calendarDays').html(calendarHtml);
        }

        // Navegación de meses
        $('#prevMonth').on('click', function() {
            currentDate.setMonth(currentDate.getMonth() - 1);
            renderCalendar(currentDate);
        });

        $('#nextMonth').on('click', function() {
            currentDate.setMonth(currentDate.getMonth() + 1);
            renderCalendar(currentDate);
        });

        renderCalendar(currentDate);
    });
</script>