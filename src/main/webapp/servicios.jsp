<%-- 
    Document   : servicios
    Created on : 26 oct 2026, 7:31:35 p.m.
    Author     : User
--%>

<%-- 
    Document   : servicios
    Description: Página completa de Servicios de la Óptica integrando Navbar, Contenido Principal y Footer mediante includes
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Servicios - ÓpticaVision</title>
        <!-- Tailwind CSS (Asegúrate de incluir tu enlace o script de Tailwind configurado en el proyecto) -->
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-slate-50 text-slate-900 font-sans antialiased min-h-screen flex flex-col justify-between">

        <!-- 1. Barra de Navegación (Modularizada mediante include) -->
        <header>
            <jsp:include page="/views/components/navbars/navbar-publico.jsp"/>
        </header>

        <!-- 2. Contenido Principal de la Página de Servicios -->
        <main class="flex-grow">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 space-y-8">
                
                <!-- Encabezado Principal de la Página de Servicios -->
                <div class="text-center max-w-3xl mx-auto space-y-2">
                    <span class="text-xs font-bold text-sky-600 uppercase tracking-wider">Cuidado Profesional</span>
                    <h2 class="text-3xl font-extrabold text-slate-900 tracking-tight">Nuestros Servicios Ópticos</h2>
                    <p class="text-sm text-slate-500 leading-relaxed">
                        Combinamos tecnología de vanguardia y atención experta para garantizar que tu salud visual y tu estilo vayan siempre de la mano.
                    </p>
                </div>

                <!-- Sección Destacada Principal: Examen Visual (Bento Grid / Banner Grande) -->
                <div class="group relative overflow-hidden rounded-3xl bg-slate-950 text-white p-8 sm:p-12 flex flex-col justify-between border border-slate-800 shadow-xl">
                    <!-- Imagen de Fondo Inmersiva -->
                    <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-700"
                         style="background-image: url('https://images.unsplash.com/photo-1579684385127-1ef15d508118?auto=format&fit=crop&q=80');"></div>
                    <!-- Velo degradado oscuro -->
                    <div class="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/80 to-transparent"></div>

                    <!-- Badge Superior -->
                    <div class="relative z-10 flex items-center justify-between">
                        <span class="px-3.5 py-1 bg-sky-500/20 text-sky-300 border border-sky-400/35 text-xs font-bold rounded-full uppercase tracking-wider backdrop-blur-md">
                            Tecnología Computarizada
                        </span>
                        <span class="text-xs text-slate-300 font-semibold bg-slate-900/80 px-3 py-1.5 rounded-xl border border-slate-700">
                            ⭐ Incluido en compras de packs
                        </span>
                    </div>

                    <!-- Contenido Central -->
                    <div class="relative z-10 space-y-4 max-w-xl my-10">
                        <h3 class="text-3xl sm:text-4xl font-extrabold text-white tracking-tight leading-tight">
                            Examen Visual Especializado
                        </h3>
                        <p class="text-sm text-slate-300 leading-relaxed font-normal">
                            Evaluamos tu agudeza visual con equipos optométricos digitales de alta precisión para detectar cualquier alteración refractiva (miopía, astigmatismo, presbicia) y emitir tu receta exacta de forma inmediata.
                        </p>
                        <div class="pt-3">
                            <a href="#agendar" class="inline-flex items-center gap-2 px-6 py-3 bg-sky-600 hover:bg-sky-500 text-white text-xs font-bold rounded-xl shadow-lg transition-all">
                                Agendar Examen Visual
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2.5" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M14 5l7 7-7 7M3 12h18"></path></svg>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Cuadrícula de Servicios Secundarios (3 Tarjetas Inmersivas) -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                    
                    <!-- Tarjeta Servicio 1: Graduación y Lunas -->
                    <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-6 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
                        <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                             style="background-image: url('https://images.unsplash.com/photo-1591076482161-42ce6da69f67?auto=format&fit=crop&q=80');"></div>
                        <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/75 to-transparent"></div>

                        <div class="relative z-10 flex justify-between items-start">
                            <span class="px-2.5 py-1 bg-emerald-500/20 text-emerald-300 border border-emerald-500/35 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                                Alta Precisión
                            </span>
                        </div>

                        <div class="relative z-10 space-y-2">
                            <h4 class="text-xl font-bold text-white tracking-tight">Montaje & Lunas Oftálmicas</h4>
                            <p class="text-xs text-slate-300 leading-relaxed font-normal">
                                Tallado digital de cristales con tratamientos antirreflejo, filtros de luz azul (Blue Block) y protección UV adaptados a tu montura favorita.
                            </p>
                            <div class="pt-2">
                                <span class="text-xs font-bold text-sky-400 group-hover:underline flex items-center gap-1 cursor-pointer">
                                    Conocer tipos de cristales &rarr;
                                </span>
                            </div>
                        </div>
                    </div>

                    <!-- Tarjeta Servicio 2: Asesoría de Estilo -->
                    <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-6 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
                        <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                             style="background-image: url('https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=80');"></div>
                        <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/75 to-transparent"></div>

                        <div class="relative z-10 flex justify-between items-start">
                            <span class="px-2.5 py-1 bg-amber-500/20 text-amber-300 border border-amber-500/35 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                                Personalizado
                            </span>
                        </div>

                        <div class="relative z-10 space-y-2">
                            <h4 class="text-xl font-bold text-white tracking-tight">Asesoría de Imagen y Calce</h4>
                            <p class="text-xs text-slate-300 leading-relaxed font-normal">
                                Te ayudamos a elegir el aro perfecto según tu tipo de rostro, tono de piel y estilo de vida profesional o diario para potenciar tu confianza.
                            </p>
                            <div class="pt-2">
                                <span class="text-xs font-bold text-sky-400 group-hover:underline flex items-center gap-1 cursor-pointer">
                                    Ver guía de rostros &rarr;
                                </span>
                            </div>
                        </div>
                    </div>

                    <!-- Tarjeta Servicio 3: Mantenimiento y Ajuste -->
                    <div class="group relative overflow-hidden rounded-2xl bg-slate-950 text-white min-h-[320px] p-6 flex flex-col justify-between border border-slate-800 shadow-lg hover:shadow-xl transition-all duration-300">
                        <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-45 group-hover:scale-105 transition-transform duration-500"
                             style="background-image: url('https://images.unsplash.com/photo-1508296695146-257a814070b4?auto=format&fit=crop&q=80');"></div>
                        <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/75 to-transparent"></div>

                        <div class="relative z-10 flex justify-between items-start">
                            <span class="px-2.5 py-1 bg-indigo-500/20 text-indigo-300 border border-indigo-500/35 text-[10px] font-bold rounded-md uppercase tracking-wider backdrop-blur-md">
                                Soporte Postventa
                            </span>
                        </div>

                        <div class="relative z-10 space-y-2">
                            <h4 class="text-xl font-bold text-white tracking-tight">Mantenimiento & Ajuste Gratuito</h4>
                            <p class="text-xs text-slate-300 leading-relaxed font-normal">
                                Limpieza profunda por ultrasonido, cambio de plaquetas nasales, calibración de bisagras y ajuste ergonómico sin costo para clientes de la óptica.
                            </p>
                            <div class="pt-2">
                                <span class="text-xs font-bold text-sky-400 group-hover:underline flex items-center gap-1 cursor-pointer">
                                    Saber más &rarr;
                                </span>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </main>

        <!-- 3. Pie de Página (Footer modularizado, ajústalo según la ruta de tu footer) -->
        <footer class="mt-12">
            <jsp:include page="/views/components/footer.jsp" />
        </footer>

    </body>
</html>