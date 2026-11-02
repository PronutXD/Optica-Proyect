<%-- 
    Document   : contacto
    Created on : 26 oct 2026, 7:38:48 p.m.
    Author     : User
--%>

<%-- 
    Document   : contacto
    Description: Página completa de Contacto de la Óptica integrando Navbar y Footer mediante includes
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contacto - ÓpticaVision</title>
        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-slate-50 text-slate-900 font-sans antialiased min-h-screen flex flex-col justify-between">

        <!-- 1. Barra de Navegación -->
        <%
            String navbarDinamica = (String) request.getAttribute("navbarInyectada");
            if (navbarDinamica == null || navbarDinamica.trim().isEmpty()) {
                navbarDinamica = "views/components/navbars/navbar-publico.jsp"; // Fallback de seguridad
            }
            try {
                pageContext.include(navbarDinamica);
            } catch (Exception e) {
                out.println("<p style='color:red;'>Error al cargar la barra de navegación: " + e.getMessage() + "</p>");
            }
        %>

        <!-- 2. Contenido Principal -->
        <main class="flex-grow">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 space-y-8">
                
                <!-- Encabezado de la Página -->
                <div class="text-center max-w-3xl mx-auto space-y-2">
                    <span class="text-xs font-bold text-sky-600 uppercase tracking-wider">Atención Personalizada</span>
                    <h2 class="text-3xl font-extrabold text-slate-900 tracking-tight">Estamos para Ayudarte</h2>
                    <p class="text-sm text-slate-500 leading-relaxed">
                        ¿Tienes dudas sobre tu graduación, deseas agendar un examen visual o cotizar un combo? Escríbenos o visítanos directamente en nuestra sucursal.
                    </p>
                </div>

                <!-- Grid Principal: Formulario a la Izquierda, Información Inmersiva a la Derecha -->
                <div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start">
                    
                    <!-- Columna Izquierda: Formulario de Contacto (7 columnas) -->
                    <div class="lg:col-span-7 bg-white border border-slate-200/90 rounded-3xl p-6 sm:p-8 shadow-sm space-y-6">
                        <div>
                            <h3 class="text-xl font-bold text-slate-900 tracking-tight">Enviarnos un Mensaje</h3>
                            <p class="text-xs text-slate-500 mt-0.5">Completa el formulario y te responderemos a la brevedad posible.</p>
                        </div>

                        <form action="SvContacto" method="POST" class="space-y-4">
                            <!-- Nombre Completo y Correo en 2 columnas -->
                            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                                <div class="space-y-1">
                                    <label class="text-xs font-bold text-slate-700 uppercase tracking-wider">Nombre Completo</label>
                                    <input type="text" name="nombre" placeholder="Ej. Carlos Mendoza" required
                                           class="w-full px-4 py-2.5 rounded-xl bg-slate-50 border border-slate-200 text-xs text-slate-900 focus:bg-white focus:border-sky-500 focus:outline-none transition-all">
                                </div>

                                <div class="space-y-1">
                                    <label class="text-xs font-bold text-slate-700 uppercase tracking-wider">Correo Electrónico</label>
                                    <input type="email" name="email" placeholder="ejemplo@correo.com" required
                                           class="w-full px-4 py-2.5 rounded-xl bg-slate-50 border border-slate-200 text-xs text-slate-900 focus:bg-white focus:border-sky-500 focus:outline-none transition-all">
                                </div>
                            </div>

                            <!-- Teléfono y Motivo de Consulta -->
                            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                                <div class="space-y-1">
                                    <label class="text-xs font-bold text-slate-700 uppercase tracking-wider">Teléfono / WhatsApp</label>
                                    <input type="tel" name="telefono" placeholder="+504 9999-9999"
                                           class="w-full px-4 py-2.5 rounded-xl bg-slate-50 border border-slate-200 text-xs text-slate-900 focus:bg-white focus:border-sky-500 focus:outline-none transition-all">
                                </div>

                                <div class="space-y-1">
                                    <label class="text-xs font-bold text-slate-700 uppercase tracking-wider">Motivo de Consulta</label>
                                    <select name="motivo" class="w-full px-4 py-2.5 rounded-xl bg-slate-50 border border-slate-200 text-xs text-slate-700 focus:bg-white focus:border-sky-500 focus:outline-none transition-all">
                                        <option value="examen">Agendar Examen Visual</option>
                                        <option value="cotizacion">Cotización de Montura o Cristales</option>
                                        <option value="asesoria">Asesoría de Estilo / Tipo de Rostro</option>
                                        <option value="otro">Consulta General</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Mensaje -->
                            <div class="space-y-1">
                                <label class="text-xs font-bold text-slate-700 uppercase tracking-wider">Mensaje</label>
                                <textarea name="mensaje" rows="4" placeholder="Escribe aquí tu consulta o los detalles de la montura que buscas..." required
                                          class="w-full px-4 py-2.5 rounded-xl bg-slate-50 border border-slate-200 text-xs text-slate-900 focus:bg-white focus:border-sky-500 focus:outline-none transition-all resize-none"></textarea>
                            </div>

                            <!-- Botón de Envío -->
                            <button type="submit" class="w-full sm:w-auto px-8 py-3 bg-sky-600 hover:bg-sky-500 text-white text-xs font-bold rounded-xl shadow-md hover:shadow-lg transition-all flex items-center justify-center gap-2">
                                Enviar Mensaje
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2.5" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M14 5l7 7-7 7M3 12h18"></path></svg>
                            </button>
                        </form>
                    </div>

                    <!-- Columna Derecha: Tarjeta Inmersiva de Información (5 columnas) -->
                    <div class="lg:col-span-5 flex flex-col gap-6">
                        
                        <!-- Bloque de Contacto Oscuro Inmersivo -->
                        <div class="group relative overflow-hidden rounded-3xl bg-slate-950 text-white p-8 flex flex-col justify-between border border-slate-800 shadow-xl min-h-[380px]">
                            <!-- Imagen de Fondo con velo -->
                            <div class="absolute inset-0 bg-cover bg-center pointer-events-none opacity-40 group-hover:scale-105 transition-transform duration-500"
                                 style="background-image: url('https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&q=80');"></div>
                            <div class="absolute inset-0 bg-gradient-to-t from-slate-950 via-slate-950/80 to-transparent"></div>

                            <!-- Badge Superior -->
                            <div class="relative z-10">
                                <span class="px-3 py-1 bg-sky-500/20 text-sky-300 border border-sky-400/35 text-[10px] font-bold rounded-full uppercase tracking-wider backdrop-blur-md">
                                    Sucursal Central
                                </span>
                            </div>

                            <!-- Detalles de Contacto -->
                            <div class="relative z-10 space-y-6 my-6">
                                <div>
                                    <h4 class="text-2xl font-extrabold text-white tracking-tight">ÓpticaVision</h4>
                                    <p class="text-xs text-slate-300 mt-1">Tu salud visual en manos de profesionales capacitados.</p>
                                </div>

                                <div class="space-y-3.5 text-xs text-slate-200">
                                    <div class="flex items-start gap-3">
                                        <div class="w-8 h-8 rounded-lg bg-sky-500/20 border border-sky-400/30 flex items-center justify-center flex-shrink-0 text-sky-300 mt-0.5">
                                            📍
                                        </div>
                                        <div>
                                            <span class="font-bold text-white block">Ubicación</span>
                                            <span class="text-slate-300">Barrio El Centro, Frente al Parque Central, Juticalpa.</span>
                                        </div>
                                    </div>

                                    <div class="flex items-start gap-3">
                                        <div class="w-8 h-8 rounded-lg bg-sky-500/20 border border-sky-400/30 flex items-center justify-center flex-shrink-0 text-sky-300 mt-0.5">
                                            🕒
                                        </div>
                                        <div>
                                            <span class="font-bold text-white block">Horarios de Atención</span>
                                            <span class="text-slate-300">Lunes a Sábado: 8:00 AM - 5:30 PM</span>
                                        </div>
                                    </div>

                                    <div class="flex items-start gap-3">
                                        <div class="w-8 h-8 rounded-lg bg-sky-500/20 border border-sky-400/30 flex items-center justify-center flex-shrink-0 text-sky-300 mt-0.5">
                                            💬
                                        </div>
                                        <div>
                                            <span class="font-bold text-white block">Contacto Directo</span>
                                            <span class="text-slate-300">Tel: +(504) 2785-0000 | WhatsApp: +(504) 9999-0000</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Botón WhatsApp Directo -->
                            <div class="relative z-10 pt-2 border-t border-slate-800">
                                <a href="https://wa.me/50499990000" target="_blank"
                                   class="w-full py-2.5 bg-emerald-600 hover:bg-emerald-500 text-white text-xs font-bold rounded-xl shadow-md transition-all flex items-center justify-center gap-2">
                                    Escribir por WhatsApp Directo
                                </a>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </main>

        <!-- 3. Pie de Página -->
        <footer class="mt-12">
            <jsp:include page="/views/components/footer.jsp" />
        </footer>

    </body>
</html>