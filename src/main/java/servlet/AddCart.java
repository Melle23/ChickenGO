package servlet;

import Modelo.Articulo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author lv1822
 */
@WebServlet("/eliminarArticulo")
public class AddCart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String img = request.getParameter("img");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        double precioUnitario = Double.parseDouble(request.getParameter("precio"));

        HttpSession sesion = request.getSession(true);
        ArrayList<Articulo> carrito = sesion.getAttribute("carrito") == null
                ? new ArrayList<>()
                : (ArrayList<Articulo>) sesion.getAttribute("carrito");

        boolean productoExiste = false;

        for (Articulo articulo : carrito) {
            if (articulo.getNombre().equals(nombre)) {
                articulo.setCantidad(articulo.getCantidad() + cantidad);
                productoExiste = true;
                break;
            }
        }

        if (!productoExiste) {
            carrito.add(new Articulo(nombre, img, cantidad, precioUnitario));
        }

        sesion.setAttribute("carrito", carrito);
        response.sendRedirect("cart.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        HttpSession sesion = request.getSession(false);

        if (sesion != null) {
            ArrayList<Articulo> carrito = (ArrayList<Articulo>) sesion.getAttribute("carrito");
            if (carrito != null) {
                carrito.removeIf(articulo -> articulo.getNombre().equals(nombre));
                sesion.setAttribute("carrito", carrito);
            }
        }
        response.sendRedirect("cart.jsp");
    }


    // Método para limpiar el carrito
    public static void limpiarCarrito(HttpSession sesion) {
        sesion.setAttribute("carrito", new ArrayList<Articulo>());
    }
}
