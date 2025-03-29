package loginandsignup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author JORDY
 */
public class DatabaseConnection {

    // Database connection parameters
    private static final String DB_URL = "jdbc:mysql://localhost:3306/java_user_database";
    private static final String USER = "your_username";
    private static final String PASSWORD = "your_password";

    // Method to establish database connection
    public static Connection getConnection() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            System.out.println("Connected to the database.");
        } catch (SQLException e) {
            System.out.println("Failed to connect to the database.");
            e.printStackTrace();
        }
        return connection;
    }
}
