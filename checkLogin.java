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

@MultipartConfig
public class checkLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public checkLogin() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle GET requests here (if needed)
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email").trim();
        String password = request.getParameter("password").trim();

        User user = new User();
        user.setEmail(email);
        user.setPassword(password);

        try {
            UserDAO dao = new UserDAO(DBConnect.getConn());

            if (dao.checkadmin(user)) {
                Cookie admin = new Cookie("admin", email);
                admin.setMaxAge(9999);
                response.addCookie(admin);
                response.sendRedirect("adminhome.jsp");
            } else if (dao.checkVoter(user)) {
                Cookie voter = new Cookie("voter", email);
                voter.setMaxAge(9999);
                response.addCookie(voter);
                response.sendRedirect("voterhome.jsp");
            } else {
                Cookie loginFailed = new Cookie("loginFailed", "loginFailed");
                loginFailed.setMaxAge(10);
                response.addCookie(loginFailed);
                response.sendRedirect("login.jsp");
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}
