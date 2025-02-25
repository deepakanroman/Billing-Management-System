<%@page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Invoice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: linear-gradient(to right, #cce7ff, #f7f7f7);
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: white;
            background: #007bff;
            padding: 15px;
            border-radius: 10px;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
            margin-top: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input, select {
            padding: 8px;
            width: 80%;
            margin-top: 5px;
        }
        button {
            margin-top: 15px;
            padding: 10px 15px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background: #0056b3;
        }
        a {
            display: block;
            margin-top: 20px;
            color: white;
            background: #28a745;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <h1>Create Invoice</h1>
    <form action="processInvoice.jsp" method="post">
        <label>Customer ID:</label>
        <input type="text" name="customer_id" required>

        <label>Product:</label>
        <select name="product_id" required>
            <% 
                try {
                    // Database connection
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "root", "password");

                    String query = "SELECT id, name, price FROM products";
                    PreparedStatement pst = con.prepareStatement(query);
                    ResultSet rs = pst.executeQuery();

                    while (rs.next()) {
                        int productId = rs.getInt("id");
                        String productName = rs.getString("name");
                        double price = rs.getDouble("price");
            %>
                        <option value="<%= productId %>"><%= productName %> - $<%= price %></option>
            <% 
                    }
                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </select>

        <label>Quantity:</label>
        <input type="number" name="quantity" required>

        <button type="submit">Create Invoice</button>
    </form>

    <a href="index.jsp">Back to Home</a>
</body>
</html>
