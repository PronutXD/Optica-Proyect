/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;

/**
 *
 * @author User
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {

    // URL de conexión para Azure SQL Database (Microsoft SQL Server)
    private static final String SERVER = "optica-servidor.database.windows.net";
    private static final String DATABASE = "Optica";
    private static final String USER = "adminoptica";
    private static final String PASSWORD = "Optica.2026"; // Coloca la contraseña de tu usuario adminoptica

    // Cadena de conexión JDBC configurada con encriptación para Azure SQL
    private static final String URL = "jdbc:sqlserver://" + SERVER + ":1433;"
            + "database=" + DATABASE + ";"
            + "user=" + USER + ";"
            + "password=" + PASSWORD + ";"
            + "encrypt=true;"
            + "trustServerCertificate=true;"
            + "loginTimeout=30;";

    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

    /**
     * Obtiene la conexión aciva hacia la base de datos Azure SQL.
     * @return Connection obtiva hacia la base de datos Azure SQL.
     * @return Connection objeto de conexión o null si falla.
     */
    public static Connection getConexion() {
        Connection con = null;
        try {
            // Cargar el Driver JDBC de Microsoft SQL Server
            Class.forName(DRIVER);
            
            // Abrir la conexión
            con = DriverManager.getConnection(URL);
            System.out.println("✅ Conexión establecida exitosamente con Azure SQL Database.");
            
        } catch (ClassNotFoundException e) {
            System.err.println("❌ Error: No se encontró el Driver com.microsoft.sqlserver.jdbc.SQLServerDriver. "
                    + "Verifica la dependencia mssql-jdbc en pom.xml: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("❌ Error al conectar con Azure SQL Database: " + e.getMessage());
        }
        return con;
    }

    /**
     * Cierra la conexión de forma segura.
     * @param con Conexión JDBC a cerrar
     */
    public static void cerrarConexion(Connection con) {
        if (con != null) {
            try {
                con.close();
                System.out.println("🔒 Conexión a la base de datos cerrada.");
            } catch (SQLException e) {
                System.err.println("❌ Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }
}