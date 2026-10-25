<%-- 
    Document   : destacado
    Description: Sección de productos destacados con botones de carrusel flotantes y translúcidos abajo a la derecha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6 space-y-8">
    
    <!-- Encabezado de la Sección -->
    <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-2">
        <div>
            <span class="text-xs font-bold text-sky-600 uppercase tracking-wider">Tendencias</span>
            <h2 class="text-2xl font-extrabold text-slate-900 tracking-tight mt-1">Modelos Destacados</h2>
            <p class="text-xs text-slate-500 mt-0.5">Los aros más populares y preferidos por nuestros clientes esta temporada.</p>
        </div>
        
        <!-- Controles de navegación originales eliminados de aquí -->
    </div>

    <!-- Banner Principal del Producto Estrella -->
    <div class="relative overflow-hidden rounded-2xl shadow-xl border border-slate-800 bg-slate-900 min-h-[380px] flex items-center">
        
        <!-- Imagen de Fondo (La fotografía de los aros cubriendo todo el banner) -->
        <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-50"
             style="background-image: url('https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&q=80');"></div>

        <!-- Velo / Overlay con degradado acotado: Oscuro sólido a la izquierda que termina antes de llegar al lente -->
        <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/85 to-transparent max-w-2xl"></div>

        <!-- Contenido Informativo sobre la Izquierda -->
        <div class="relative z-10 p-6 sm:p-10 max-w-xl space-y-4">
            <span class="inline-block px-3 py-1 bg-sky-500/20 text-sky-400 border border-sky-500/30 text-xs font-semibold rounded-full uppercase tracking-wider backdrop-blur-sm">
                Más Vendido del Mes
            </span>
            
            <h3 class="text-3xl sm:text-4xl font-extrabold text-white tracking-tight">
                Ray-Ban Aviator Classic
            </h3>
            
            <p class="text-sm text-slate-200 leading-relaxed font-normal">
                Diseño icónico con montura metálica de alta durabilidad y cristales con protección UV avanzada. Ideal para un look sofisticado y versátil.
            </p>
            
            <div class="flex items-center space-x-4 pt-1">
                <span class="text-3xl font-extrabold text-white">$185.00</span>
                <span class="text-xs text-emerald-300 font-semibold bg-emerald-950/80 border border-emerald-500/40 px-3 py-1 rounded-lg">
                    Envío Gratis
                </span>
            </div>
            
            <div class="flex items-center space-x-3 pt-2">
                <button class="px-6 py-2.5 bg-sky-600 hover:bg-sky-500 text-white text-sm font-semibold rounded-xl shadow-md transition-all">
                    Ver Detalles
                </button>
                <button class="px-6 py-2.5 bg-slate-800/80 hover:bg-slate-700/80 border border-slate-600 text-slate-200 text-sm font-semibold rounded-xl transition-all shadow-sm backdrop-blur-sm">
                    Apartar Aro
                </button>
            </div>
        </div>

        <!-- Botones de navegación del carrusel flotantes (Abajo a la derecha sobre la tarjeta) -->
        <div class="absolute bottom-4 right-4 z-20 flex space-x-2">
            <button class="p-2.5 rounded-xl bg-slate-950/60 backdrop-blur-md border border-transparent hover:border-slate-500 text-white hover:bg-slate-900 shadow-lg transition-all">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7"></path></svg>
            </button>
            <button class="p-2.5 rounded-xl bg-slate-950/60 backdrop-blur-md border border-transparent hover:border-slate-500 text-white hover:bg-slate-900 shadow-lg transition-all">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7"></path></svg>
            </button>
        </div>

    </div>

    <!-- Cuadrícula Inferior de Productos Destacados (Fondo Blanco Sólido) -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 pt-2">
        
        <!-- Tarjeta 1 -->
        <div class="bg-white border border-slate-200/80 rounded-2xl shadow-sm p-4 space-y-3 hover:shadow-md transition-all flex flex-col justify-between">
            <div class="space-y-3">
                <div class="w-full h-40 bg-slate-50 rounded-xl border border-slate-100 flex items-center justify-center text-slate-400 text-xs font-medium">
                    [Imagen Producto]
                </div>
                <div>
                    <span class="text-[10px] font-bold text-sky-600 uppercase tracking-wider">Oakley</span>
                    <h4 class="text-sm font-bold text-slate-900 mt-0.5">Holbrook Metal</h4>
                </div>
            </div>
            <div class="flex items-center justify-between pt-2 border-t border-slate-100">
                <span class="text-sm font-extrabold text-slate-900">$145.00</span>
                <button class="px-3 py-1.5 bg-sky-50 text-sky-600 hover:bg-sky-600 hover:text-white text-xs font-semibold rounded-lg transition-all">
                    Ver más
                </button>
            </div>
        </div>

        <!-- Tarjeta 2 -->
        <div class="bg-white border border-slate-200/80 rounded-2xl shadow-sm p-4 space-y-3 hover:shadow-md transition-all flex flex-col justify-between">
            <div class="space-y-3">
                <div class="w-full h-40 bg-slate-50 rounded-xl border border-slate-100 flex items-center justify-center text-slate-400 text-xs font-medium">
                    [Imagen Producto]
                </div>
                <div>
                    <span class="text-[10px] font-bold text-sky-600 uppercase tracking-wider">Gucci</span>
                    <h4 class="text-sm font-bold text-slate-900 mt-0.5">Cat-Eye Luxury</h4>
                </div>
            </div>
            <div class="flex items-center justify-between pt-2 border-t border-slate-100">
                <span class="text-sm font-extrabold text-slate-900">$220.00</span>
                <button class="px-3 py-1.5 bg-sky-50 text-sky-600 hover:bg-sky-600 hover:text-white text-xs font-semibold rounded-lg transition-all">
                    Ver más
                </button>
            </div>
        </div>

        <!-- Tarjeta 3 -->
        <div class="bg-white border border-slate-200/80 rounded-2xl shadow-sm p-4 space-y-3 hover:shadow-md transition-all flex flex-col justify-between">
            <div class="space-y-3">
                <div class="w-full h-40 bg-slate-50 rounded-xl border border-slate-100 flex items-center justify-center text-slate-400 text-xs font-medium">
                    [Imagen Producto]
                </div>
                <div>
                    <span class="text-[10px] font-bold text-sky-600 uppercase tracking-wider">Tom Ford</span>
                    <h4 class="text-sm font-bold text-slate-900 mt-0.5">FT5556 Round</h4>
                </div>
            </div>
            <div class="flex items-center justify-between pt-2 border-t border-slate-100">
                <span class="text-sm font-extrabold text-slate-900">$195.00</span>
                <button class="px-3 py-1.5 bg-sky-50 text-sky-600 hover:bg-sky-600 hover:text-white text-xs font-semibold rounded-lg transition-all">
                    Ver más
                </button>
            </div>
        </div>

        <!-- Tarjeta 4 -->
        <div class="bg-white border border-slate-200/80 rounded-2xl shadow-sm p-4 space-y-3 hover:shadow-md transition-all flex flex-col justify-between">
            <div class="space-y-3">
                <div class="w-full h-40 bg-slate-50 rounded-xl border border-slate-100 flex items-center justify-center text-slate-400 text-xs font-medium">
                    [Imagen Producto]
                </div>
                <div>
                    <span class="text-[10px] font-bold text-sky-600 uppercase tracking-wider">Carrera</span>
                    <h4 class="text-sm font-bold text-slate-900 mt-0.5">Champion Aviator</h4>
                </div>
            </div>
            <div class="flex items-center justify-between pt-2 border-t border-slate-100">
                <span class="text-sm font-extrabold text-slate-900">$130.00</span>
                <button class="px-3 py-1.5 bg-sky-50 text-sky-600 hover:bg-sky-600 hover:text-white text-xs font-semibold rounded-lg transition-all">
                    Ver más
                </button>
            </div>
        </div>

    </div>

</div>