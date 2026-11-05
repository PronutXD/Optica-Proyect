package model;

import java.sql.Timestamp;

public class CitaDetalle {
    private int idCita;
    private Timestamp fechaHora;
    private String estado;
    private String notas;
    private int idCliente;
    private String nombreCliente;
    private String identidadCliente;
    private String telefonoCliente;
    private int idServicio;
    private String nombreServicio;
    private double precioServicio;
    private int idUsuario;
    private String nombreOptometrista;
    private int idSucursal;
    private String nombreSucursal;

    public CitaDetalle() {}

    // Getters y Setters
    public int getIdCita() { return idCita; }
    public void setIdCita(int idCita) { this.idCita = idCita; }

    public Timestamp getFechaHora() { return fechaHora; }
    public void setFechaHora(Timestamp fechaHora) { this.fechaHora = fechaHora; }

    public String getEstado() { return estado; }
    public void setEstado(String estado) { this.estado = estado; }

    public String getNotas() { return notas; }
    public void setNotas(String notas) { this.notas = notas; }

    public int getIdCliente() { return idCliente; }
    public void setIdCliente(int idCliente) { this.idCliente = idCliente; }

    public String getNombreCliente() { return nombreCliente; }
    public void setNombreCliente(String nombreCliente) { this.nombreCliente = nombreCliente; }

    public String getIdentidadCliente() { return identidadCliente; }
    public void setIdentidadCliente(String identidadCliente) { this.identidadCliente = identidadCliente; }

    public String getTelefonoCliente() { return telefonoCliente; }
    public void setTelefonoCliente(String telefonoCliente) { this.telefonoCliente = telefonoCliente; }

    public int getIdServicio() { return idServicio; }
    public void setIdServicio(int idServicio) { this.idServicio = idServicio; }

    public String getNombreServicio() { return nombreServicio; }
    public void setNombreServicio(String nombreServicio) { this.nombreServicio = nombreServicio; }

    public double getPrecioServicio() { return precioServicio; }
    public void setPrecioServicio(double precioServicio) { this.precioServicio = precioServicio; }

    public int getIdUsuario() { return idUsuario; }
    public void setIdUsuario(int idUsuario) { this.idUsuario = idUsuario; }

    public String getNombreOptometrista() { return nombreOptometrista; }
    public void setNombreOptometrista(String nombreOptometrista) { this.nombreOptometrista = nombreOptometrista; }

    public int getIdSucursal() { return idSucursal; }
    public void setIdSucursal(int idSucursal) { this.idSucursal = idSucursal; }

    public String getNombreSucursal() { return nombreSucursal; }
    public void setNombreSucursal(String nombreSucursal) { this.nombreSucursal = nombreSucursal; }
}