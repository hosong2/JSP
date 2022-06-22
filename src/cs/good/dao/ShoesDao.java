package cs.good.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.good.dto.ShoesDto;
import cs.good.dto.TopDto;

public class ShoesDao {
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/good");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	public ArrayList<ShoesDto> list(){
		String sql = "select * from shoes";
		ArrayList<ShoesDto> dtos = new ArrayList<ShoesDto>();
		
		try(
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				)
		{
			while(rs.next()) {
				ShoesDto dto = new ShoesDto();
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
	
	public ShoesDto contentlist(String id){
		String sql = "select image, itemname, companyname, price from shoes where id=?";
		ShoesDto dto = new ShoesDto();
		
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
