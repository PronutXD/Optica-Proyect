<%-- 
    Document   : crear_admin
    Description: Script JSP para registrar el administrador reutilizando la clase ConexionDB existente.
--%>
<%@page import="java.sql.*"%>
<%@page import="conexion.ConexionDB"%>
<%@page import="org.mindrot.jbcrypt.BCrypt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mensaje = "";
    String tipoMensaje = "";

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        try {
            // Contraseña en texto plano solicitada
            String passwordPlano = "Admin_1403";
            // Generar el hash seguro con BCrypt
            String passwordHash = BCrypt.hashpw(passwordPlano, BCrypt.gensalt());

            // Llamada directa a tu clase de conexión existente
            // Nota: Si tu método de conexión es estático y se llama diferente (ej. conectar()), cámbialo aquí.
            Connection conn = ConexionDB.getConexion(); // O ConexionDB.conectar() según cómo lo tengas definido
            
            String sql = "INSERT INTO Usuario (IdRol, IdSucursal, NombreUsuario, ContrasenaHash, NombreCompleto, Correo, Activo, FechaCreacion) VALUES (?, ?, ?, ?, ?, ?, ?, GETDATE())";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setInt(1, 1); // IdRol: Administrador
            pstmt.setInt(2, 1); // IdSucursal: 1
            pstmt.setString(3, "Admin2"); // NombreUsuario
            pstmt.setString(4, passwordHash); // Contrasena hasheada con BCrypt
            pstmt.setString(5, "Edson Guzmán"); // NombreCompleto
            pstmt.setString(6, "E_Admin@gmail.com"); // Correo
            pstmt.setInt(7, 1); // Activo: 1
            
            int filas = pstmt.executeUpdate();
            if (filas > 0) {
                mensaje = "¡Administrador creado con éxito usando la conexión del proyecto! Ya puedes iniciar sesión con 'Admin2'.";
                tipoMensaje = "bg-emerald-50 text-emerald-700 border-emerald-200";
            }
            
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            mensaje = "Error al registrar: " + e.getMessage();
            tipoMensaje = "bg-rose-50 text-rose-700 border-rose-200";
        }
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Crear Administrador - ÓpticaVision</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50 font-sans flex items-center justify-center min-h-screen">
    <div class="max-w-md w-full bg-white p-8 rounded-2xl border border-slate-200/80 shadow-sm space-y-6">
        <div>
            <h1 class="text-xl font-bold text-slate-800">Seed de Administrador</h1>
            <p class="text-xs text-slate-500 mt-1">Crea el usuario inicial reutilizando `ConexionDB` y cifrado BCrypt.</p>
        </div>

        <% if (!mensaje.isEmpty()) { %>
            <div class="p-3.5 rounded-xl border text-xs font-semibold <%= tipoMensaje %>">
                <%= mensaje %>
            </div>
        <% } %>

        <form method="POST" class="space-y-4">
            <div class="space-y-1">
                <label class="block text-xs font-bold text-slate-700 uppercase">Nombre de Usuario</label>
                <input type="text" value="Admin2" disabled class="w-full px-3.5 py-2 bg-slate-100 border border-slate-200 rounded-xl text-xs text-slate-500">
            </div>

            <div class="space-y-1">
                <label class="block text-xs font-bold text-slate-700 uppercase">Nombre Completo</label>
                <input type="text" value="Edson Guzmán" disabled class="w-full px-3.5 py-2 bg-slate-100 border border-slate-200 rounded-xl text-xs text-slate-500">
            </div>

            <div class="space-y-1">
                <label class="block text-xs font-bold text-slate-700 uppercase">Correo Electrónico</label>
                <input type="text" value="E_Admin@gmail.com" disabled class="w-full px-3.5 py-2 bg-slate-100 border border-slate-200 rounded-xl text-xs text-slate-500">
            </div>

            <div class="space-y-1">
                <label class="block text-xs font-bold text-slate-700 uppercase">Contraseña a Cifrar</label>
                <input type="text" value="Admin_1403" disabled class="w-full px-3.5 py-2 bg-slate-100 border border-slate-200 rounded-xl text-xs text-slate-500">
            </div>

            <button type="submit" class="w-full bg-sky-600 hover:bg-sky-700 text-white text-xs font-bold py-3 rounded-xl transition-all shadow-md shadow-sky-600/20">
                Ejecutar Inserción con ConexionDB
            </button>
        </form>

        <div class="text-center pt-2">
            <a href="${pageContext.request.contextPath}/views/auth/login.jsp" class="text-xs font-semibold text-sky-600 hover:text-sky-800 transition-colors">
                Ir a Iniciar Sesión &rarr;
            </a>
        </div>
    </div>
</body>
</html>