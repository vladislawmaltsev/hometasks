package servlets;

import entities.User;
import org.json.JSONObject;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class RegistrationServlet extends HttpServlet {

    UserService userService = UserService.getUserServiceInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/WEB-INF/views/registration.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String bDay = req.getParameter("bDay");
        boolean gender = req.getParameter("gender").equals("Male");
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        User user = null;
        try {
            user = new User(username, email, password, gender, sdf.parse(bDay));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        JSONObject errors = userService.save(user);
        if (errors.toString().equals("{}")) {
            errors.put("url","login");
        }
        Writer pw = resp.getWriter();
        pw.write(errors.toString());
        pw.close();
    }
}
