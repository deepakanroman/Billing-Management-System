<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
            background: #ff7f50;
            padding: 15px;
            border-radius: 10px;
            color: white;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
            text-align: left;
        }
        input, button {
            margin: 10px 0;
            padding: 8px;
            width: 100%;
        }
        button {
            background: #ff7f50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background: #ff6347;
        }
    </style>
</head>
<body>
    <h1>Add New Product</h1>
    <form action="saveProduct.jsp" method="post">
        <label>Product Name:</label>
        <input type="text" name="name" required><br>
        
        <label>Price:</label>
        <input type="text" name="price" required><br>

        <label>Stock:</label>
        <input type="number" name="stock" required><br>

        <button type="submit">Add Product</button>
    </form>

    <br><a href="products.jsp">Back to Product List</a>
</body>
</html>
