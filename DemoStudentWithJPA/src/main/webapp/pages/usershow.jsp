<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<hr>
<!-- ${commentList} -->
<br>
<table>
    <c:forEach items="${commentList}" var="comment" varStatus="loop">
        <tr>
            <td>
                <h4>
                        <c:out value="${comment.comment_id}" />
                    
                </h4>
            


                   
                <hr>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>