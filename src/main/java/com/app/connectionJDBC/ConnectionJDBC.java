package com.app.connectionJDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionJDBC {
    private static final String URL = "jdbc:mysql://localhost:3306/kiemtrathuchanh";
    private static final String USER_NAME = "root";
    private static final String USER_PASSWORD = "034266145";
    private static Connection connection;
    private ConnectionJDBC(){

    }
    public static Connection getConnection(){
        if(connection==null){
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(URL, USER_NAME, USER_PASSWORD);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return connection;
    }
}
