package services;

import dao.DeliveryDao;
import dao.DeliveryDaoJdbcImpl;
import entities.Delivery;
import entities.User;
import org.json.JSONObject;
import utils.FieldsRegValidator;
import utils.PasswordEncryptor;
import java.util.List;

public class DeliveryService {

    private static DeliveryService deliveryService;
    private DeliveryDao deliveryDao = new DeliveryDaoJdbcImpl();

    private DeliveryService() {

    }

    public static services.DeliveryService getDeliveryServiceInstance() {
        if (deliveryService == null) {
            deliveryService = new services.DeliveryService();
        }
        return deliveryService;
    }


//    public JSONObject save(Delivery delivery) {
//        FieldsRegValidator fieldsValidator = new FieldsRegValidator();
//        JSONObject resultValidation = fieldValidator.validate(user.getEmail(),
//                user.getPassword(), sdf.format(user.getBirthday()));
//        user.setPassword(PasswordEncryptor.hashPassword(user.getPassword()));
//        if (resultValidation.toString().equals("{}")) {
//            if (usersDao.findByEmail(user.getEmail()) != null) {
//                resultValidation.put("fieldError", "Email already exist in database!");
//            } else if (deliveryDao.findByCustomer() != null) {
//                resultValidation.put("fieldError", "User with this username already exist in database!");
//            } else {
//                deliveryDao.save(delivery);
//                resultValidation.put("url", "login");
//            }
//        }
//        return resultValidation;
//    }

//    public User findByEmail(String email) {
//        return usersDao.findByEmail(email);
//    }
//
//    public User findByToken(String token) {
//        return usersDao.findByToken(token);
//    }

//    public JSONObject validateLogin(String email, String password) {
//        JSONObject result = new JSONObject();
//        if (usersDao.findByEmail(email) == null) {
//            result.put("fieldError", "Email does not exist in database!");
//        } else if (!PasswordEncryptor.hashPassword(password).equals(usersDao.findByEmail(email).getPassword())) {
//            result.put("fieldError", "Password is wrong!");
//        }
//        return result;
//    }
//
//    public void update(Delivery delivery) {
//        deliveryDao.update(delivery);
//    }
//}
}