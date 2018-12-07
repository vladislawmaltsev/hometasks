package servlets;

import dao.DeliveryDaoJdbcImpl;
import dao.ProductDao;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class deleteOrder extends HttpServlet {

    private DeliveryDaoJdbcImpl deliveryDaoJdbc;
    private UserService userService;
    private ProductDao productDao;

    @Override
    public void init() throws ServletException {
        userService =  UserService.getUserServiceInstance();
        deliveryDaoJdbc = new DeliveryDaoJdbcImpl();
        productDao = new ProductDao();
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("order_id"));
        int id = Integer.valueOf(req.getParameter("order_id"));
        userService.deleteOrder(id);

        resp.sendRedirect("/show");
    }
}
