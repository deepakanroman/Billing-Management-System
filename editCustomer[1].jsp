<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String name = "";
    String email = "";
    String phone = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM customers WHERE id=?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            name = rs.getString("name");
            email = rs.getString("email");
            phone = rs.getString("phone");
        }
        con.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

<form action="updateCustomer.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>">
    Name: <input type="text" name="name" value="<%= name %>"><br>
    Email: <input type="text" name="email" value="<%= email %>"><br>
    Phone: <input type="text" name="phone" value="<%= phone %>"><br>
    <input type="submit" value="Update">
</form>
