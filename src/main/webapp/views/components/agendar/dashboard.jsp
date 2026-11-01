<%-- 
    Document   : dashboard
    Created on : 31 oct 2026, 3:47:31 p.m.
    Author     : User
--%>

<%-- 
    Document   : dashboard-citas
    Description: Dashboard principal del cliente con Calendario de citas y Tabla interactiva.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Estilos específicos para DataTables adaptados a Tailwind CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
<style>
    /* Personalización visual de DataTables para encajar con Tailwind */
    .dataTables_wrapper .dataTables_length select,
    .dataTables_wrapper .dataTables_filter input {
        border: 1px solid #e2e8f0;
        border-radius: 0.5rem;
        padding: 0.4rem 0.8rem;
        outline: none;
        background-color: #f8fafc;
        font-size: 0.875rem;
    }
    .dataTables_wrapper .dataTables_filter input:focus {
        border-color: #0284c7;
        box-shadow: 0 0 0 1px #0284c7;
    }
    table.dataTable.no-footer {
        border-bottom: 1px solid #e2e8f0 !important;
    }
    .dataTables_wrapper .dataTables_paginate .paginate_button.current {
        background: #0284c7 !important;
        color: white !important;
        border: 1px solid #0284c7 !important;
        border-radius: 0.375rem !important;
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

    <!-- 2. Sección del Calendario de Citas (Próximos Turnos) -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-4">
        <div class="flex items-center justify-between border-b border-slate-100 pb-4">
            <h2 class="text-base font-bold text-slate-800 flex items-center gap-2">
                <svg class="w-5 h-5 text-sky-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                </svg>
                Vista General del Mes
            </h2>
            <span class="text-xs font-semibold px-2.5 py-1 bg-sky-50 text-sky-700 rounded-full border border-sky-100">Citas Programadas</span>
        </div>

        <!-- Layout Interno del Calendario / Tarjetas Resumen -->
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <!-- Widget de Cita Más Próxima -->
            <div class="bg-gradient-to-br from-sky-600 to-sky-700 rounded-xl p-5 text-white shadow-md flex flex-col justify-between">
                <div>
                    <span class="text-xs uppercase tracking-wider font-semibold opacity-80">Próxima Consulta</span>
                    <h3 class="text-lg font-extrabold mt-1">Examen de Vista Completo</h3>
                    <p class="text-xs opacity-90 mt-2">Atendido por: Dr. Especialista</p>
                </div>
                <div class="mt-6 pt-4 border-t border-white/20 flex justify-between items-center text-xs">
                    <span class="font-bold bg-white/20 px-2.5 py-1 rounded-lg">15 Nov 2026</span>
                    <span class="font-medium">10:30 AM</span>
                </div>
            </div>

            <!-- Espacio reservado para el widget o resumen de fechas -->
            <div class="lg:col-span-2 bg-slate-50 border border-slate-200/60 rounded-xl p-5 flex flex-col justify-center items-center text-center space-y-2">
                <div class="w-12 h-12 bg-sky-100 text-sky-600 rounded-full flex items-center justify-center">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"/>
                    </svg>
                </div>
                <h4 class="text-sm font-bold text-slate-700">Recordatorio de Evaluación</h4>
                <p class="text-xs text-slate-500 max-w-md">Recuerda llegar 10 minutos antes de tu cita agendada. Si necesitas reprogramar, hazlo desde la tabla inferior.</p>
            </div>
        </div>
    </div>

    <!-- 3. Tabla Interactiva con DataTables -->
    <div class="bg-white p-6 rounded-2xl border border-slate-200/80 shadow-sm space-y-4">
        <h2 class="text-base font-bold text-slate-800">Historial y Estado de Citas</h2>
        
        <div class="overflow-x-auto">
            <table id="tablaCitas" class="w-full text-left text-xs text-slate-600 border-collapse">
                <thead>
                    <tr class="bg-slate-50 text-slate-700 border-b border-slate-200">
                        <th class="p-3 font-semibold">ID</th>
                        <th class="p-3 font-semibold">Servicio / Motivo</th>
                        <th class="p-3 font-semibold">Fecha</th>
                        <th class="p-3 font-semibold">Hora</th>
                        <th class="p-3 font-semibold">Estado</th>
                        <th class="p-3 font-semibold text-center">Acción</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-slate-100">
                    <!-- Ejemplo de Fila Activa -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3 font-bold text-slate-800">#C-001</td>
                        <td class="p-3 font-medium text-slate-800">Examen Oftalmológico General</td>
                        <td class="p-3">15/11/2026</td>
                        <td class="p-3">10:30 AM</td>
                        <td class="p-3">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-amber-100 text-amber-700 border border-amber-200">
                                Pendiente
                            </span>
                        </td>
                        <td class="p-3 text-center">
                            <button class="text-rose-600 hover:text-rose-800 font-semibold text-xs transition-colors">Cancelar</button>
                        </td>
                    </tr>
                    <!-- Ejemplo de Fila Completada -->
                    <tr class="hover:bg-slate-50/80 transition-colors">
                        <td class="p-3 font-bold text-slate-800">#C-000</td>
                        <td class="p-3 font-medium text-slate-800">Graduación de Lentes</td>
                        <td class="p-3">01/10/2026</td>
                        <td class="p-3">02:00 PM</td>
                        <td class="p-3">
                            <span class="px-2.5 py-1 rounded-full text-[10px] font-bold bg-emerald-100 text-emerald-700 border border-emerald-200">
                                Completada
                            </span>
                        </td>
                        <td class="p-3 text-center">
                            <span class="text-slate-400 text-xs">Sin acciones</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

<!-- Scripts de jQuery y DataTables -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<script>
    $(document).ready(function() {
        $('#tablaCitas').DataTable({
            language: {
                search: "Buscar cita:",
                lengthMenu: "Mostrar _MENU_ registros",
                info: "Mostrando _START_ a _END_ de _TOTAL_ citas",
                infoEmpty: "No hay citas registradas",
                zeroRecords: "No se encontraron citas coincidentes",
                paginate: {
                    first: "Primero",
                    last: "Último",
                    next: "Siguiente",
                    previous: "Anterior"
                }
            },
            pageLength: 5,
            responsive: true
        });
    });
</script>
