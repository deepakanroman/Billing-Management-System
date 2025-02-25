<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        PreparedStatement ps = con.prepareStatement("UPDATE customers SET name=?, email=?, phone=? WHERE id=?");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, phone);
        ps.setString(4, id);
        ps.executeUpdate();
        con.close();
        response.sendRedirect("customers.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
