<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>elScope.jsp<br>
	<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
	%>
	name : ${name }<br>
	page name : ${pageScope.name }<br>
	request name : ${requestScope.name }<br>
	session name : ${sessionScope.name }<br>
	application name : ${applicationScope.name }<br>
	<a href="resultScope.jsp">결과 페이지 이동</a>
</body>
</html>























