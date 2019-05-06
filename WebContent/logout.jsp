<!DOCTYPE html>
<html>
    <head>
    <script type="text/javascript">
    window.history.forword();
    function noBack(){window.history.forward();}
    </script>
    </head>
    <body onload = "noBack()">
    </body>
</html>
<%
String email = (String)session.getAttribute("tempid");

session.removeAttribute("tempid");
session.removeAttribute("temppass");
session.removeAttribute("tname");
response.setHeader("pragma","no-cache");
response.setHeader("cache-control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
session.invalidate();
if(email.equals("null"))
{
response.sendRedirect("index1.html");
}

%>
<jsp:forward page="index1.html"></jsp:forward>
