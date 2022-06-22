package cs.good.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.BoardDao;
import cs.good.dto.BoardDto;

public class BoardInsertService implements BoardService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		BoardDto dto = new BoardDto(title, writer, content);
		
		BoardDao dao = new BoardDao();
		
		dao.insert(dto);
	}
}
