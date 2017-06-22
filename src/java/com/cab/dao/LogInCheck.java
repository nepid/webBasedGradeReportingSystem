
package com.cab.dao;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class LogInCheck {
    public boolean checkUser(String username, String password){
        boolean isValidUser = false;
        try {
            
            
            Statement stmt = DBConnection.conn.createStatement();
            String query = "select sid,pw from studentcredential where sid='"+username+"' and pw='"+password+"'";
            ResultSet rs = stmt.executeQuery(query);
            if(rs.next()){
                isValidUser = true;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(LogInCheck.class.getName()).log(Level.SEVERE, null, ex);
        }
    return isValidUser;
    }
    
}
