package cs.good.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.dao.SignUpDao;
import cs.good.dto.SignUpDto;

public class SignUpInsertService implements SignUpService{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String adress = request.getParameter("adress");
		String phone = request.getParameter("phone");
		
		SignUpDto dto = new SignUpDto(id, pwd, name, adress, phone);
		
		SignUpDao dao = new SignUpDao();
		
		dao.insert(dto);
}
}
