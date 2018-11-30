package dao;

import org.junit.Before;
import org.junit.Test;
import utils.DatabaseConnection;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class UsersDaoJdbcImplTest {
    private UsersDaoJdbcImpl usersDaoJdbc;

    @Before
    public void setUp() throws Exception {
//            DatabaseConnection databaseConnection = DatabaseConnection.getInstanceToGetConnection();
            usersDaoJdbc = new UsersDaoJdbcImpl();
    }

    @Test
    public void findAll() {
        System.out.println(usersDaoJdbc.findByEmail("dried.dill@gmail.com"));
    }
}