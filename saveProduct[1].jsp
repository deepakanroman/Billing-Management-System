<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
    // Get form data
    String name = request.getParameter("name");
    String price = request.getParameter("price");
    String stock = request.getParameter("stock");

    // Database connection details
    String url = "jdbc:mysql://localhost:3306/your_database";
    String user = "your_username";
    String password = "your_password";

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        
        String sql = "INSERT INTO products (name, price, stock) VALUES (?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, name);
        stmt.setBigDecimal(2, new java.math.BigDecimal(price));
        stmt.setInt(3, Integer.parseInt(stock));

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("<h2>✅ Product Added Successfully!</h2>");
        } else {
            out.println("<h2>❌ Failed to Add Product.</h2>");
        }
    } catch (Exception e) {
        out.println("<h2>❌ Error: " + e.getMessage() + "</h2>");
    } finally {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
<br><a href="products.jsp">🔙 Back to Product List</a>
