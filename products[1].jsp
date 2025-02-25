<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Catalog</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            background: #f0f8ff;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #4b79a1;
            background: linear-gradient(to right, #e6f7ff, #d0e8ff);
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            animation: fadeIn 2s ease-in-out;
        }

        p {
            font-size: 18px;
            color: #555555;
            margin-bottom: 30px;
        }

        label {
            font-size: 16px;
            color: #555555;
            margin-right: 10px;
        }

        input[type="text"] {
            padding: 8px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            margin-bottom: 15px;
            width: 250px;
        }

        button {
            font-size: 18px;
            color: white;
            background: #4b79a1;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            transition: background 0.3s, transform 0.3s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            cursor: pointer;
        }

        button:hover {
            background: #366992;
            transform: scale(1.05);
        }

        a {
            text-decoration: none;
            font-size: 20px;
            color: white;
            background: #4b79a1;
            padding: 10px 20px;
            border-radius: 8px;
            transition: background 0.3s, transform 0.3s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
            margin-top: 20px;
        }

        a:hover {
            background: #366992;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <h1>Product Catalog</h1>
    <p>List, add, and update products here.</p>
    
    <form action="addProduct.jsp" method="post">
        <label>Product Name:</label>
        <input type="text" name="productName" required><br>
        
        <label>Price:</label>
        <input type="text" name="price" required><br>
        
        <button type="submit">Add Product</button>
    </form>

    <a href="index.jsp">Back to Home</a>
</body>
</html>
