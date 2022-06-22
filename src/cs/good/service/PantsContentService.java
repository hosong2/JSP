package cs.good.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.PantsDao;
import cs.good.dao.ProductDao;
import cs.good.dto.PantsDto;
import cs.good.dto.ProductDto;

public class PantsContentService implements ProductService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		PantsDao dao = new PantsDao();
		
		PantsDto dto = dao.contentlist(id);
		request.setAttribute("dto", dto);
	}
}
