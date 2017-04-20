<%@page pageEncoding="UTF-8" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
  </head>
  <body>
  		<table>
  			<th>Nom</th>
  			<th>Valeur</th>
	  		<c:forEach var="parameter" items="${paramValues}">
	  			<tr>
	  				<td><c:out value="${parameter.key}"/></td>
	  				<td>	
		  			<c:forEach var="value" items="${parameter.value}" varStatus="loop">
		  				<c:if test="${loop.index == 0 }">
		  					<c:out value="${value}"/>
		  				</c:if>
		  				<c:if test="${loop.index > 0 }">
		  					<c:out value=",${value}"/>
		  				</c:if>	
		  			</c:forEach>
		  			</td>
		  		</tr>	
	  		</c:forEach>
  		</table>
  </body>
</html>
