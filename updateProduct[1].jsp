<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    double price = Double.parseDouble(request.getParameter("price"));
    int stock = Integer.parseInt(request.getParameter("stock"));

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        PreparedStatement ps = con.prepareStatement("UPDATE products SET name=?, price=?, stock=? WHERE id=?");
        ps.setString(1, name);
        ps.setDouble(2, price);
        ps.setInt(3, stock);
        ps.setString(4, id);
        ps.executeUpdate();
        con.close();
        response.sendRedirect("products.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
