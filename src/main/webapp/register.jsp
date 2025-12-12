<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>

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

        .register-container {
            background: white;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #001f3f; /* Navy Blue */
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input[type="text"],
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
            background: #001f3f; /* Navy button */
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #003366; /* lighter navy hover */
        }

        p {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #001f3f;
        }

        a {
            color: #003366;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="register-container">
    <h2>Register</h2>
    <form action="userServlet" method="post">
        <input type="hidden" name="action" value="register" />
        Name: <input type="text" name="name" required />
        Email: <input type="email" name="email" required />
        Password: <input type="password" name="password" required />
        <input type="submit" value="Register"/>
    </form>
    <p>Already have an account? <a href="login.jsp">Login</a></p>
</div>
</body>
</html>
