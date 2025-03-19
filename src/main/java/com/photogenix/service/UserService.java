package com.photogenix.service;

import com.photogenix.model.User;
import com.photogenix.util.FileUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    private String getFilePath(HttpServletRequest request) {
        return request.getServletContext().getRealPath("/WEB-INF/users.txt");
    }

    public void registerUser(User user, HttpServletRequest request) throws IOException {
        String userData = user.getUsername() + "," + user.getPassword() + "," + user.getEmail() + "," + user.isAdmin();
        FileUtil.appendToFile(getFilePath(request), userData);
    }

    public User loginUser(String username, String password, HttpServletRequest request) throws IOException {
        List<String> lines = FileUtil.readFile(getFilePath(request));
        for (String line : lines) {
            String[] parts = line.split(",");
            if (parts[0].equals(username) && parts[1].equals(password)) {
                User user = new User();
                user.setUsername(parts[0]);
                user.setPassword(parts[1]);
                user.setEmail(parts[2]);
                user.setAdmin(Boolean.parseBoolean(parts[3]));
                return user;
            }
        }
        return null;
    }

    public void deleteUser(String username, HttpServletRequest request) throws IOException {
        List<String> lines = FileUtil.readFile(getFilePath(request));
        lines.removeIf(line -> line.startsWith(username + ","));
        FileUtil.writeToFile(getFilePath(request), lines);
    }

    public List<User> getAllUsers(HttpServletRequest request) throws IOException {
        List<User> userList = new ArrayList<>();
        List<String> lines = FileUtil.readFile(getFilePath(request));

        for (String line : lines) {
            String[] parts = line.split(",");
            if (parts.length >= 4) {
                User user = new User();
                user.setUsername(parts[0]);
                user.setPassword(parts[1]); // Not shown but loaded for completeness
                user.setEmail(parts[2]);
                user.setAdmin(Boolean.parseBoolean(parts[3]));
                userList.add(user);
            }
        }
        return userList;
    }
}