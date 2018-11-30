package dao;

import entities.Delivery;
import entities.Product;
import entities.User;
import utils.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class DeliveryDaoJdbcImpl implements DeliveryDao {

    private final String SQL_SELECT_ALL = "SELECT * FROM delivery WHERE product = ?";
    //language=sql
    private final String SQL_SELECT_BY_COUNTRY_TO = "SELECT * FROM delivery WHERE country_to = ?";
    //landuage=sql
    private final String SQL_SELECT_BY_PRODUCT = "SELECT * FROM delivery JOIN product ON delivery.product_title = product.title WHERE id = ?";
    //language=sql
    private final String SQL_SELECT_BY_COUNTRY_FROM = "SELECT * FROM delivery WHERE country_from  = ?";
    //language=sql
    private final String SQL_SELECT_BY_CUSTOMER = "SELECT * FROM delivery WHERE customer = ?";
    //language=sql
    private final String SQL_INSERT = "INSERT INTO delivery(product, country_from, country_to, customer) VALUES (?,?,?,?)";
    //language=sql
    private final String SQL_UPDATE = "UPDATE delivery SET country_to = ?, country_from = ?, product = ? WHERE customer = ?";
    //language=sql
    private final String SQL_DELETE = "DELETE FROM delivery WHERE id = ?";

    private Connection connection;

    public DeliveryDaoJdbcImpl() {
        DatabaseConnection databaseConnection = DatabaseConnection.getInstanceToGetConnection();
        connection = databaseConnection.getConnection();
    }

    private Product product;
    private User customer;


    @Override
    public Delivery findByCountryTo(String country_to) {
        return null;
    }

    @Override
    public Delivery findByCustomer(String customer) {
        return null;
    }

    @Override
    public Delivery find(Integer id) {
        return null;
    }

    @Override
    public void save(Delivery delivery) {
        try {
            PreparedStatement ps;
            ps = connection.prepareStatement(SQL_INSERT);
            ps.setString(1, product.getTitle());
            ps.setString(2, delivery.getCountry_from());
            ps.setString(3, delivery.getCountry_to());
            ps.setString(4, customer.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void update(Delivery model) {

    }

    @Override
    public void delete(Integer id) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SQL_DELETE);
            preparedStatement.setInt(1, id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Delivery> findAll() {
        return null;
    }

//    @Override
//    public List<Delivery> findAll() {
//        try {
//            PreparedStatement ps = connection.prepareStatement(SQL_SELECT_ALL);
//            return findAll(ps.executeQuery());
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//    }


}
