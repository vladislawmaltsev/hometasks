package servlets;

import entities.User;
import org.json.JSONObject;
import services.UserService;
import utils.TokenGenerator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;


public class LoginServlet extends HttpServlet {

    private UserService userService = UserService.getUserServiceInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String rememberme = req.getParameter("rememberme");
        User user = userService.findByEmail(email);
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        JSONObject result = userService.validateLogin(email,password);
        if (result.toString().equals("{}")) {
            if (rememberme.equals("true")) {
                String token = new TokenGenerator(20).nextString();
                Cookie tokenCookie = new Cookie("token", token);
                tokenCookie.setMaxAge(60*60*24*365);
                resp.addCookie(tokenCookie);
                user.setToken(token);
                userService.update(user);
            }
            result.put("url", "profile");
            HttpSession session = req.getSession();
            session.setMaxInactiveInterval(60*60*2);
            session.setAttribute("user", user);
            session.setAttribute("username",user.getUsername());
        }
        Writer pw = resp.getWriter();
        pw.write(result.toString());
        pw.close();
    }
}
