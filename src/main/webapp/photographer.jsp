<%@ page import="com.photogenix.model.Photographer" %>
<%@ page import="com.photogenix.service.PhotographerService" %>
<%@ page import="java.util.List" %>
<%
  PhotographerService photographerService = new PhotographerService();
  List<Photographer> photographers = photographerService.getPhotographers(request);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Photographer Management - PHOTOGENIX</title>
  <link rel="stylesheet" href="style.css">
  <style>
    body {
      margin: 0;
      font-family: "Chakra Petch", sans-serif;
      background-color: var(--black);
      color: var(--white);
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
    }
    h2, h3 {
      margin-bottom: 1rem;
    }
    form {
      margin-bottom: 3rem;
      background-color: var(--darkgray);
      padding: 1.5rem;
      border-radius: 12px;
    }
    input[type="text"], input[type="submit"] {
      width: 100%;
      padding: 0.7rem;
      margin-bottom: 1rem;
      border-radius: 6px;
      border: none;
    }
    input[type="submit"] {
      background-color: var(--white);
      color: var(--black);
      font-weight: bold;
      cursor: pointer;
      transition: 0.3s;
    }
    input[type="submit"]:hover {
      background-color: var(--lightgray);
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
    }
    th {
      background-color: var(--dark);
    }
    tr:hover {
      background-color: var(--lightgray);
      color: var(--black);
    }
    .delete-form {
      display: inline;
    }
    .delete-form button {
      background: red;
      color: white;
      border: none;
      padding: 5px 10px;
      border-radius: 5px;
      cursor: pointer;
    }
    .delete-form button:hover {
      background-color: darkred;
    }
  </style>
</head>
<body>
<div class="sidebar">
  <h3>Admin Menu</h3>
  <a href="admin.jsp">Dashboard</a>
  <a href="photographer.jsp">Photographers</a>
  <a href="booking.jsp">Bookings</a>
  <a href="review.jsp">Reviews</a>
  <a href="logout">Logout</a>
</div>

<div class="content">
  <h2>Manage Photographers</h2>
  <form action="photographer" method="post">
    <input type="hidden" name="action" value="add">
    <label>Name:</label>
    <input type="text" name="name" required>
    <label>Specialization:</label>
    <input type="text" name="specialization" required>
    <label>Contact Info:</label>
    <input type="text" name="contactInfo" required>
    <input type="submit" value="Add Photographer">
  </form>

  <h3>Current Photographers</h3>
  <table>
    <thead>
    <tr>
      <th>Name</th>
      <th>Specialization</th>
      <th>Contact Info</th>
      <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <% for (Photographer photographer : photographers) { %>
    <tr>
      <td><%= photographer.getName() %></td>
      <td><%= photographer.getSpecialization() %></td>
      <td><%= photographer.getContactInfo() %></td>
      <td>
        <form action="photographer" method="post" class="delete-form">
          <input type="hidden" name="action" value="delete">
          <input type="hidden" name="name" value="<%= photographer.getName() %>">
          <button type="submit">Delete</button>
        </form>
      </td>
    </tr>
    <% } %>
    </tbody>
  </table>
</div>
</body>
</html>