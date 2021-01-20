package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest peticion, HttpServletResponse respuesta)
			throws ServletException, IOException {

		String nombre = peticion.getParameter("nombre");
		String apellido = peticion.getParameter("apellido");
		String email = peticion.getParameter("email");
		int edad = Integer.parseInt(peticion.getParameter("edad"));

		String mensaje = "Bienvenido/a " + nombre + " " + apellido + ". <br/>Tienes " + edad + " años, ";
		if (edad >= 18) {
			mensaje += "eres mayor de edad y tu email es: " + email;
		} else {
			mensaje += "eres menor de edad.";
		}
		peticion.getSession().setAttribute("mensaje", mensaje);

		respuesta.sendRedirect("index.jsp");

	}

}
