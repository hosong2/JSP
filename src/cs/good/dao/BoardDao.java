package cs.good.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.good.dto.BoardDto;

public class BoardDao {
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/good");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	
	public ArrayList<BoardDto> list(){
		String sql = "select title, writer from board";
		ArrayList<BoardDto> dtos = new ArrayList<BoardDto>();
		
		try(
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				)
		{
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				
				dtos.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	public void insert(BoardDto dto) {
		String sql = "insert into board(title, writer, content) values (?, ?, ?)";
		
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getWriter());
			pstmt.setString(3, dto.getContent());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public BoardDto contentlist(String title){
		String sql = "select title, writer, content from board where title=?";
		BoardDto dto = new BoardDto();
		
		try {	
				Connection con = getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
				
				stmt.setString(1, title);
				ResultSet rs = stmt.executeQuery();
		
			if(rs.next()) {
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContent(rs.getString("content"));
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}
