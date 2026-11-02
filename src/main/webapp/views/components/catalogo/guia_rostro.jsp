<%-- 
    Document   : guia_rostro
    Created on : 25 oct 2026, 9:58:41 a.m.
    Author     : User
--%>

<%-- 
    Document   : guia_rostro
    Description: Asesor de tipo de rostro dinámico con pestañas horizontales e interacción visual
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 space-y-6">
    
    <!-- Encabezado de la Sección -->
    <div class="border-b border-slate-200/80 pb-4">
        <span class="text-xs font-bold text-sky-600 uppercase tracking-wider">Asesoría Personalizada</span>
        <h3 class="text-2xl font-extrabold text-slate-900 tracking-tight mt-0.5">Encuentra el Aro Ideal según tu Rostro</h3>
        <p class="text-xs text-slate-500 mt-0.5">Selecciona la forma de tu rostro para descubrir qué geometría de montura resalta mejor tus facciones.</p>
    </div>

    <!-- Contenedor Principal del Asesor -->
    <div class="bg-white border border-slate-200/90 rounded-2xl shadow-sm p-6 space-y-6">
        
        <!-- Pestañas de Selección de Rostro (Tabs Horizontales) -->
        <div class="flex flex-wrap gap-2 border-b border-slate-100 pb-4">
            <button class="px-4 py-2 rounded-xl text-xs font-bold bg-sky-600 text-white shadow-sm transition-all flex items-center gap-2">
                <span>Rostro Redondo</span>
            </button>
            <button class="px-4 py-2 rounded-xl text-xs font-semibold text-slate-600 bg-slate-100 hover:bg-slate-200/70 transition-all flex items-center gap-2">
                <span>Rostro Ovalado</span>
            </button>
            <button class="px-4 py-2 rounded-xl text-xs font-semibold text-slate-600 bg-slate-100 hover:bg-slate-200/70 transition-all flex items-center gap-2">
                <span>Rostro Cuadrado</span>
            </button>
            <button class="px-4 py-2 rounded-xl text-xs font-semibold text-slate-600 bg-slate-100 hover:bg-slate-200/70 transition-all flex items-center gap-2">
                <span>Corazón / Diamante</span>
            </button>
        </div>

        <!-- Contenido Activo del Tipo de Rostro -->
        <div class="grid grid-cols-1 lg:grid-cols-12 gap-6 items-center">
            
            <!-- Bloque Descriptivo Recomendador (5 columnas) -->
            <div class="lg:col-span-5 bg-slate-950 text-white rounded-2xl p-6 relative overflow-hidden min-h-[260px] flex flex-col justify-between border border-slate-800 shadow-md">
                <div class="absolute inset-0 bg-cover bg-center opacity-30 pointer-events-none"
                     style="background-image: url('https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=80');"></div>
                <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/80 to-transparent"></div>

                <div class="relative z-10 space-y-3">
                    <span class="inline-block px-3 py-1 bg-sky-500/20 text-sky-400 border border-sky-500/30 text-[10px] font-bold rounded-full uppercase tracking-wider">
                        Recomendación Experta
                    </span>
                    <h4 class="text-2xl font-extrabold text-white">Monturas Rectangulares & Cuadradas</h4>
                    <p class="text-xs text-slate-300 leading-relaxed">
                        Los rostros redondos destacan cuando se combinan con líneas rectas y ángulos marcados. Estilos como los aros rectangulares o <i>Wayfarer</i> añaden estructura y alargan visualmente las facciones suaves.
                    </p>
                </div>

                <div class="relative z-10 pt-4 border-t border-slate-800/80 flex items-center justify-between text-xs text-slate-400">
                    <span>Estilos ideales: <b>Rectangular, Cuadrado, Wayfarer</b></span>
                </div>
            </div>

            <!-- Vista Previa de Productos Compatibles (7 columnas) -->
            <div class="lg:col-span-7 space-y-3">
                <div class="flex items-center justify-between">
                    <span class="text-xs font-bold text-slate-700">Modelos recomendados para ti</span>
                    <a href="#catalogo" class="text-xs font-semibold text-sky-600 hover:underline">Ver más opciones &rarr;</a>
                </div>

                <!-- Lista Horizontal de Modelos Sugeridos -->
                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    
                    <!-- Item Sugerido 1 -->
                    <div class="bg-slate-50 border border-slate-200/80 rounded-xl p-3.5 flex items-center gap-3.5 hover:border-sky-300 hover:shadow-sm transition-all group cursor-pointer">
                        <div class="w-20 h-20 bg-white rounded-lg border border-slate-200/60 overflow-hidden flex-shrink-0 relative">
                            <img src="https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&q=80" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" alt="Aro">
                        </div>
                        <div class="flex-1 min-w-0">
                            <span class="text-[10px] font-bold text-sky-600 uppercase tracking-wider">Oakley</span>
                            <h5 class="text-xs font-bold text-slate-900 truncate mt-0.5">Holbrook Matte Black</h5>
                            <p class="text-[11px] text-slate-500 mt-0.5">$145.00</p>
                            <span class="inline-block mt-1 text-[10px] font-semibold text-emerald-600 bg-emerald-50 px-2 py-0.5 rounded">
                                Calce Perfecto
                            </span>
                        </div>
                    </div>

                    <!-- Item Sugerido 2 -->
                    <div class="bg-slate-50 border border-slate-200/80 rounded-xl p-3.5 flex items-center gap-3.5 hover:border-sky-300 hover:shadow-sm transition-all group cursor-pointer">
                        <div class="w-20 h-20 bg-white rounded-lg border border-slate-200/60 overflow-hidden flex-shrink-0 relative">
                            <img src="https://images.unsplash.com/photo-1574258495973-f010dfbb5371?auto=format&fit=crop&q=80" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" alt="Aro">
                        </div>
                        <div class="flex-1 min-w-0">
                            <span class="text-[10px] font-bold text-sky-600 uppercase tracking-wider">Ray-Ban</span>
                            <h5 class="text-xs font-bold text-slate-900 truncate mt-0.5">Wayfarer Classic</h5>
                            <p class="text-[11px] text-slate-500 mt-0.5">$160.00</p>
                            <span class="inline-block mt-1 text-[10px] font-semibold text-emerald-600 bg-emerald-50 px-2 py-0.5 rounded">
                                Calce Perfecto
                            </span>
                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>

</div>
