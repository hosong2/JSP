package cs.good.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ProductService {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
