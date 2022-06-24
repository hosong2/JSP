package cs.good.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.good.dto.SignUpDto;


public class SignUpDao {
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/good");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	public ArrayList<SignUpDto> list(){
		String sql = "select id, pwd, name, adress, phone from signup";
		ArrayList<SignUpDto> dtos = new ArrayList<SignUpDto>();
		
		try(
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				)
		{
			while(rs.next()) {
				SignUpDto dto = new SignUpDto();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAdress(rs.getString("adress"));
				dto.setPhone(rs.getString("phone"));
				
				dtos.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	public void insert(SignUpDto dto) {
		String sql = "insert into signup(id, pwd, name, adress, phone) values(?, ?, ?, ?, ?)";
		try( 		
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			){	
				pstmt.setString(1, dto.getId());
				pstmt.setString(2, dto.getPwd());
				pstmt.setString(3, dto.getName());
				pstmt.setString(4, dto.getAdress());
				pstmt.setString(5, dto.getPhone());
							
				pstmt.executeUpdate();
		
//				int i= pstmt.executeUpdate();
//				System.out.println(i);
				
		} catch (Exception e) {
			e.printStackTrace();
		}
}
	public int checkUser(String id,String pwd) {
		String sql = "select pwd from signup where id=? and pwd=?";
		int check = 0;
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			)
		{
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			try(ResultSet rs = pstmt.executeQuery();) {
				if(rs.next()) {
					check = 1;
				}
				else {
					check = 0;
				}
			} catch (Exception e) {
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
}
