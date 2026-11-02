<%-- 
    Document   : novedades_semana
    Created on : 25 oct 2026, 9:33:52 a.m.
    Author     : User
--%>

<%-- 
    Document   : novedades_semana
    Description: Sección de Novedades de la Semana manteniendo la estética inmersiva de tarjetas oscuras con fotografía
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 space-y-6">
    
    <!-- Encabezado de la Sección -->
    <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2 border-b border-slate-100 pb-4">
        <div>
            <span class="text-xs font-bold text-sky-600 uppercase tracking-wider">Recién Llegados</span>
            <h3 class="text-2xl font-extrabold text-slate-900 tracking-tight mt-0.5">Novedades de la Semana</h3>
            <p class="text-xs text-slate-500 mt-0.5">Descubre los modelos más recientes que acaban de incorporarse a nuestra colección.</p>
        </div>
        <a href="#ver-todas" class="text-xs font-bold text-sky-600 hover:text-sky-700 flex items-center gap-1 transition-colors self-start sm:self-auto">
            Ver todo el inventario
            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"></path></svg>
        </a>
    </div>

    <!-- Cuadrícula de 4 Tarjetas de Novedades -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
        
        <!-- Tarjeta Novedad 1 -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-6 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
            <!-- Imagen de Fondo Inmersiva -->
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-50 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1574258495973-f010dfbb5371?auto=format&fit=crop&q=80');"></div>
            <!-- Velo degradado para legibilidad -->
            <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/70 to-transparent"></div>

            <!-- Badge Superior -->
            <div class="relative z-10 flex justify-between items-start">
                <span class="px-2.5 py-1 bg-sky-500/20 text-sky-300 border border-sky-400/35 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                    Nuevo Ingreso
                </span>
                <span class="text-xs font-extrabold text-white bg-slate-900/80 px-2.5 py-1 rounded-lg backdrop-blur-sm border border-slate-700">
                    $165.00
                </span>
            </div>

            <!-- Información Inferior -->
            <div class="relative z-10 space-y-2">
                <div>
                    <span class="text-[10px] font-bold text-sky-400 uppercase tracking-wider">Carrera</span>
                    <h4 class="text-lg font-bold text-white tracking-tight leading-snug">Vanguard Bold</h4>
                </div>
                <p class="text-xs text-slate-300 font-normal line-clamp-2">
                    Montura geométrica con detalles metálicos y acabado mate de alta elegancia.
                </p>
                <div class="pt-1">
                    <button class="w-full py-2 bg-white/10 hover:bg-sky-600 text-white text-xs font-semibold rounded-xl border border-white/20 hover:border-transparent backdrop-blur-sm transition-all shadow-sm">
                        Ver Detalles
                    </button>
                </div>
            </div>
        </div>

        <!-- Tarjeta Novedad 2 -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-6 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-50 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&q=80');"></div>
            <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/70 to-transparent"></div>

            <div class="relative z-10 flex justify-between items-start">
                <span class="px-2.5 py-1 bg-amber-500/20 text-amber-300 border border-amber-500/35 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                    Edición Limitada
                </span>
                <span class="text-xs font-extrabold text-white bg-slate-900/80 px-2.5 py-1 rounded-lg backdrop-blur-sm border border-slate-700">
                    $190.00
                </span>
            </div>

            <div class="relative z-10 space-y-2">
                <div>
                    <span class="text-[10px] font-bold text-sky-400 uppercase tracking-wider">Ray-Ban</span>
                    <h4 class="text-lg font-bold text-white tracking-tight leading-snug">Clubmaster Metal</h4>
                </div>
                <p class="text-xs text-slate-300 font-normal line-clamp-2">
                    La clásica combinación retro renovada con metales ultralivianos y cristales degradados.
                </p>
                <div class="pt-1">
                    <button class="w-full py-2 bg-white/10 hover:bg-sky-600 text-white text-xs font-semibold rounded-xl border border-white/20 hover:border-transparent backdrop-blur-sm transition-all shadow-sm">
                        Ver Detalles
                    </button>
                </div>
            </div>
        </div>

        <!-- Tarjeta Novedad 3 -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-6 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-50 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1591076482161-42ce6da69f67?auto=format&fit=crop&q=80');"></div>
            <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/70 to-transparent"></div>

            <div class="relative z-10 flex justify-between items-start">
                <span class="px-2.5 py-1 bg-emerald-500/20 text-emerald-300 border border-emerald-500/35 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                    Tendencia Blue
                </span>
                <span class="text-xs font-extrabold text-white bg-slate-900/80 px-2.5 py-1 rounded-lg backdrop-blur-sm border border-slate-700">
                    $140.00
                </span>
            </div>

            <div class="relative z-10 space-y-2">
                <div>
                    <span class="text-[10px] font-bold text-sky-400 uppercase tracking-wider">Oakley</span>
                    <h4 class="text-lg font-bold text-white tracking-tight leading-snug">Holbrook Lite</h4>
                </div>
                <p class="text-xs text-slate-300 font-normal line-clamp-2">
                    Diseño deportivo urbano optimizado con protección integral contra luz azul.
                </p>
                <div class="pt-1">
                    <button class="w-full py-2 bg-white/10 hover:bg-sky-600 text-white text-xs font-semibold rounded-xl border border-white/20 hover:border-transparent backdrop-blur-sm transition-all shadow-sm">
                        Ver Detalles
                    </button>
                </div>
            </div>
        </div>

        <!-- Tarjeta Novedad 4 -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-6 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-50 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1508296695146-257a814070b4?auto=format&fit=crop&q=80');"></div>
            <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/70 to-transparent"></div>

            <div class="relative z-10 flex justify-between items-start">
                <span class="px-2.5 py-1 bg-indigo-500/20 text-indigo-300 border border-indigo-400/35 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                    Exclusivo
                </span>
                <span class="text-xs font-extrabold text-white bg-slate-900/80 px-2.5 py-1 rounded-lg backdrop-blur-sm border border-slate-700">
                    $210.00
                </span>
            </div>

            <div class="relative z-10 space-y-2">
                <div>
                    <span class="text-[10px] font-bold text-sky-400 uppercase tracking-wider">Tom Ford</span>
                    <h4 class="text-lg font-bold text-white tracking-tight leading-snug">Private Collection</h4>
                </div>
                <p class="text-xs text-slate-300 font-normal line-clamp-2">
                    Lujo y sofisticación en acetato italiano prémium con detalles dorados sutiles.
                </p>
                <div class="pt-1">
                    <button class="w-full py-2 bg-white/10 hover:bg-sky-600 text-white text-xs font-semibold rounded-xl border border-white/20 hover:border-transparent backdrop-blur-sm transition-all shadow-sm">
                        Ver Detalles
                    </button>
                </div>
            </div>
        </div>

    </div>

</div>