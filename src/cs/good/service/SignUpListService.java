package cs.good.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.SignUpDao;
import cs.good.dto.SignUpDto;

public class SignUpListService implements SignUpService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		SignUpDao dao = new SignUpDao();
		
		ArrayList<SignUpDto> dtos = dao.list();
		
		request.setAttribute("dtos", dtos);
	}
}
