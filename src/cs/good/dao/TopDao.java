package cs.good.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.good.dto.PantsDto;
import cs.good.dto.ProductDto;
import cs.good.dto.TopDto;

public class TopDao {
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/good");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	public ArrayList<TopDto> list(){
		String sql = "select * from top";
		ArrayList<TopDto> dtos = new ArrayList<TopDto>();
		
		try(
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				)
		{
			while(rs.next()) {
				TopDto dto = new TopDto();
				dto.setId(rs.getString("id"));
				dto.setImage(rs.getString("image"));
				dto.setItemname(rs.getString("itemname"));
				dto.setCompanyname(rs.getString("companyname"));
				dto.setPrice(rs.getInt("price"));
				
				dtos.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	public TopDto contentlist(String id){
		String sql = "select image, itemname, companyname, price from top where id=?";
		TopDto dto = new TopDto();
		
		try {	
				
				Connection con = getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
				
				stmt.setString(1, id);
				ResultSet rs = stmt.executeQuery();
		
			

			if(rs.next()) {
				dto.setImage(rs.getString("image"));
				dto.setItemname(rs.getString("itemname"));
				dto.setCompanyname(rs.getString("companyname"));
				dto.setPrice(rs.getInt("price"));
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}
