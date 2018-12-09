package utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnection {
    private Connection connection;
    private static DatabaseConnection databaseConnectionInstance;

    private DatabaseConnection() {
        Properties properties = new Properties();
        ClassLoader loader = Thread.currentThread().getContextClassLoader();
        try (InputStream resourceAsStream = loader.getResourceAsStream("db.properties")) {
            properties.load(resourceAsStream);
            String dbUrl = properties.getProperty("db.url");
            String dbUsername = properties.getProperty("db.username");
            String dbPassword = properties.getProperty("db.password");
            String dbDriverClassName = properties.getProperty("db.driverClassName");
            Class.forName(dbDriverClassName);
            this.connection = DriverManager.getConnection(dbUrl,
                    dbUsername, dbPassword);
        } catch (IOException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public static DatabaseConnection getInstanceToGetConnection() {
        try {
            if (databaseConnectionInstance == null) {
                databaseConnectionInstance = new DatabaseConnection();
            } else {
                if (databaseConnectionInstance.getConnection().isClosed()) {
                    databaseConnectionInstance = new DatabaseConnection();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return databaseConnectionInstance;
    }
}
