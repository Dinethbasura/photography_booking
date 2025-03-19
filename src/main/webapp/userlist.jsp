<%@ page import="com.photogenix.model.User" %>
<%@ page import="com.photogenix.service.UserService" %>
<%@ page import="java.util.List" %>
<%
  UserService userService = new UserService();
  List<User> users = userService.getAllUsers(request);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>User List - PHOTOGENIX Admin</title>
  <link rel="stylesheet" href="style.css">
  <style>
    body {
      margin: 0;
      font-family: "Chakra Petch", sans-serif;
      background-color: var(--black);
      display: flex;
    }
    .sidebar {
      width: 220px;
      background-color: var(--darkgray);
      height: 100vh;
      position: fixed;
      padding: 2rem 1rem;
    }
    .sidebar a {
      display: block;
      color: var(--white);
      padding: 0.8rem 1rem;
      text-decoration: none;
      margin-bottom: 1rem;
      border-radius: 8px;
      transition: 0.3s;
    }
    .sidebar a:hover {
      background-color: var(--lightgray);
      color: var(--black);
    }
    .content {
      margin-left: 220px;
      padding: 2rem;
      width: calc(100% - 220px);
      color: var(--white);
    }
    h1 {
      margin-bottom: 1rem;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 2rem;
      background-color: var(--darkgray);
      border-radius: 10px;
    }
    th, td {
      padding: 1rem;
      border-bottom: 1px solid var(--gray);
      text-align: left;
    }
    th {
      background-color: var(--dark);
    }
    tr:hover {
      background-color: var(--lightgray);
      color: var(--black);
    }
    button.delete-btn {
      background: red;
      color: white;
      padding: 5px 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button.delete-btn:hover {
      background-color: darkred;
    }
  </style>
</head>
<body>
<div class="sidebar">
  <h3>Admin Panel</h3>
  <a href="admin.jsp">Dashboard</a>
  <a href="userlist.jsp">User List</a>
  <a href="photographer.jsp">Photographers</a>
  <a href="booking.jsp">Bookings</a>
  <a href="review.jsp">Reviews</a>
  <a href="logout">Logout</a>
</div>

<div class="content">
  <h1>Registered Users</h1>
  <table>
    <thead>
    <tr>
      <th>Username</th>
      <th>Email</th>
      <th>Role</th>
      <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <% for (User user : users) { %>
    <tr>
      <td><%= user.getUsername() %></td>
      <td><%= user.getEmail() %></td>
      <td><%= user.isAdmin() ? "Admin" : "User" %></td>
      <td>
        <form action="user" method="post" style="display:inline;">
          <input type="hidden" name="action" value="delete">
          <input type="hidden" name="username" value="<%= user.getUsername() %>">
          <button type="submit" class="delete-btn" onclick="return confirm('Are you sure you want to delete this user?');">Delete</button>
        </form>
      </td>
    </tr>
    <% } %>
    </tbody>
  </table>
</div>
</body>
</html>