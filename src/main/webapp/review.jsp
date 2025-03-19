<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Review Management - PHOTOGENIX</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Review Management</h2>
<form action="review" method="post">
  <input type="hidden" name="action" value="add">
  <label for="photographer">Photographer:</label>
  <input type="text" id="photographer" name="photographer" required><br><br>
  <label for="user">User:</label>
  <input type="text" id="user" name="user" required><br><br>
  <label for="comment">Comment:</label>
  <input type="text" id="comment" name="comment" required><br><br>
  <label for="rating">Rating:</label>
  <input type="number" id="rating" name="rating" required><br><br>
  <input type="submit" value="Add Review">
</form>
<h3>Reviews</h3>
<ul>
  <c:forEach var="review" items="${reviews}">
    <li>${review}</li>
  </c:forEach>
</ul>
</body>
</html>