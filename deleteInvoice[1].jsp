<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        
        // Delete invoice items first
        PreparedStatement ps = con.prepareStatement("DELETE FROM invoice_items WHERE invoice_id=?");
        ps.setString(1, id);
        ps.executeUpdate();

        // Delete invoice
        ps = con.prepareStatement("DELETE FROM invoices WHERE id=?");
        ps.setString(1, id);
        ps.executeUpdate();

        con.close();
        response.sendRedirect("invoices.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
