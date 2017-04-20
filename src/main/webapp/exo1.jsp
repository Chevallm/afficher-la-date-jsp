<%@page pageEncoding="UTF-8" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
  </head>
  <body>
    <jsp:useBean id="now" scope="page" class="java.util.Date"/>
    <p>La date : <fmt:formatDate type="BOTH" pattern="d MMMM yyyy HH:mm:ss" value="${now}"/></p>
  </body>
</html>
