package cs.good.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.ShoesDao;
import cs.good.dto.ShoesDto;

public class ShoesListService implements ProductService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		ShoesDao dao = new ShoesDao();
		
		ArrayList<ShoesDto> dtos = dao.list();
		request.setAttribute("dtos", dtos);
	}
}
