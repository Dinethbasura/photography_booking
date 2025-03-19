package com.photogenix.servlet;

import com.photogenix.model.User;
import com.photogenix.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userService.loginUser(username, password, request);
        if (user != null) {
            request.getSession().setAttribute("user", user);
            if (user.isAdmin()) {
                response.sendRedirect("admin.jsp");
            } else {
                response.sendRedirect("userDashboard.jsp");
            }
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }
}