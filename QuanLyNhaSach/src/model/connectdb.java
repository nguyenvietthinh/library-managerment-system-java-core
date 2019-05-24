/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.DriverManager;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Nguyen Viet Thinh
 */
public class connectdb {
    Connection conn;
    public static Connection ConnecrDb(){
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/qlnhasach", "root", "");
//           JOptionPane.showMessageDialog(null, "Connected");  
//           System.out.println("CC");
           return conn;
        }catch(Exception e){
//            JOptionPane.showMessageDialog(null, " Not Connected");
            return null;
        }
        
    }
}
