<html>
<body>
<h2>Session Test</h2>

<%
    Object sessAttr = session.getAttribute("count");
    int count = sessAttr == null ? 0 : Integer.valueOf(sessAttr+"");
    System.out.println("Count: " + count);
%>

<h3>Count: <%=count%></h3>

<%
    session.setAttribute("count", ++count);
%>

<%
    Object sessionId = request.getSession().getId();
%>
<p><b>sessionId:</b> <%=sessionId%></p>

<%
    Object javaVersion = System.getProperty("java.version");
%>
<p><b>javaVersion:</b> <%=javaVersion%></p>

<%
    Object osName = System.getProperty("os.name");
%>
<p><b>osName:</b> <%=osName%></p>

<%
    Object userName = System.getProperty("user.name");
%>
<p><b>userName:</b> <%=userName%></p>

<%
    java.net.InetAddress localMachine = java.net.InetAddress.getLocalHost();
%>
<p><b>hostname/ip:</b> <%=localMachine%></p>


</body>
</html>
