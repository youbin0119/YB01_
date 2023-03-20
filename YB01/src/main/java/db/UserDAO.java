package db;

import java.security.CryptoPrimitive;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.*;

public class UserDAO {
	
	private Connection conn;
    private ResultSet rs;
	
	public UserDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/BD01";
            String dbID = "root";
            String dbPassword = "1234";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
	
	public void insert(String id, String pw, String name, String address, String phone) throws NoSuchAlgorithmException {
		
		Sha256 sha256 = new Sha256();
		String cryptogram = sha256.encrypt(pw);
		
		try{
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("insert into user (id, pw, name, address, phone) values ('"+id+"','"+cryptogram+"', '"+name+"', '"+address+"', '"+phone+"')");
			
			stmt.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public boolean login(String id, String pw) throws NoSuchAlgorithmException {
		
		Sha256 sha256 = new Sha256();
		String cryptogram = sha256.encrypt(pw);
		
		try{
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from user where id = '"+id+"' and pw = '"+cryptogram+"'");
			
			if(rs.next()) {
                return true;
            } else {
            	return false;
            }
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}


}
