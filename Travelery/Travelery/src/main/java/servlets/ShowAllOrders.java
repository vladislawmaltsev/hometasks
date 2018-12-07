package servlets;

import dao.DeliveryDaoJdbcImpl;
import dao.ProductDao;
import lombok.SneakyThrows;
import services.UserService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/show")
public class ShowAllOrders extends HttpServlet {

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
    @SneakyThrows
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("orders", deliveryDaoJdbc.findAll());
        req.getRequestDispatcher("/WEB-INF/views/allOrder.jsp").forward(req,resp);
    }

}
