<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #001f3f; /* Navy Blue Background */
        }

        .login-container {
            background: white;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #001f3f; /* Navy Blue Text */
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input[type="email"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 10px;
            border: 1px solid #001f3f; /* Navy border */
            font-size: 16px;
        }

        input[type="submit"] {
            padding: 12px;
            border: none;
            border-radius: 10px;
            background: #001f3f; /* Navy Button */
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #003366; /* lighter navy on hover */
        }

        p {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #001f3f;
        }

        a {
            color: #003366; /* navy link */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="userServlet" method="post">
        <input type="hidden" name="action" value="login" />
        Email: <input type="email" name="email" required />
        Password: <input type="password" name="password" required />
        <input type="submit" value="Login"/>
    </form>
    <p>Don't have an account? <a href="register.jsp">Register</a></p>
</div>
</body>
</html>
