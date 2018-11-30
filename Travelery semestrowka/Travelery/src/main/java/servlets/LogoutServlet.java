package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;

public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if(session != null){
            session.invalidate();
            Cookie tokenCookie = Arrays.stream(req.getCookies()).filter(c -> c.getName().equals("token")).findAny().orElse(null);
            if (tokenCookie != null) {
                tokenCookie.setMaxAge(0);
                tokenCookie.setValue(null);
                resp.addCookie(tokenCookie);
            }
        }
        resp.sendRedirect(req.getContextPath() + "/home");
    }
}
