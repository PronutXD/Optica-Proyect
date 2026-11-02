<%-- 
    Document   : promociones
    Created on : 25 oct 2026, 10:16:58 a.m.
    Author     : User
--%>

<%-- 
    Document   : promociones
    Description: Sección de Promociones y Combos Oftálmicos con la misma estética inmersiva oscura
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 space-y-6">
    
    <!-- Encabezado de la Sección -->
    <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2 border-b border-slate-100 pb-4">
        <div>
            <span class="text-xs font-bold text-sky-600 uppercase tracking-wider">Ofertas Especiales</span>
            <h3 class="text-2xl font-extrabold text-slate-900 tracking-tight mt-0.5">Combos & Paquetes Oftálmicos</h3>
            <p class="text-xs text-slate-500 mt-0.5">Aprovecha nuestros paquetes todo en uno diseñados para cuidar tu salud visual al mejor precio.</p>
        </div>
    </div>

    <!-- Cuadrícula de Promociones (2 Banners de Alto Impacto Comercial) -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
        
        <!-- Banner Promo 1: Pack Oftálmico Integral -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-8 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
            <!-- Fotografía de Fondo Inmersiva -->
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1591076482161-42ce6da69f67?auto=format&fit=crop&q=80');"></div>
            <!-- Velo de degradado oscuro -->
            <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/85 to-transparent"></div>

            <!-- Badge Superior -->
            <div class="relative z-10 flex justify-between items-start">
                <span class="px-3 py-1 bg-emerald-500/20 text-emerald-300 border border-emerald-500/35 text-[10px] font-bold rounded-full uppercase tracking-wider backdrop-blur-md">
                    Ahorro del 30%
                </span>
                <span class="text-xs font-extrabold text-white bg-slate-900/80 px-3 py-1.5 rounded-xl backdrop-blur-sm border border-slate-700">
                    $120.00 <span class="text-xs text-slate-400 line-through font-normal">$175.00</span>
                </span>
            </div>

            <!-- Información Central / Inferior -->
            <div class="relative z-10 space-y-3 max-w-md">
                <div>
                    <span class="text-[10px] font-bold text-sky-400 uppercase tracking-wider">Pack Todo Incluido</span>
                    <h4 class="text-2xl font-extrabold text-white tracking-tight mt-0.5">Montura + Cristales Antirreflejo</h4>
                </div>
                <p class="text-xs text-slate-300 leading-relaxed font-normal">
                    Incluye montura de línea clásica, cristales graduados orgánicos con tratamiento antirreflejo y examen visual computarizado de cortesía.
                </p>
                <div class="pt-2">
                    <button class="px-6 py-2.5 bg-sky-600 hover:bg-sky-500 text-white text-xs font-semibold rounded-xl shadow-md transition-all">
                        Aprovechar Combo
                    </button>
                </div>
            </div>
        </div>

        <!-- Banner Promo 2: Pack Dupla / Sol y Receta -->
        <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-8 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
            <!-- Fotografía de Fondo Inmersiva -->
            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                 style="background-image: url('https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&q=80');"></div>
            <!-- Velo de degradado oscuro -->
            <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/85 to-transparent"></div>

            <!-- Badge Superior -->
            <div class="relative z-10 flex justify-between items-start">
                <span class="px-3 py-1 bg-amber-500/20 text-amber-300 border border-amber-500/35 text-[10px] font-bold rounded-full uppercase tracking-wider backdrop-blur-md">
                    Edición Especial Duo
                </span>
                <span class="text-xs font-extrabold text-white bg-slate-900/80 px-3 py-1.5 rounded-xl backdrop-blur-sm border border-slate-700">
                    $210.00 <span class="text-xs text-slate-400 line-through font-normal">$280.00</span>
                </span>
            </div>

            <!-- Información Central / Inferior -->
            <div class="relative z-10 space-y-3 max-w-md">
                <div>
                    <span class="text-[10px] font-bold text-sky-400 uppercase tracking-wider">Duo Vision</span>
                    <h4 class="text-2xl font-extrabold text-white tracking-tight mt-0.5">Aro Oftálmico + Gafas de Sol UV</h4>
                </div>
                <p class="text-xs text-slate-300 leading-relaxed font-normal">
                    Lleva tu montura de uso diario formulada y complementa tu estilo con unas gafas de sol polarizadas de nuestra selección de marcas.
                </p>
                <div class="pt-2">
                    <button class="px-6 py-2.5 bg-sky-600 hover:bg-sky-500 text-white text-xs font-semibold rounded-xl shadow-md transition-all">
                        Cotizar Paquete Duo
                    </button>
                </div>
            </div>
        </div>

    </div>

</div>