<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Processing</title>
</head>
<body style="
    font-family: 'Arial', sans-serif; 
    text-align: center; 
    background: linear-gradient(to right, #f8ffae, #43c6ac); 
    margin: 0; 
    padding: 20px;">

    <h1 style="
        color: white; 
        background: linear-gradient(to right, #ff7e5f, #feb47b); 
        padding: 15px; 
        border-radius: 10px; 
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); 
        margin-bottom: 10px;
        animation: fadeIn 2s ease-in-out;">
        Payment Processing
    </h1>

    <p style="
        font-size: 18px; 
        color: #ffffff; 
        background: rgba(0,0,0,0.2); 
        padding: 10px; 
        border-radius: 8px; 
        display: inline-block; 
        margin-bottom: 20px;">
        Process and record payments here.
    </p>

    <br>

    <form action="processPayment.jsp" method="post" style="
        background: white; 
        padding: 20px; 
        display: inline-block; 
        border-radius: 10px; 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
        text-align: center;">

        <label style="font-size: 16px; color: #444444; margin-right: 10px;">Invoice ID:</label>
        <input type="text" name="invoiceId" required style="
            padding: 8px; 
            border: 1px solid #cccccc; 
            border-radius: 5px; 
            margin-bottom: 15px; 
            width: 250px;"><br>

        <label style="font-size: 16px; color: #444444; margin-right: 10px;">Amount:</label>
        <input type="text" name="amount" required style="
            padding: 8px; 
            border: 1px solid #cccccc; 
            border-radius: 5px; 
            margin-bottom: 15px; 
            width: 250px;"><br>

        <button type="submit" style="
            font-size: 18px; 
            color: white; 
            background: #ff7e5f; 
            padding: 12px 25px; 
            border: none; 
            border-radius: 8px; 
            transition: background 0.3s, transform 0.3s; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
            cursor: pointer;">
            Process Payment
        </button>
    </form>

    <br><br>
    <a href="index.jsp" style="
        text-decoration: none; 
        font-size: 20px; 
        color: white; 
        background: #ff7e5f; 
        padding: 12px 25px; 
        border-radius: 8px; 
        transition: background 0.3s, transform 0.3s; 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
        display: inline-block;">
        Back to Home
    </a>

    <style>
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        button:hover, a:hover {
            background: #eb6753;
            transform: scale(1.05);
        }
    </style>

</body>
</html>
