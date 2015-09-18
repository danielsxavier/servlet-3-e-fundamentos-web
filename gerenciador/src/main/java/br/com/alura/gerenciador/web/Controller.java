package br.com.alura.gerenciador.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet(urlPatterns="/executa")
public class Controller extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String parametro = req.getParameter("tarefa");
		if(parametro == null)
			throw new IllegalArgumentException("Tarefa invalida");
		String nomeDaClasse = "br.com.alura.gerenciador.web." + parametro;
		try {
			Class<?> type = Class.forName(nomeDaClasse);
			Tarefa tarefa = (Tarefa) type.newInstance();
			String pagina = tarefa.executa(req, resp);
			RequestDispatcher dispatcher = req.getRequestDispatcher(pagina);
			dispatcher.forward(req, resp);
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
	}

}
