package Modelo;

/**
 *
 * @author rezro
 */
public class Articulo {

    private String nombre;
    private String imagen;
    private int cantidad;
    private double precioUnitario;

    public Articulo(String nombre, String imagen, int cantidad, double precioUnitario) {
        this.nombre = nombre;
        this.imagen = imagen;
        this.cantidad = cantidad;
        this.precioUnitario = precioUnitario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    public void setPrecioUnitario(double precioUnitario){
        this.precioUnitario = precioUnitario;
    }
    
    public double getPrecioUnitario(){
        return precioUnitario;
    }
}
