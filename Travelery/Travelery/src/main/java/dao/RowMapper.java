package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface RowMapper<T> {
    T rowMap(ResultSet resultSet) throws SQLException;
}
