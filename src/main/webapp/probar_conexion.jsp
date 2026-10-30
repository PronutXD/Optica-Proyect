<%@ page import="java.sql.Connection" %>
<%@ page import="conexion.ConexionDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Prueba de Conexión</title></head>
<body>
    <h2>Estado de la Conexión a Azure SQL:</h2>
    <%
        try {
            Connection conn = ConexionDB.getConexion();
            if (conn != null && !conn.isClosed()) {
                out.println("<h3 style='color:green;'>¡Conexión exitosa a Azure SQL Database!</h3>");
                conn.close();
            } else {
                out.println("<h3 style='color:red;'>La conexión devolvió nulo. Revisa la consola de Tomcat.</h3>");
            }
        } catch (Exception e) {
            out.println("<h3 style='color:red;'>Error al conectar: " + e.getMessage() + "</h3>");
        }
    %>
</body>
</html>