package po.optica.proyect.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public final class ConexionDB {

    private static final int INTENTOS = 3;
    private static final long ESPERA_MS = 5000;

    private ConexionDB() { }

    /** Busca primero una propiedad de Java (-DDB_URL=...) y luego la variable de entorno. */
    private static String leer(String nombre) {
        String valor = System.getProperty(nombre);
        if (valor == null || valor.isBlank()) {
            valor = System.getenv(nombre);
        }
        if (valor == null || valor.isBlank()) {
            throw new IllegalStateException("Falta la configuracion: " + nombre);
        }
        return valor;
    }

   
    public static Connection getConexion() throws SQLException {
        String url = leer("DB_URL");
        String user = leer("DB_USER");
        String password = leer("DB_PASSWORD");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("No se encontro el driver mssql-jdbc. Revisa el pom.xml.", e);
        }

        SQLException ultimo = null;
        for (int i = 1; i <= INTENTOS; i++) {
            try {
                return DriverManager.getConnection(url, user, password);
            } catch (SQLException e) {
                ultimo = e;
                if (i < INTENTOS) {
                    try {
                        Thread.sleep(ESPERA_MS);
                    } catch (InterruptedException ie) {
                        Thread.currentThread().interrupt();
                        break;
                    }
                }
            }
        }
        throw ultimo;
    }

    
    public static void main(String[] args) {
        try (Connection con = getConexion();
             var st = con.createStatement();
             var rs = st.executeQuery("SELECT DB_NAME() AS Base, COUNT(*) AS Tablas "
                     + "FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE'")) {
            if (rs.next()) {
                System.out.println("Conectado a: " + rs.getString("Base")
                        + " | Tablas: " + rs.getInt("Tablas"));
            }
        } catch (Exception e) {
            System.out.println("Error de conexion: " + e.getMessage());
        }
    }
}