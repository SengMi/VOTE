package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Candidate;

public class CandidateDAO {

    private Connection conn;

    public CandidateDAO(Connection conn) {
        this.conn = conn;
    }

    // View Candidates (View votes of candidates)
    public List<Candidate> getCandidates() {
        List<Candidate> list = new ArrayList<Candidate>();

        try {
            String sql = "SELECT * FROM Candidate";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Candidate cnd = new Candidate();
                cnd.setId(rs.getInt(1));
                cnd.setCandidate(rs.getString(2));
                cnd.setVotes(rs.getInt(3));

                list.add(cnd);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Add Candidates (do votes for candidates)
    public int addCandidate(String cnd) {

        int result = 0;
        try {
            String sql = "UPDATE Candidate SET votes = (votes + 1) WHERE candidate = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, cnd);

            result = ps.executeUpdate();
            if (result > 0) {
                result = 1;
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return result;
    }
}