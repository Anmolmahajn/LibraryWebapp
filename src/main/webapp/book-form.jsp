<%@ page import="com.am.model.book" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Form</title>

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
            background: #001f3f; /* Navy Blue */
        }

        .form-container {
            background: white;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #001f3f;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: 500;
            color: #001f3f;
        }

        input[type="text"],
        input[type="number"] {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 10px;
            border: 1px solid #001f3f;  /* Navy border */
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"] {
            padding: 12px;
            border: none;
            border-radius: 10px;
            background: #001f3f;  /* Navy button */
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #003366; /* Lighter navy */
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
<div class="form-container">
    <%
        book book = (book) request.getAttribute("book");
        boolean isEdit = (book != null);
    %>

    <h2><%= isEdit ? "Edit Book" : "Add New Book" %></h2>

    <form action="BookServlet" method="post">
        <input type="hidden" name="action" value="<%= isEdit ? "update" : "insert" %>"/>

        <% if (isEdit) { %>
        <input type="hidden" name="id" value="<%= book.getId() %>"/>
        <% } %>

        <label>Title:</label>
        <input type="text" name="title" value="<%= isEdit ? book.getTitle() : "" %>" required />

        <label>Author:</label>
        <input type="text" name="author" value="<%= isEdit ? book.getAuthor() : "" %>" required />

        <label>Category:</label>
        <input type="text" name="category" value="<%= isEdit ? book.getCategory() : "" %>"/>

        <label>Quantity:</label>
        <input type="number" name="quantity" value="<%= isEdit ? book.getQuantity() : 1 %>" min="0" required />

        <input type="submit" value="<%= isEdit ? "Update" : "Add" %>" />
    </form>

    <p><a href="BookServlet?action=list">Back to list</a></p>
</div>
</body>
</html>
