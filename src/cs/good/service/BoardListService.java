package cs.good.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.BoardDao;
import cs.good.dto.BoardDto;

public class BoardListService implements BoardService{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		BoardDao dao = new BoardDao();
		
		ArrayList<BoardDto> dtos = dao.list();
		
		request.setAttribute("dtos", dtos);
	}
}
