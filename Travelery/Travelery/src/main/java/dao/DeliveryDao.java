package dao;
import entities.Delivery;

import java.util.List;

public interface DeliveryDao extends CrudDao<Delivery> {
    Delivery findByCountryTo(String country_to);
    Delivery findByCustomer(String customer);
    List<Delivery> findAllByUser(String username);

    void saveOrder(Delivery delivery);
}
