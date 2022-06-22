package cs.good.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs.good.dao.SignUpDao;
import cs.good.dto.SignUpDto;

public class SignUpCheck implements SignUpService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		SignUpDao dao = new SignUpDao();
		int check = dao.checkUser(id, pwd);
		
		if(check == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("main.do");
		}
	}
}
