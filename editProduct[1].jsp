<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String name = "";
    double price = 0.0;
    int stock = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM products WHERE id=?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            name = rs.getString("name");
            price = rs.getDouble("price");
            stock = rs.getInt("stock");
        }
        con.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

<form action="updateProduct.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>">
    Name: <input type="text" name="name" value="<%= name %>"><br>
    Price: <input type="number" name="price" value="<%= price %>" step="0.01"><br>
    Stock: <input type="number" name="stock" value="<%= stock %>"><br>
    <input type="submit" value="Update">
</form>
