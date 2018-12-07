package utils;

import services.UserService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

public class Helper {
    public static void checkSession(HttpServletRequest req) {
        HttpSession session = req.getSession(false);
        Cookie tokenCookie = Arrays.stream(req.getCookies()).filter(c -> c.getName().equals("token")).findAny().orElse(null);
        if (session == null || session.getAttribute("username") == null) {
            if (tokenCookie != null) {
                session = req.getSession();
                UserService userService = UserService.getUserServiceInstance();
                String username = userService.findByToken(tokenCookie.getValue()).getUsername();
                session.setAttribute("username", username);
            }
        }
    }
}
