<%@ page import="java.util.*, com.am.model.book" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            min-height: 100vh;
            background: #001f3f; /* Navy background */
        }

        .container {
            width: 90%;
            max-width: 900px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            color: #001f3f;
            margin-bottom: 20px;
        }

        p {
            text-align: center;
            margin-bottom: 20px;
        }

        a {
            text-decoration: none;
            font-weight: bold;
            color: #003366;
            margin: 0 10px;
            transition: all 0.3s ease;
        }

        a:hover {
            text-decoration: underline;
            color: #001f3f;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th, td {
            padding: 12px 10px;
            border: 1px solid #001f3f55;
            text-align: center;
        }

        th {
            background: #001f3f; /* Navy header */
            color: white;
        }

        tr:nth-child(even) {
            background: #f2f2f2; /* Light grey */
        }

        tr:hover {
            background: #e6f0ff; /* Soft light blue */
        }

        .action-links a {
            margin: 0 5px;
            color: #003366;
        }

        .action-links a:hover {
            color: #001f3f;
        }
    </style>
</head>

<body>
<div class="container">
    <h2>Books</h2>

    <p>
        <a href="BookServlet?action=new">Add New Book</a> |
        <a href="logout">Logout</a>
    </p>

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Category</th>
            <th>Qty</th>
            <th>Actions</th>
        </tr>

        <%
            List<book> list = (List<book>) request.getAttribute("listBook");
            if (list != null) {
                for (book b : list) {
        %>

        <tr>
            <td><%= b.getId() %></td>
            <td><%= b.getTitle() %></td>
            <td><%= b.getAuthor() %></td>
            <td><%= b.getCategory() %></td>
            <td><%= b.getQuantity() %></td>
            <td class="action-links">
                <a href="BookServlet?action=edit&id=<%=b.getId()%>">Edit</a>
                <a href="BookServlet?action=delete&id=<%=b.getId()%>" onclick="return confirm('Delete?')">Delete</a>
            </td>
        </tr>

        <%
                }
            }
        %>

    </table>
</div>
</body>
</html>

