<%-- 
    Document   : index
    Created on : 17 oct 2026, 6:44:26 p.m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="scroll-smooth">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Óptica - Claridad y Estilo para tu Visión</title>

        <!-- Tailwind CSS via CDN -->
        <script src="https://cdn.tailwindcss.com"></script>
        
        <!-- Google Fonts: Inter -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

        <style>
            body {
                font-family: 'Inter', sans-serif;
            }
        </style>
    </head>
    <body class="bg-slate-100/70 text-slate-700 antialiased min-h-screen flex flex-col justify-between">

        <!-- NAV BAR PÚBLICA -->
        <header class="sticky top-0 z-50 bg-slate-50/90 backdrop-blur-md border-b border-slate-200/80 shadow-sm">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between items-center h-16">
                    
                    <!-- Logo / Marca -->
                    <div class="flex items-center gap-3">
                        <div class="w-10 h-10 rounded-xl bg-sky-600 flex items-center justify-center text-white shadow-md shadow-sky-600/20">
                            <!-- Icono Gafas / Óptica -->
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                            </svg>
                        </div>
                        <span class="text-xl font-bold text-slate-800 tracking-tight">Óptica<span class="text-sky-600">Vision</span></span>
                    </div>

                    <!-- Enlaces de Navegación -->
                    <nav class="hidden md:flex items-center space-x-8 text-sm font-medium">
                        <a href="#inicio" class="text-slate-600 hover:text-sky-600 transition-colors">Inicio</a>
                        <a href="#servicios" class="text-slate-600 hover:text-sky-600 transition-colors">Servicios</a>
                        <a href="#catalogo" class="text-slate-600 hover:text-sky-600 transition-colors">Catálogo</a>
                        <a href="#contacto" class="text-slate-600 hover:text-sky-600 transition-colors">Contacto</a>
                    </nav>

                    <!-- Acceso / Login -->
                    <div class="flex items-center gap-3">
                        <a href="login.jsp" class="text-sm font-medium text-slate-700 hover:text-sky-600 px-3 py-2 transition-colors">
                            Iniciar Sesión
                        </a>
                        <a href="registro.jsp" class="text-sm font-medium bg-sky-600 hover:bg-sky-700 text-white px-4 py-2 rounded-lg shadow-sm hover:shadow transition-all">
                            Registrarse
                        </a>
                    </div>
                </div>
            </div>
        </header>

        <!-- SECCIÓN HERO -->
        <section id="inicio" class="py-16 md:py-24 bg-gradient-to-b from-slate-50 to-slate-100/70">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
                    
                    <!-- Texto de bienvenida -->
                    <div class="space-y-6">
                        <span class="inline-block px-3 py-1 bg-sky-100 text-sky-800 text-xs font-semibold rounded-full uppercase tracking-wider">
                            Salud Visual & Calidad
                        </span>
                        <h1 class="text-4xl md:text-5xl font-extrabold text-slate-900 tracking-tight leading-tight">
                            Claridad y estilo para cada mirada
                        </h1>
                        <p class="text-slate-600 text-lg leading-relaxed">
                            Exámenes oftálmicos especializados, amplio catálogo de aros de marca y lunas adaptadas a tu receta con tecnología de alta precisión.
                        </p>
                        <div class="flex flex-col sm:flex-row gap-4 pt-2">
                            <a href="#catalogo" class="inline-flex justify-center items-center px-6 py-3 border border-transparent text-base font-medium rounded-lg text-white bg-sky-600 hover:bg-sky-700 shadow-sm transition-all">
                                Explorar Catálogo
                            </a>
                            <a href="login.jsp" class="inline-flex justify-center items-center px-6 py-3 border border-slate-300 text-base font-medium rounded-lg text-slate-700 bg-white hover:bg-slate-50 shadow-sm transition-all">
                                Agendar Consulta
                            </a>
                        </div>
                    </div>

                    <!-- Banner Informativo / Card Ilustrativa -->
                    <div class="bg-white p-8 rounded-2xl border border-slate-200/80 shadow-md space-y-6">
                        <div class="flex items-center gap-4">
                            <div class="p-3 bg-sky-50 rounded-xl text-sky-600">
                                <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                            </div>
                            <div>
                                <h3 class="text-lg font-semibold text-slate-800">Atención Personalizada</h3>
                                <p class="text-sm text-slate-500">Gestión de consultas y seguimiento de recetas</p>
                            </div>
                        </div>

                        <hr class="border-slate-100">

                        <div class="grid grid-cols-2 gap-4 text-center">
                            <div class="bg-slate-50 p-4 rounded-xl border border-slate-100">
                                <p class="text-2xl font-bold text-sky-600">+500</p>
                                <p class="text-xs text-slate-500 font-medium">Modelos de Aros</p>
                            </div>
                            <div class="bg-slate-50 p-4 rounded-xl border border-slate-100">
                                <p class="text-2xl font-bold text-sky-600">100%</p>
                                <p class="text-xs text-slate-500 font-medium">Garantía en Lentes</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- SECCIÓN SERVICIOS -->
        <section id="servicios" class="py-16 bg-white border-y border-slate-200/60">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center max-w-2xl mx-auto mb-12">
                    <h2 class="text-3xl font-bold text-slate-900">Nuestros Servicios</h2>
                    <p class="text-slate-500 mt-2">Soluciones integrales para la cuidado de tu visión</p>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <!-- Tarjeta 1 -->
                    <div class="bg-slate-50 p-6 rounded-xl border border-slate-200/80 hover:border-sky-300 transition-all">
                        <div class="w-12 h-12 bg-sky-100 text-sky-600 rounded-lg flex items-center justify-center mb-4">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                            </svg>
                        </div>
                        <h3 class="text-lg font-semibold text-slate-800 mb-2">Examen y Medición</h3>
                        <p class="text-slate-600 text-sm">Evaluación completa de agudeza visual, medición de esfera, cilindro, eje y adición.</p>
                    </div>

                    <!-- Tarjeta 2 -->
                    <div class="bg-slate-50 p-6 rounded-xl border border-slate-200/80 hover:border-sky-300 transition-all">
                        <div class="w-12 h-12 bg-sky-100 text-sky-600 rounded-lg flex items-center justify-center mb-4">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
                            </svg>
                        </div>
                        <h3 class="text-lg font-semibold text-slate-800 mb-2">Catálogo de Aros</h3>
                        <p class="text-slate-600 text-sm">Diversidad de marcas, formas y materiales (acetato, titanio, metal) para todos los gustos.</p>
                    </div>

                    <!-- Tarjeta 3 -->
                    <div class="bg-slate-50 p-6 rounded-xl border border-slate-200/80 hover:border-sky-300 transition-all">
                        <div class="w-12 h-12 bg-sky-100 text-sky-600 rounded-lg flex items-center justify-center mb-4">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z" />
                            </svg>
                        </div>
                        <h3 class="text-lg font-semibold text-slate-800 mb-2">Fabricación de Lunas</h3>
                        <p class="text-slate-600 text-sm">Cristales con tratamientos antirreflejo, filtro de luz azul y protección UV.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- VISTA PREVIA CATÁLOGO -->
        <section id="catalogo" class="py-16 bg-slate-100/70">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex flex-col md:flex-row justify-between items-start md:items-end mb-10">
                    <div>
                        <h2 class="text-3xl font-bold text-slate-900">Modelos Destacados</h2>
                        <p class="text-slate-500 mt-1">Explora una muestra de nuestra colección</p>
                    </div>
                    <a href="login.jsp" class="mt-4 md:mt-0 text-sm font-semibold text-sky-600 hover:text-sky-700">
                        Ver catálogo completo &rarr;
                    </a>
                </div>

                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                    <!-- Producto 1 -->
                    <div class="bg-white rounded-xl border border-slate-200/80 p-4 shadow-sm hover:shadow-md transition-all">
                        <div class="h-40 bg-slate-50 rounded-lg flex items-center justify-center text-slate-400 mb-4 border border-slate-100">
                            <!-- Placeholder Ilustración Aro -->
                            <span class="text-xs font-medium text-slate-400">Imagen Aro Metal</span>
                        </div>
                        <span class="text-xs font-semibold uppercase tracking-wider text-sky-600">Ray-Ban</span>
                        <h4 class="text-base font-semibold text-slate-800 mt-1">Aviador Clásico</h4>
                        <p class="text-xs text-slate-500 mt-1">Material: Metal | Forma: Ovalada</p>
                        <div class="flex justify-between items-center mt-4">
                            <span class="text-lg font-bold text-slate-900">L. 2,400</span>
                            <a href="login.jsp" class="text-xs bg-slate-100 hover:bg-slate-200 text-slate-700 px-3 py-1.5 rounded-md font-medium transition-colors">
                                Apartar
                            </a>
                        </div>
                    </div>

                    <!-- Producto 2 -->
                    <div class="bg-white rounded-xl border border-slate-200/80 p-4 shadow-sm hover:shadow-md transition-all">
                        <div class="h-40 bg-slate-50 rounded-lg flex items-center justify-center text-slate-400 mb-4 border border-slate-100">
                            <span class="text-xs font-medium text-slate-400">Imagen Aro Acetato</span>
                        </div>
                        <span class="text-xs font-semibold uppercase tracking-wider text-sky-600">Oakley</span>
                        <h4 class="text-base font-semibold text-slate-800 mt-1">Pitchman R</h4>
                        <p class="text-xs text-slate-500 mt-1">Material: Acetato | Forma: Redonda</p>
                        <div class="flex justify-between items-center mt-4">
                            <span class="text-lg font-bold text-slate-900">L. 3,100</span>
                            <a href="login.jsp" class="text-xs bg-slate-100 hover:bg-slate-200 text-slate-700 px-3 py-1.5 rounded-md font-medium transition-colors">
                                Apartar
                            </a>
                        </div>
                    </div>

                    <!-- Producto 3 -->
                    <div class="bg-white rounded-xl border border-slate-200/80 p-4 shadow-sm hover:shadow-md transition-all">
                        <div class="h-40 bg-slate-50 rounded-lg flex items-center justify-center text-slate-400 mb-4 border border-slate-100">
                            <span class="text-xs font-medium text-slate-400">Imagen Aro Titanio</span>
                        </div>
                        <span class="text-xs font-semibold uppercase tracking-wider text-sky-600">Vogue</span>
                        <h4 class="text-base font-semibold text-slate-800 mt-1">Modern Titan</h4>
                        <p class="text-xs text-slate-500 mt-1">Material: Titanio | Forma: Rectangular</p>
                        <div class="flex justify-between items-center mt-4">
                            <span class="text-lg font-bold text-slate-900">L. 2,850</span>
                            <a href="login.jsp" class="text-xs bg-slate-100 hover:bg-slate-200 text-slate-700 px-3 py-1.5 rounded-md font-medium transition-colors">
                                Apartar
                            </a>
                        </div>
                    </div>

                    <!-- Producto 4 -->
                    <div class="bg-white rounded-xl border border-slate-200/80 p-4 shadow-sm hover:shadow-md transition-all">
                        <div class="h-40 bg-slate-50 rounded-lg flex items-center justify-center text-slate-400 mb-4 border border-slate-100">
                            <span class="text-xs font-medium text-slate-400">Imagen Aro Pasta</span>
                        </div>
                        <span class="text-xs font-semibold uppercase tracking-wider text-sky-600">Prada</span>
                        <h4 class="text-base font-semibold text-slate-800 mt-1">Cat Eye Trend</h4>
                        <p class="text-xs text-slate-500 mt-1">Material: Acetato | Forma: Cat Eye</p>
                        <div class="flex justify-between items-center mt-4">
                            <span class="text-lg font-bold text-slate-900">L. 3,500</span>
                            <a href="login.jsp" class="text-xs bg-slate-100 hover:bg-slate-200 text-slate-700 px-3 py-1.5 rounded-md font-medium transition-colors">
                                Apartar
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- FOOTER -->
        <footer id="contacto" class="bg-slate-900 text-slate-400 text-sm py-12 border-t border-slate-800">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
                    <div>
                        <span class="text-lg font-bold text-white tracking-tight">Óptica<span class="text-sky-400">Vision</span></span>
                        <p class="text-slate-400 mt-2 text-xs leading-relaxed">
                            Sistema de gestión integral para la atención de clientes, mediciones oftalmológicas e inventario de productos.
                        </p>
                    </div>

                    <div>
                        <h4 class="text-white font-medium mb-3 text-xs uppercase tracking-wider">Enlaces Rápidos</h4>
                        <ul class="space-y-2 text-xs">
                            <li><a href="#inicio" class="hover:text-white transition-colors">Inicio</a></li>
                            <li><a href="#servicios" class="hover:text-white transition-colors">Servicios</a></li>
                            <li><a href="#catalogo" class="hover:text-white transition-colors">Catálogo</a></li>
                            <li><a href="login.jsp" class="hover:text-white transition-colors">Acceso Usuarios</a></li>
                        </ul>
                    </div>

                    <div>
                        <h4 class="text-white font-medium mb-3 text-xs uppercase tracking-wider">Contacto</h4>
                        <p class="text-xs text-slate-400">Atención al Cliente & Citas</p>
                        <p class="text-xs text-slate-400 mt-1">Teléfono: +504 2785-0000</p>
                        <p class="text-xs text-slate-400 mt-1">Correo: contacto@opticavision.hn</p>
                    </div>
                </div>

                <div class="border-t border-slate-800 pt-6 text-center text-xs text-slate-500">
                    &copy; 2026 ÓpticaVision. Proyecto Académico de Java Web. Todos los derechos reservados.
                </div>
            </div>
        </footer>

    </body>
</html>