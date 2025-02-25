<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        PreparedStatement ps = con.prepareStatement("DELETE FROM customers WHERE id=?");
        ps.setString(1, id);
        ps.executeUpdate();
        con.close();
        response.sendRedirect("customers.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
