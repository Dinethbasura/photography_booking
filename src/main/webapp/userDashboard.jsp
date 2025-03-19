<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>User Dashboard - PHOTOGENIX</title>
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
    .actions {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
    }
    .actions a {
      flex: 1 1 40%;
      background-color: var(--white);
      color: var(--black);
      padding: 1rem;
      border-radius: 10px;
      text-decoration: none;
      font-weight: bold;
      text-align: center;
      transition: all 0.3s;
    }
    .actions a:hover {
      background-color: var(--lightgray);
      transform: scale(1.02);
    }
  </style>
</head>
<body>
<div class="sidebar">
  <h2>PHOTOGENIX</h2>
  <a href="booking.jsp">Your Bookings</a>
  <a href="review.jsp">Submit a Review</a>
  <a href="logout">Logout</a>
</div>
<div class="content">
  <h1>Welcome, ${user.username}!</h1>
  <div class="actions">
    <a href="booking.jsp">Manage Your Bookings</a>
    <a href="review.jsp">Submit a Review</a>
  </div>
</div>
</body>
</html>