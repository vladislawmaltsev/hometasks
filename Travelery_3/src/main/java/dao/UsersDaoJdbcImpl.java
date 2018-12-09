package dao;

import entities.User;
import lombok.SneakyThrows;
import utils.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UsersDaoJdbcImpl implements UsersDao {
    //language=sql
    private final String SQL_SELECT_ALL = "SELECT * FROM userreg";
    //language=sql
    private final String SQL_SELECT_BY_EMAIL = "SELECT * FROM userreg WHERE email = ?";
    //language=sql
    private final String SQL_SELECT_ID_BY_USERNAME = "SELECT id FROM userreg WHERE username = ?";
    //language=sql
    private final String SQL_SELECT_BY_USERNAME = "SELECT * FROM userreg WHERE username = ?";
    //language=sql
    private final String SQL_SELECT_BY_TOKEN = "SELECT * FROM userreg WHERE token = ?";
    //language=sql
    private final String SQL_SELECT_BY_ID = "SELECT * FROM userreg WHERE id = ?";
    //language=sql
    private final String SQL_INSERT = "INSERT INTO userreg(email, username, password, gender, birthdate) VALUES (?,?,?,?,?)";
    //language=sql
    private final String SQL_UPDATE = "UPDATE userreg SET password = ?, gender = ?, birthdate = ?, email = ?, token = ? WHERE username = ?";
    //language=sql
    private final String SQL_DELETE = "DELETE FROM userreg WHERE id = ?";

    private Connection connection;

    public UsersDaoJdbcImpl() {
        DatabaseConnection databaseConnection = DatabaseConnection.getInstanceToGetConnection();
        connection = databaseConnection.getConnection();
    }

    @Override
    public User findByEmail(String email) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SQL_SELECT_BY_EMAIL);
            preparedStatement.setString(1, email);
            preparedStatement.execute();

            ResultSet resultSet = preparedStatement.getResultSet();

            if (resultSet.next()) {
                String password = resultSet.getString("password");
                String username = resultSet.getString("username");
                boolean gender = resultSet.getBoolean("gender");
                Date birthdate = resultSet.getDate("birthdate");
                return new User(username, email, password, gender, birthdate);
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new IllegalStateException();
        }
    }

    @Override
    public User findByUsername(String username) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_SELECT_BY_USERNAME);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                Boolean gender = resultSet.getBoolean("gender");
                Date birthdate = resultSet.getDate("birthdate");
                return new User(username, email, password, gender, birthdate);
            } else return null;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new IllegalStateException();
        }
    }

    @Override
    public User findByToken(String token) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_SELECT_BY_TOKEN);
            statement.setString(1, token);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                boolean gender = resultSet.getBoolean("gender");
                Date birthdate = resultSet.getDate("birthdate");
                return new User(username, email, password, gender, birthdate);
            } else return null;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new IllegalStateException();
        }
    }
    @SneakyThrows
    public int findIdByUsername(String username)  {
            PreparedStatement statement = connection.prepareStatement(SQL_SELECT_ID_BY_USERNAME);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("id");
            } else return 0;
    }

    @Override
    public User find(Integer id) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_SELECT_BY_ID);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                Boolean gender = resultSet.getBoolean("gender");
                Date birthdate = resultSet.getDate("birthdate");
                return new User(username, email, password, gender, birthdate);
            } else return null;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new IllegalStateException();
        }
    }

    @Override
    public void save(User model) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_INSERT);
            statement.setString(1, model.getEmail());
            statement.setString(2, model.getUsername());
            statement.setString(3, model.getPassword());
            statement.setBoolean(4, model.isGender());
            statement.setDate(5, new java.sql.Date(model.getBirthday().getTime()));
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(User model) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_UPDATE);
            statement.setString(1, model.getPassword());
            statement.setBoolean(2, model.isGender());
            statement.setDate(3, new java.sql.Date(model.getBirthday().getTime()));
            statement.setString(4, model.getEmail());
            statement.setString(5, model.getToken());
            statement.setString(6,model.getUsername());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(Integer id) {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_DELETE);
            statement.setInt(1, id);
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL_SELECT_ALL);
            while (resultSet.next()) {
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                Boolean gender = resultSet.getBoolean("gender");
                Date birthdate = resultSet.getDate("birthdate");
                User user = new User(username, email, password, gender, birthdate);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
}
