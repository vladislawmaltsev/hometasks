package dao;

import entities.Delivery;
import entities.Product;
import lombok.SneakyThrows;
import utils.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements CrudDao<Product> {


    private Connection connection;

    public ProductDao() {
        DatabaseConnection databaseConnection = DatabaseConnection.getInstanceToGetConnection();
        connection = databaseConnection.getConnection();
    }

    RowMapper<Product> productRowMapper = new RowMapper<Product>(){
        @Override
        @SneakyThrows
        public Product rowMap(ResultSet resultSet) throws SQLException {
            return Product.builder()
                    .title(resultSet.getString("title"))
                    .build();
        }
    };

    @SneakyThrows
    public Product selectProduct(String title) {
        String selectTitle = "SELECT * FROM product WHERE title = ?";
        PreparedStatement statement = connection.prepareStatement(selectTitle);
        statement.setString(1, title);


        ResultSet resultSet = statement.executeQuery();
        if(resultSet.next()) {
            return productRowMapper.rowMap(resultSet);
        }

        return null;
    }

    @Override
    public Product find(Integer id) {
        return null;
    }

    @Override
    public void save(Product model) {

    }

    @Override
    public void update(Product model) {

    }

    @Override
    public void delete(Integer id) {

    }

    @Override
    @SneakyThrows
    public List<Product> findAll() {
        String selectAll = "SELECT * FROM product";
        PreparedStatement preparedStatement = connection.prepareStatement(selectAll);

        ResultSet resultSet = preparedStatement.executeQuery();
        List<Product> products = new ArrayList<>();

        while(resultSet.next()) {
            products.add(productRowMapper.rowMap(resultSet));
        }
        return products;
    }
}
