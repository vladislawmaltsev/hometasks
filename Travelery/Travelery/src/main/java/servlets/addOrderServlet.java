package servlets;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import dao.DeliveryDaoJdbcImpl;
import dao.ProductDao;
import entities.Delivery;
import entities.Product;
import entities.User;
import lombok.SneakyThrows;
import org.json.JSONObject;
import services.UserService;
import sun.awt.geom.AreaOp;

@WebServlet("/order")
public class addOrderServlet extends HttpServlet {
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
        List<Product> productList = productDao.findAll();
        req.setAttribute("products", productList);
        req.getRequestDispatcher("/WEB-INF/views/addOrder.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = (User) req.getSession().getAttribute("user");
        String productTitle = req.getParameter("product");
        System.out.println(productTitle);
        Product product = productDao.selectProduct(productTitle.trim());
        Delivery delivery = Delivery.builder()
                .country_to(req.getParameter("country_to"))
                .country_from(req.getParameter("country_from"))
                .product(product)
                .customer(user)
                .build();
        System.out.println(delivery);
        deliveryDaoJdbc.saveOrder(delivery);

        resp.sendRedirect("/home");
    }
}
