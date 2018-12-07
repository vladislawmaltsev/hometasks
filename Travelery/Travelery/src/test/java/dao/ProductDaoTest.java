package dao;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class ProductDaoTest {

    private ProductDao productDao;
    @Before
    public void setUp() throws Exception {
        productDao = new ProductDao();
    }

    @Test
    public void findAll() {
        System.out.println(productDao.findAll());
    }
}