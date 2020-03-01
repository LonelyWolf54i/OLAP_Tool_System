package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.CallableStatement;

public class daoEvento {

    public daoEvento() {
    }

    public void insert(Connection con) throws SQLException, ClassNotFoundException {
        String sql = "EXEC administrar_evento ?,?,?,?,?,?";
        //PreparedStatement ps = con.prepareStatement(sql);
        CallableStatement cs = con.prepareCall(sql);
        /*
        ps.setInt(1, 0);
        ps.setString(2, "evento2");
        ps.setString(3, "2019-08-01 14:30");
        ps.setString(4, "2019-08-07 22:00");
        ps.setString(5, "A");
        ps.setString(6, "I");
        ps.execute();
         */
        cs.setInt(1, 0);
        cs.setString(2, "evento2");
        cs.setString(3, "2019-08-01 14:30");
        cs.setString(4, "2019-08-07 22:00");
        cs.setString(5, "A");
        cs.setString(6, "I");
        cs.execute();
    }
}
