package cs.good.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.service.BoardInsertService;
import cs.good.service.BoardService;
import cs.good.service.ProductContentService;
import cs.good.service.ProductService;


@WebServlet("*.dh")
public class Hcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".dh"));
		String page = null;
		
		if(com != null && com.trim().equals("homecon")) {
			ProductService service = new ProductContentService();
			service.execute(request, response);			
			page = "serve.jsp";
	}
		if(com != null && com.trim().equals("shoes")) {
			ProductService service = new ProductContentService();
			service.execute(request, response);		
			page = "serve.jsp";
	}
		if(com != null && com.trim().equals("pants")) {
			ProductService service = new ProductContentService();
			service.execute(request, response);		
			page = "serve.jsp";
	}
		if(com != null && com.trim().equals("top")) {
			ProductService service = new ProductContentService();
			service.execute(request, response);
			page = "serve.jsp";
	}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
