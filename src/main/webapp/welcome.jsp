 <%@ page session="true" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
    // Get existing session or create new
    String name = request.getParameter("username");

    if(name != null) {
        // Store name in session
        session.setAttribute("user", name);

        // Set session timeout to 1 minute (60 seconds)
        session.setMaxInactiveInterval(60);
    }

    String user = (String) session.getAttribute("user");

    if(user != null) {
%>
        <h2>Hello <%= user %>!</h2>
        <p>Session will expire in 1 minute of inactivity.</p>
<%
    } else {
%>
        <h2>Session expired!</h2>
        <a href="index.jsp">Go back</a>
<%
    }
%>

</body>
</html>