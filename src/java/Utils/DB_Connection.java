/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dell
 */
public class DB_Connection {
    //Connect to MySQL DB
    public static Connection getConnection()
    {
       Connection con = null;
       try{
            Class.forName("com.mysql.jdbc.Driver");  
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/shopxedap","root","DouQwer1234!@#");
       }catch(Exception ex){
             System.out.println(ex.toString());
       }
    return con;
    }
}
