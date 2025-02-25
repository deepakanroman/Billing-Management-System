<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String customerId = request.getParameter("customer_id");
    String date = request.getParameter("date");
    double totalAmount = Double.parseDouble(request.getParameter("total_amount"));

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        PreparedStatement ps = con.prepareStatement("UPDATE invoices SET customer_id=?, date=?, total_amount=? WHERE id=?");
        ps.setString(1, customerId);
        ps.setString(2, date);
        ps.setDouble(3, totalAmount);
        ps.setString(4, id);
        ps.executeUpdate();
        con.close();
        response.sendRedirect("invoices.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
