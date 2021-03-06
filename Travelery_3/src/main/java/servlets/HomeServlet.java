package servlets;

import utils.Helper;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class HomeServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Helper.checkSession(req);
        RequestDispatcher requestDispatcher = req.getServletContext().getRequestDispatcher("/views/index.jsp");
        requestDispatcher.forward(req,resp);
    }
}