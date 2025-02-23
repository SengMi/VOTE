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
import dao.CandidateDAO;
import dao.UserDAO;
import entity.User;

@MultipartConfig
public class addVote extends HttpServlet {
    private static final long serialVersionUID = 1L;

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String candidate = request.getParameter("Candidates").trim();
        String voter = request.getParameter("voter");

        System.out.println(candidate);

        try {
            CandidateDAO candidateDAO = new CandidateDAO(DBConnect.getConn());
            UserDAO userDAO = new UserDAO(DBConnect.getConn());

            User user = userDAO.getVoterByEmail(voter);
            System.out.println(user);

            if ("Voted".equals(user.getStatus())) {
                Cookie candidateNotAdded = new Cookie("candidateNotAdded", "candidateNotAdded");
                candidateNotAdded.setMaxAge(10);
                response.addCookie(candidateNotAdded);
                response.sendRedirect("voterhome.jsp");
            } else {
                if (candidateDAO.addCandidate(candidate) > 0 && userDAO.updateUser(voter) > 0) {
                    Cookie candidateAdded = new Cookie("candidateAdded", "candidateAdded");
                    candidateAdded.setMaxAge(10);
                    response.addCookie(candidateAdded);
                    response.sendRedirect("voterhome.jsp");
                } else {
                    Cookie candidateNotAdded = new Cookie("candidateNotAdded", "candidateNotAdded");
                    candidateNotAdded.setMaxAge(10);
                    response.addCookie(candidateNotAdded);
                    response.sendRedirect("voterhome.jsp");
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
}
