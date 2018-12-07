package dao;

import org.junit.Test;

import static org.junit.Assert.*;

public class DeliveryDaoJdbcImplTest {

    @Test
    public void findAll(){
        DeliveryDaoJdbcImpl deliveryDaoJdbc = new DeliveryDaoJdbcImpl();
        System.out.println(deliveryDaoJdbc.findAll());
//        System.out.println(deliveryDaoJdbc.findAllByUser("drieddill"));
    }
}