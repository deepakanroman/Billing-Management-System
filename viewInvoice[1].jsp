<%@ page import="java.sql.*" %>
<%
    String invoiceId = request.getParameter("id");
    String customerName = "";
    String date = "";
    double totalAmount = 0.0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "root", "password");

        // Get invoice details
        PreparedStatement ps = con.prepareStatement("SELECT i.*, c.name FROM invoices i JOIN customers c ON i.customer_id = c.id WHERE i.id=?");
        ps.setString(1, invoiceId);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            customerName = rs.getString("name");
            date = rs.getString("date");
            totalAmount = rs.getDouble("total_amount");
        }

        out.println("<h2>Invoice Details</h2>");
        out.println("<p>Customer: " + customerName + "</p>");
        out.println("<p>Date: " + date + "</p>");
        out.println("<p>Total Amount: $" + totalAmount + "</p>");

        out.println("<h3>Products:</h3>");
        out.println("<table border='1'><tr><th>Product</th><th>Quantity</th><th>Price</th></tr>");

        // Get invoice items
        ps = con.prepareStatement("SELECT p.name, ii.quantity, ii.price FROM invoice_items ii JOIN products p ON ii.product_id = p.id WHERE ii.invoice_id=?");
        ps.setString(1, invoiceId);
        rs = ps.executeQuery();
        while (rs.next()) {
            out.println("<tr><td>" + rs.getString("name") + "</td><td>" + rs.getInt("quantity") + "</td><td>$" + rs.getDouble("price") + "</td></tr>");
        }
        out.println("</table>");

        con.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
