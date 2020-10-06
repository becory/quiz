/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ssuyuanhuang
 */
public class DBConnection {
    private Connection DBConnection;
    public Connection connect(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Connection Success");
        }
        catch(ClassNotFoundException cnfe){
            System.out.println("Connection Fail"+cnfe);
        }
    
    String url="jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12356487?useUnicode=true&characterEncoding=utf-8";
    try{
        DBConnection=(Connection) DriverManager.getConnection(url,"sql12356487","pTaIGlCDlW");
        System.out.println("Database Connected");
    }
    catch(SQLException se){
        System.out.println("No Database"+se);
    }
    return DBConnection;
    }
}
