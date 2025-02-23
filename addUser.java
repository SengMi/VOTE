package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import conn.DBConnect;
import dao.UserDAO;
import entity.User;

@WebServlet("/addUser") // URL pattern to access the servlet
@MultipartConfig
public class addUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public addUser() {
        // Default constructor
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle GET requests here (if needed)
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name").trim();
        String password = request.getParameter("password").trim();
        String email = request.getParameter("email").trim();
        String phone = request.getParameter("phone").trim();

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhone((phone));

        try {
            UserDAO dao = new UserDAO(DBConnect.getConn());

            if (dao.checkVoter2(user)) {
                Cookie userNotAdded = new Cookie("userNotAdded", "userNotAdded");
                userNotAdded.setMaxAge(10);
                response.addCookie(userNotAdded);
                response.sendRedirect("register.jsp");
            } else {
                if (dao.addVoter(user) > 0) {
                    Cookie userAdded = new Cookie("userAdded", "userAdded");
                    userAdded.setMaxAge(10);
                    response.addCookie(userAdded);
                    response.sendRedirect("register.jsp");
                } else {
                    Cookie userNotAdded = new Cookie("userNotAdded", "userNotAdded");
                    userNotAdded.setMaxAge(10);
                    response.addCookie(userNotAdded);
                    response.sendRedirect("register.jsp");
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
}
