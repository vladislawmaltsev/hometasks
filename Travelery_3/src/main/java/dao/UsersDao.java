package dao;

import entities.User;

public interface UsersDao extends CrudDao<User> {
    User findByUsername(String username);
    User findByToken(String token);
    User findByEmail(String email);
}
