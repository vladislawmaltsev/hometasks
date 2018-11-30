package dao;
import entities.Delivery;

public interface DeliveryDao extends CrudDao<Delivery> {
    Delivery findByCountryTo(String country_to);
    Delivery findByCustomer(String customer);

}
