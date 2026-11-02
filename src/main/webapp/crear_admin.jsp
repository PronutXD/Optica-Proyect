<%-- 
    Document   : crear_admin
    Description: Script temporal de siembra para registrar el usuario administrador inicial.
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Datos de conexión (Ajusta los parámetros según tu configuración de base de datos)
    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; // O tu driver correspondiente
    String url = "jdbc:sqlserver://localhost:1433;databaseName=Optica;encrypt=true;trustServerCertificate=true;"; // Ajusta tu URL
    String userDb = "tu_usuario_db";
    String passDb = "tu_password_db";

    String mensaje = "";
    String tipoMensaje = "";

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, userDb, passDb);
            
            String sql = "INSERT INTO Usuario (IdRol, IdSucursal, NombreUsuario, ContrasenaHash, NombreCompleto, Correo, Activo, FechaCreacion) VALUES (?, ?, ?, ?, ?, ?, ?, GETDATE())";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setInt(1, 1); // IdRol: Administrador
            pstmt.setInt(2, 1); // IdSucursal: 1
            pstmt.setString(3, "Admin2"); // NombreUsuario
            pstmt.setString(4, "Admin_1403"); // ContrasenaHash (Idealmente cifrada con BCrypt si ya lo usas, o texto plano según tu login actual)
            pstmt.setString(5, "Edson Guzmán"); // NombreCompleto
            pstmt.setString(6, "E_Admin@gmail.com"); // Correo
            pstmt.setInt(7, 1); // Activo: 1
            
            int filas = pstmt.executeUpdate();
            if (filas > 0) {
                mensaje = "¡Administrador creado con éxito! Ya puedes iniciar sesión con 'Admin2'.";
                tipoMensaje = "bg-emerald-50 text-emerald-700 border-emerald-200";
            }
            
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            mensaje = "Error al registrar el administrador: " + e.getMessage();
            tipoMensaje = "bg-rose-50 text-rose-700 border-rose-200";
        }
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Crear Usuario Administrador - ÓpticaVision</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50 font-sans flex items-center justify-center min-h-screen">
    <div class="max-w-md w-full bg-white p-8 rounded-2xl border border-slate-200/80 shadow-sm space-y-6">
        <div>
            <h1 class="text-xl font-bold text-slate-800">Seed de Administrador</h1>
            <p class="text-xs text-slate-500 mt-1">Inserta el usuario inicial para habilitar el acceso al panel de gestión.</p>
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
                <label class="block text-xs font-bold text-slate-700 uppercase">Rol y Sucursal</label>
                <input type="text" value="Rol ID: 1 | Sucursal ID: 1" disabled class="w-full px-3.5 py-2 bg-slate-100 border border-slate-200 rounded-xl text-xs text-slate-500">
            </div>

            <button type="submit" class="w-full bg-sky-600 hover:bg-sky-700 text-white text-xs font-bold py-3 rounded-xl transition-all shadow-md shadow-sky-600/20">
                Ejecutar Inserción de Administrador
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