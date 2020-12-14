<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="enums.Tables"%>
<%@page import="connect_jdbc.TableProducts"%>
<%@page import="connect_jdbc.Mysql"%>
<%@page import="utils.Utils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String[] urls = request.getRequestURL().toString().split("codoacodoweb")[1].split("/");
    String url = urls[2].replace(".jsp", "");
%>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p><%= request.getRequestURL().toString()%></p>
        <p><%= url%></p>
        <p><%= urls[0]%></p>
        <p><%= urls[1]%></p>

        <p><%= 6 + 5%></p>
        <p></p>
        <%--<p><%= new TableProducts().productById(13) %></p>--%>
        <p><%= new TableProducts().commentsByProduct(13)%></p>
        <%
            try {
                Connection mysql = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_cac", "root", "1234");
                out.print("Conexion correcta");
            } catch (SQLException e) {
                e.printStackTrace();
                out.print("consulta err " + e);
            }
        %>
    </body>
</html>
