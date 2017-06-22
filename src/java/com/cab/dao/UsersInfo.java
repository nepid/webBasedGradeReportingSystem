
package com.cab.dao;

//import com.cab.libmgmt.db.DBConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;



public class UsersInfo {
    public String[] userData(String userid){
        List<String> recordList = new ArrayList<>();
            String tempname = null, tempAddress = null, tempPhone = null, tempdob = null,query = null;
        try {
            
            query = "select Name,Address,Phone_No,dob from student_info where sid = '"+userid+"'";
            Statement stmt = DBConnection.conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                
                tempname = rs.getString(1);
                tempPhone = rs.getString(3);
                tempAddress = rs.getString(2);
                tempdob = rs.getString(4);
                
                recordList.add(tempname);
                recordList.add(tempPhone);
                recordList.add(tempAddress);
                recordList.add(tempdob);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UsersInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return recordList.toArray(new String[recordList.size()]);
    }
    
    
    public String userName(String userid){
        String fullName = null;
        try {
            String tempname=null,query=null;
            List<String> recordList = new ArrayList<>();
            
            query = "select Name from student_info where sid = '"+userid+"'";
            Statement stmt = DBConnection.conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                tempname = rs.getString(1);
                recordList.add(tempname);
            }
            String tempData[] = recordList.toArray(new String[recordList.size()]);
            fullName = tempData[0];
            
        } catch (SQLException ex) {
            Logger.getLogger(UsersInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return  fullName;
    }
    
}
