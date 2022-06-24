package cs.good.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.ProductDao;
import cs.good.dao.TopDao;
import cs.good.dto.ProductDto;
import cs.good.dto.TopDto;

public class TopContentService implements ProductService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		TopDao dao = new TopDao();
		
		TopDto dto = dao.contentlist(id);
		request.setAttribute("dto", dto);
	}
}
