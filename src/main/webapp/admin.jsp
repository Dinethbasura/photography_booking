!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard - PHOTOGENIX</title>
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
      box-shadow: 2px 0 5px rgba(255,255,255,0.05);
    }
    .sidebar h2 {
      color: var(--white);
      margin-bottom: 2rem;
      text-align: center;
    }
    .sidebar a {
      display: block;
      color: var(--white);
      padding: 0.8rem 1rem;
      text-decoration: none;
      margin-bottom: 1rem;
      border-radius: 8px;
      transition: background 0.3s;
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
    .content h1 {
      color: var(--white);
      margin-bottom: 2rem;
    }
    .cards {
      display: flex;
      gap: 1rem;
      margin-bottom: 2rem;
    }
    .card {
      flex: 1;
      background-color: var(--darkgray);
      padding: 1.5rem;
      border-radius: 10px;
      color: var(--white);
      text-align: center;
      box-shadow: 0 0 10px rgba(255,255,255,0.05);
    }
    .card h3 {
      margin-bottom: 0.5rem;
      font-size: 1.5rem;
    }
    .card p {
      font-size: 1.1rem;
      color: var(--lightgray);
    }
    .manage-links {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
    }
    .manage-links a {
      flex: 1 1 30%;
      text-align: center;
      background-color: var(--white);
      color: var(--black);
      padding: 1rem;
      text-decoration: none;
      border-radius: 10px;
      font-weight: bold;
      transition: all 0.3s;
    }
    .manage-links a:hover {
      background-color: var(--lightgray);
      transform: scale(1.03);
    }
  </style>
</head>
<body>
<div class="sidebar">
  <h2>PHOTOGENIX</h2>
  <a href="userlist.jsp">User List</a>
  <a href="photographer.jsp">Photographers</a>
  <a href="booking.jsp">Bookings</a>
  <a href="review.jsp">Reviews</a>
  <a href="logout">Logout</a>
</div>

<div class="content">
  <h1>Welcome, ${user.username}!</h1>

  <div class="cards">
    <div class="card">
      <h3>83</h3>
      <p>Registered Users</p>
    </div>
    <div class="card">
      <h3>135</h3>
      <p>Daily Visitors</p>
    </div>
    <div class="card">
      <h3>23</h3>
      <p>New Messages</p>
    </div>
    <div class="card">
      <h3>52</h3>
      <p>Active Subscribers</p>
    </div>
  </div>

  <div class="manage-links">
    <a href="photographer.jsp">Manage Photographers</a>
    <a href="booking.jsp">Manage Bookings</a>
    <a href="review.jsp">Manage Reviews</a>
  </div>
</div>
</body>
</html>