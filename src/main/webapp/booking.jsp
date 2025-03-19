<%@ page import="com.photogenix.model.Booking" %>
<%@ page import="com.photogenix.service.BookingService" %>
<%@ page import="java.util.List" %>
<%
    BookingService bookingService = new BookingService();
    List<Booking> bookings = bookingService.getAllBookings(request);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Management - PHOTOGENIX</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            margin: 0;
            font-family: "Chakra Petch", sans-serif;
            background-color: var(--black);
            display: flex;
            color: var(--white);
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
            background-color: var(--darkgray);
            padding: 1.5rem;
            border-radius: 12px;
            margin-bottom: 2rem;
        }
        input[type="text"], input[type="submit"], select {
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
            background-color: var(--darkgray);
            border-radius: 10px;
            margin-top: 1rem;
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
        .update-form {
            display: inline;
        }
        .update-form select, .update-form button {
            width: auto;
            margin: 0 4px;
        }
        .update-form button {
            background: green;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .update-form button:hover {
            background-color: darkgreen;
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
    <h2>Booking Management</h2>
    <form action="booking" method="post">
        <input type="hidden" name="action" value="create">
        <label>Event Details:</label>
        <input type="text" name="eventDetails" required>
        <label>Photographer:</label>
        <input type="text" name="photographer" required>
        <label>User:</label>
        <input type="text" name="user" required>
        <label>Status:</label>
        <input type="text" name="status" placeholder="Pending/Confirmed/Completed" required>
        <input type="submit" value="Create Booking">
    </form>

    <h3>Current Bookings</h3>
    <table>
        <thead>
        <tr>
            <th>Event Details</th>
            <th>Photographer</th>
            <th>User</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <% for (Booking booking : bookings) { %>
        <tr>
            <td><%= booking.getEventDetails() %></td>
            <td><%= booking.getPhotographer() %></td>
            <td><%= booking.getUser() %></td>
            <td><%= booking.getStatus() %></td>
            <td>
                <form action="booking" method="post" class="update-form">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="eventDetails" value="<%= booking.getEventDetails() %>">
                    <select name="status">
                        <option>Pending</option>
                        <option>Confirmed</option>
                        <option>Completed</option>
                    </select>
                    <button type="submit">Update</button>
                </form>
                <form action="booking" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="eventDetails" value="<%= booking.getEventDetails() %>">
                    <button type="submit" class="delete-btn" onclick="return confirm('Delete this booking?');">Delete</button>
                </form>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>