<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String customerId = "";
    String date = "";
    double totalAmount = 0.0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM invoices WHERE id=?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            customerId = rs.getString("customer_id");
            date = rs.getString("date");
            totalAmount = rs.getDouble("total_amount");
        }
        con.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

<form action="updateInvoice.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>">
    Customer ID: <input type="text" name="customer_id" value="<%= customerId %>"><br>
    Date: <input type="date" name="date" value="<%= date %>"><br>
    Total Amount: <input type="number" name="total_amount" value="<%= totalAmount %>" step="0.01"><br>
    <input type="submit" value="Update">
</form>
