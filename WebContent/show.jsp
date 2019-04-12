<% String name = (String)session.getAttribute("tname");
String email = (String)session.getAttribute("tempid");
String pass = (String)session.getAttribute("temppass");
%>
<p><%=name %></p>
<p><%=email %></p>
<p><%=pass %></p>