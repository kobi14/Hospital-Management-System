/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db_connection;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author kobi.ktk
 */
public class db {
    public static Connection connect() throws SQLException{
        Connection con =null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root","");
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return con;
               
    }
            
           
}
