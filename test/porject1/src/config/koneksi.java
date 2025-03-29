/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class koneksi {
    private static Connection connection;
    
    public static Connection getConnection(){
        if(connection == null){
            try{
                String url  = "jdbc:mysql://localhost:3306/lib_management";
                String username = "root"; // Ganti dengan username MySQL Anda
                String password = ""; // Ganti dengan password MySQL Anda
                // Membuat koneksi
                connection = DriverManager.getConnection(url, username, password);
                System.out.println("Database connected!");
            } catch (SQLException e){
                System.out.println("Connection to database failed!");
                e.printStackTrace();
            }
        }
        return connection;
    }
}

