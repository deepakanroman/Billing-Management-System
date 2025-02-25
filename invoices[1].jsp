<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Invoice Management</title>
</head>
<body style="
    font-family: 'Arial', sans-serif; 
    text-align: center; 
    background: linear-gradient(to right, #f8f9fa, #e3f2fd); 
    margin: 0; 
    padding: 20px;">

    <h1 style="
        color: #4a69bd; 
        background: linear-gradient(to right, #dfe6e9, #b2bec3); 
        padding: 15px; 
        border-radius: 10px; 
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); 
        margin-bottom: 10px;
        animation: fadeIn 2s ease-in-out;">
        Invoice Management
    </h1>

    <p style="
        font-size: 18px; 
        color: #555; 
        background: rgba(255, 255, 255, 0.6); 
        padding: 10px; 
        border-radius: 8px; 
        display: inline-block; 
        margin-bottom: 20px;">
        View and create invoices here.
    </p>

    <br>

    <form action="createInvoice.jsp" method="post" style="
        background: white; 
        padding: 25px; 
        display: inline-block; 
        border-radius: 12px; 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15); 
        text-align: center; 
        width: 320px;">

        <label style="font-size: 16px; color: #333; margin-right: 10px;">Customer ID:</label>
        <input type="text" name="customerId" required style="
            padding: 10px; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
            margin-bottom: 15px; 
            width: 100%;"><br>

        <label style="font-size: 16px; color: #333; margin-right: 10px;">Amount:</label>
        <input type="text" name="amount" required style="
            padding: 10px; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
            margin-bottom: 15px; 
            width: 100%;"><br>

        <button type="submit" style="
            font-size: 18px; 
            color: white; 
            background: #74b9ff; 
            padding: 12px 25px; 
            border: none; 
            border-radius: 8px; 
            transition: background 0.3s, transform 0.3s; 
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15); 
            cursor: pointer;">
            Create Invoice
        </button>
    </form>

    <br><br>
    <a href="index.jsp" style="
        text-decoration: none; 
        font-size: 18px; 
        color: white; 
        background: #74b9ff; 
        padding: 12px 25px; 
        border-radius: 8px; 
        transition: background 0.3s, transform 0.3s; 
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15); 
        display: inline-block;">
        Back to Home
    </a>

    <style>
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        button:hover, a:hover {
            background: #57a0db;
            transform: scale(1.05);
        }
    </style>

</body>
</html>
