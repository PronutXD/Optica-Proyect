package model;

import java.util.Date;

public class VentaSaldo {
    private int idVenta;
    private String tipo;
    private Date fecha;
    private Date fechaLimiteApartado;
    private String estadoVenta;
    private double descuento;
    private double subtotal;
    private double isv;
    private double total;
    private double totalPagado;
    private double saldoPendiente;
    private int idCliente;
    private String nombreCliente;
    private String identidadCliente;
    private String telefonoCliente;
    private String nombreVendedor;
    private String nombreSucursal;

    public VentaSaldo() {}

    // Getters y Setters
    public int getIdVenta() { return idVenta; }
    public void setIdVenta(int idVenta) { this.idVenta = idVenta; }

    public String getTipo() { return tipo; }
    public void setTipo(String tipo) { this.tipo = tipo; }

    public Date getFecha() { return fecha; }
    public void setFecha(Date fecha) { this.fecha = fecha; }

    public Date getFechaLimiteApartado() { return fechaLimiteApartado; }
    public void setFechaLimiteApartado(Date fechaLimiteApartado) { this.fechaLimiteApartado = fechaLimiteApartado; }

    public String getEstadoVenta() { return estadoVenta; }
    public void setEstadoVenta(String estadoVenta) { this.estadoVenta = estadoVenta; }

    public double getDescuento() { return descuento; }
    public void setDescuento(double descuento) { this.descuento = descuento; }

    public double getSubtotal() { return subtotal; }
    public void setSubtotal(double subtotal) { this.subtotal = subtotal; }

    public double getIsv() { return isv; }
    public void setIsv(double isv) { this.isv = isv; }

    public double getTotal() { return total; }
    public void setTotal(double total) { this.total = total; }

    public double getTotalPagado() { return totalPagado; }
    public void setTotalPagado(double totalPagado) { this.totalPagado = totalPagado; }

    public double getSaldoPendiente() { return saldoPendiente; }
    public void setSaldoPendiente(double saldoPendiente) { this.saldoPendiente = saldoPendiente; }

    public int getIdCliente() { return idCliente; }
    public void setIdCliente(int idCliente) { this.idCliente = idCliente; }

    public String getNombreCliente() { return nombreCliente; }
    public void setNombreCliente(String nombreCliente) { this.nombreCliente = nombreCliente; }

    public String getIdentidadCliente() { return identidadCliente; }
    public void setIdentidadCliente(String identidadCliente) { this.identidadCliente = identidadCliente; }

    public String getTelefonoCliente() { return telefonoCliente; }
    public void setTelefonoCliente(String telefonoCliente) { this.telefonoCliente = telefonoCliente; }

    public String getNombreVendedor() { return nombreVendedor; }
    public void setNombreVendedor(String nombreVendedor) { this.nombreVendedor = nombreVendedor; }

    public String getNombreSucursal() { return nombreSucursal; }
    public void setNombreSucursal(String nombreSucursal) { this.nombreSucursal = nombreSucursal; }
}