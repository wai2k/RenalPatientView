package com.worthsoln.tomcat;

import java.security.Principal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.apache.catalina.realm.DataSourceRealm;

public class LockOutRealm extends DataSourceRealm {

    private String failedLogonsCol;
    private String accountLockedCol;
    private int allowedFailedLogons;

    public synchronized Principal authenticate(String username, String password) {
        // First off need to check number of failed logins
        int failedLogins = getFailedLogins(username);
        if (failedLogins >= allowedFailedLogons) {
            // Update the locked out value to true
            updateUser("UPDATE " + getUserTable() + " SET " + accountLockedCol + " = 1 WHERE " + getUserNameCol() +
                    " = '" + username + "'");
            return null;
        }
        Principal user = super.authenticate(username, password);
        if (user != null) {
            // Best to update their failed logins to 0 just incase
            updateUser(
                    "UPDATE " + getUserTable() + " SET " + failedLogonsCol + " = 0 WHERE " + getUserNameCol() + " = '" +
                            username + "'");
        } else {
            // Principal is null so failed login
            updateUser(
                    "UPDATE " + getUserTable() + " SET " + failedLogonsCol + " = " + failedLogonsCol + " + 1 WHERE " +
                            getUserNameCol() + " = '" + username + "'");
        }
        return user;
    }

    private int getFailedLogins(String username) {
        int failedLogins = 0;
        Connection conn = null;
        try {
            conn = open();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(
                    "SELECT " + failedLogonsCol + " FROM " + getUserTable() + " WHERE " + getUserNameCol() + " = '" +
                            username + "'");
            while (rs.next()) {
                failedLogins = rs.getInt(failedLogonsCol);
            }
            stmt.close();
        } catch (SQLException e) {
            System.err.println("LockOutRealm: Error getting failed logins for " + username + " - " + e.getMessage());
            e.printStackTrace();
        } finally {
            close(conn);
        }
        return failedLogins;
    }

    private void updateUser(String sql) {
        Connection conn = null;
        try {
            conn = open();
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            stmt.close();
        } catch (SQLException e) {
            System.err.println("LockOutRealm: Error updating user - " + e.getMessage());
            e.printStackTrace();
        } finally {
            close(conn);
        }
    }

    public String getFailedLogonsCol() {
        return failedLogonsCol;
    }

    public void setFailedLogonsCol(String failedLogonsCol) {
        this.failedLogonsCol = failedLogonsCol;
    }

    public String getAccountLockedCol() {
        return accountLockedCol;
    }

    public void setAccountLockedCol(String accountLockedCol) {
        this.accountLockedCol = accountLockedCol;
    }

    public int getAllowedFailedLogons() {
        return allowedFailedLogons;
    }

    public void setAllowedFailedLogons(int allowedFailedLogons) {
        this.allowedFailedLogons = allowedFailedLogons;
    }
}