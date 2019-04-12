
<%

session.removeAttribute("tempid");
session.removeAttribute("temppass");
session.removeAttribute("tname");

response.setHeader("pragma","no-cache");
response.setHeader("cache-control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
session.invalidate();

%>
<jsp:forward page="index1.html"></jsp:forward>
