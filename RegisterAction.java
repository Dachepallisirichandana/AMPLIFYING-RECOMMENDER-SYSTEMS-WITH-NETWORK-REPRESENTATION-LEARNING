/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.sql.*;

@WebServlet("/RegisterAction")
@MultipartConfig(maxFileSize = 16177215)
public class RegisterAction extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/network";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String address=request.getParameter("address");
        String dob=request.getParameter("dob");
        String gender = request.getParameter("gender");
        InputStream inputStream = null;
        Part filePart = request.getPart("image");
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

           Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO user (username, password, email, mobile,address,dob,gender,image,status,id) values (?,?, ?, ?, ?,?,?,?,'Waiting',null)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, email); 
      statement.setString(4, mobile);
        statement.setString(5, address);
          statement.setString(6, dob);
            statement.setString(7, gender);
            
            

            if (inputStream != null) {
                statement.setBlob(8, inputStream);
            }

            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("image upload sucess");
                response.sendRedirect("User.jsp?reg=User Registration success");
            } else {
                response.sendRedirect("Register.jsp?reg=User Registration Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}