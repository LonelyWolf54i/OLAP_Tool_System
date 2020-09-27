package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class myConnection {

    public static Connection ConnectToDatabase(String[] serverName) {
        try {
            Connection con = null;
            
            String strCon = "jdbc:sqlserver://"+serverName[0]+"\\"+serverName[1]+":1433;databaseName=AdventureWorks2008R2_OLAP";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try {
                con = DriverManager.getConnection(strCon,"sa","1234");
            } catch (SQLException ex) {
                Logger.getLogger(myConnection.class.getName()).log(Level.SEVERE, null, ex);
            }
            return con;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(myConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
