<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
</head>
<body style="
    font-family: Arial, sans-serif; 
    text-align: center; 
    background: linear-gradient(to right, #ffdde1, #ee9ca7); 
    margin: 0; 
    padding: 20px;">

    <h1 style="
        color: white; 
        background: #ff6363; 
        padding: 15px; 
        border-radius: 10px; 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
        animation: fadeIn 1.5s ease-in-out;">
        Welcome to the Billing System
    </h1>

    <p style="
        font-size: 18px; 
        color: #444; 
        background: rgba(255, 255, 255, 0.6); 
        padding: 10px; 
        border-radius: 8px; 
        display: inline-block; 
        margin-bottom: 20px;">
        Manage invoices, customers, products, payments, and reports with ease.
    </p>

    <ul style="list-style: none; padding: 0;">
        <li style="margin: 15px;">
            <a href="invoices.jsp" style="
                text-decoration: none; 
                font-size: 20px; 
                background: #ffab00; 
                color: white; 
                padding: 12px 25px; 
                border-radius: 8px; 
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
                transition: background 0.3s, transform 0.3s;">
                Manage Invoices
            </a>
        </li>
        <li style="margin: 15px;">
            <a href="customers.jsp" style="
                text-decoration: none; 
                font-size: 20px; 
                background: #42a5f5; 
                color: white; 
                padding: 12px 25px; 
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
                transition: background 0.3s, transform 0.3s;">
                Manage Customers
            </a>
        </li>
        <li style="margin: 15px;">
            <a href="products.jsp" style="
                text-decoration: none; 
                font-size: 20px; 
                background: #4caf50; 
                color: white; 
                padding: 12px 25px; 
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
                transition: background 0.3s, transform 0.3s;">
                Product Catalog
            </a>
        </li>
        <li style="margin: 15px;">
            <a href="payments.jsp" style="
                text-decoration: none; 
                font-size: 20px; 
                background: #f44336; 
                color: white; 
                padding: 12px 25px; 
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
                transition: background 0.3s, transform 0.3s;">
                Process Payments
            </a>
        </li>
        <li style="margin: 15px;">
            <a href="reports.jsp" style="
                text-decoration: none; 
                font-size: 20px; 
                background: #9c27b0; 
                color: white; 
                padding: 12px 25px; 
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
                transition: background 0.3s, transform 0.3s;">
                View Reports
            </a>
        </li>
    </ul>

    <style>
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        a:hover {
            transform: scale(1.05);
            opacity: 0.9;
        }
    </style>

</body>
</html>
