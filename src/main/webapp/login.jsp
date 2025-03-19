<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - PHOTOGENIX</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: var(--black);
        }
        .form-container {
            background-color: var(--darkgray);
            padding: 3rem;
            border-radius: 15px;
            width: 400px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.05);
        }
        .form-container h2 {
            text-align: center;
            color: var(--white);
            margin-bottom: 2rem;
        }
        .form-container label {
            color: var(--lightgray);
            display: block;
            margin-bottom: 0.5rem;
        }
        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 0.7rem;
            margin-bottom: 1.5rem;
            background-color: var(--dark);
            border: none;
            border-radius: 8px;
            color: var(--white);
        }
        .form-container input[type="submit"] {
            width: 100%;
            padding: 0.8rem;
            background-color: var(--white);
            color: var(--black);
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }
        .form-container input[type="submit"]:hover {
            background-color: var(--lightgray);
        }
        .form-container p {
            text-align: center;
            color: var(--lightgray);
            margin-top: 1rem;
        }
        .form-container p a {
            color: var(--white);
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Login</h2>
    <form action="login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Login">
    </form>
    <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
</div>
</body>
</html>