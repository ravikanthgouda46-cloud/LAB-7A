 <%@ page session="true" %>
<html>
<head>
    <title>Session Check</title>
</head>
<body>

<%
    String user = (String) session.getAttribute("user");

    if(user == null) {
%>
        <h2>Session expired! Please login again.</h2>
        <a href="index.jsp">Go to Login</a>
<%
    } else {
%>
        <h2>Session Active</h2>
        <p>Hello <%= user %></p>
<%
    }
%>

</body>
</html>