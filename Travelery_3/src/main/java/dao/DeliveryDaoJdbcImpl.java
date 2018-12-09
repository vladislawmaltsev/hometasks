package dao;

import entities.Delivery;
import entities.Product;
import entities.User;
import lombok.SneakyThrows;
import utils.DatabaseConnection;

import java.beans.Customizer;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DeliveryDaoJdbcImpl implements DeliveryDao {

    //language=SQL
    private final String SQL_SELECT_ALL = "SELECT * FROM delivery";

    //language=SQL
    private final String SQL_SELECT_ALL_BY_USER = "SELECT * FROM delivery WHERE customer = ?";

    //language=sql
    private final String SQL_SELECT_BY_COUNTRY_TO = "SELECT * FROM delivery WHERE country_to = ?";
    //landuage=sql
    private final String SQL_SELECT_BY_PRODUCT = "SELECT * FROM delivery JOIN product ON delivery.product_title = product.title WHERE id = ?";
    //language=sql
    private final String SQL_SELECT_BY_COUNTRY_FROM = "SELECT * FROM delivery WHERE country_from  = ?";
    //language=sql
    private final String SQL_SELECT_BY_CUSTOMER = "SELECT * FROM delivery WHERE customer = ?";
    //language=sql
//    private final String SQL_INSERT = "INSERT INTO delivery(product, country_from, country_to, customer) VALUES (?,?,?,?)";

    private final String SQL_INSERT = "INSERT INTO delivery(country_from, country_to, customer, product) VALUES (?,?,?,?)";
    //language=sql
    private final String SQL_UPDATE = "UPDATE delivery SET country_to = ?, country_from = ?, product = ? WHERE id = ?";
    //language=sql
    private final String SQL_DELETE = "DELETE FROM delivery WHERE id = ?";

    private final String SQL_GET_ARTICLE_BY_ID = "SELECT * FROM delivery WHERE id=?";

    private Connection connection;

    public DeliveryDaoJdbcImpl() {
        DatabaseConnection databaseConnection = DatabaseConnection.getInstanceToGetConnection();
        connection = databaseConnection.getConnection();
    }

    private Product product;
    private User customer = new User();
    private RowMapper rowMapper;


    @Override
    public Delivery findByCountryTo(String country_to) {
        return null;
    }

    @Override
    public Delivery findByCustomer(String customer) {
        return null;
    }


    @Override
    @SneakyThrows
    public List<Delivery> findAllByUser(String username) {
        PreparedStatement preparedStatement = connection.prepareStatement(SQL_SELECT_ALL_BY_USER);
        preparedStatement.setString(1, username);
        ResultSet resultSet = preparedStatement.executeQuery();
        List<Delivery> deliveries = new ArrayList<>();

        RowMapper<Delivery> rowMapper = new RowMapper<Delivery>(){
            @Override
            public Delivery rowMap(ResultSet resultSet) throws SQLException {

    //                User customer = User.builder()
    //                        .username(resultSet.getString("username"))
    //                        .build();
                Product product = Product.builder()
                        .title(resultSet.getString("product"))
                        .build();

                return Delivery.builder()
                        .id(resultSet.getInt("id"))
                        .country_to(resultSet.getString("country_to"))
                        .country_from(resultSet.getString("country_from"))
                        .product(product)
                        .build();
            }
        };

        while(resultSet.next()) {
            deliveries.add(rowMapper.rowMap(resultSet));
        }
        return deliveries;

    }


    @Override
    public Delivery find(Integer id) {
        return null;
    }

    @Override
    public void save(Delivery model) {

    }
    @SneakyThrows
    @Override
    public void saveOrder(Delivery delivery) {

            PreparedStatement statement = connection.prepareStatement(SQL_INSERT);
            statement.setString(1, delivery.getCountry_from());
            statement.setString(2, delivery.getCountry_to());
            statement.setString(3, delivery.getCustomer().getUsername());
            statement.setString(4, delivery.getProduct().getTitle());
            statement.executeUpdate();
    }

    @Override
    public void update(Delivery delivery) {
        try {
            PreparedStatement ps = connection.prepareStatement(SQL_UPDATE);
//            ps.setLong(4,id);
            ps.setString(1, delivery.getCountry_to());
            ps.setString(2, delivery.getCountry_from());
            ps.setString(3, product.getTitle());
            System.err.println(delivery);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @SneakyThrows
    @Override
    public void delete(Integer id) {
            PreparedStatement preparedStatement = connection.prepareStatement(SQL_DELETE);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
    }


    @Override
    @SneakyThrows
    public List<Delivery> findAll() {

        PreparedStatement preparedStatement = connection.prepareStatement(SQL_SELECT_ALL);

        ResultSet resultSet = preparedStatement.executeQuery();
        List<Delivery> deliveries = new ArrayList<>();

        RowMapper<Delivery> rowMapper = new RowMapper<Delivery>(){
            @Override
            public Delivery rowMap(ResultSet resultSet) throws SQLException {
                Product product = Product.builder()
                        .title(resultSet.getString("product"))
                        .build();

                User customer = User.builder()
                        .username(resultSet.getString("customer"))
                        .build();


                return Delivery.builder()
                        .id(resultSet.getInt("id"))
                        .country_to(resultSet.getString("country_to"))
                        .country_from(resultSet.getString("country_from"))
                        .product(product)
                        .customer(customer)
                        .build();
            }
        };

        while(resultSet.next()) {
            deliveries.add(rowMapper.rowMap(resultSet));
        }
        return deliveries;
    }
}