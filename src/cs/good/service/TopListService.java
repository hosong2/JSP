package cs.good.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.TopDao;
import cs.good.dto.TopDto;

public class TopListService implements ProductService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		TopDao dao = new TopDao();
		
		ArrayList<TopDto> dtos = dao.list();
		request.setAttribute("dtos", dtos);
	}
}
