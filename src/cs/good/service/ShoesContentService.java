package cs.good.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.ProductDao;
import cs.good.dao.ShoesDao;
import cs.good.dto.ProductDto;
import cs.good.dto.ShoesDto;

public class ShoesContentService implements ProductService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		ShoesDao dao = new ShoesDao();
		
		ShoesDto dto = dao.contentlist(id);
		request.setAttribute("dto", dto);
	}
}
