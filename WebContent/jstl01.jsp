<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>jstl01.jsp<br>
	<c:set var="test" value="고길동"/>
	<c:choose>
		<c:when test="${test == '홍길동' }">
			<b>홍길동이 같다</b>
		</c:when>
		<c:when test="${test == '김길동' }">
			<b>김길동이 같다</b>
		</c:when>
		<c:otherwise>
			<b>같은값이 없다</b>
		</c:otherwise>
	</c:choose>


<hr>
	<%-- 
		<c:import url="el01.jsp"/> 
		<c:redirect url="el01.jsp" />
	--%>
	<c:set var="mySession" value="kakaka" scope="session"/>
	<a href="el01.jsp">세션 생성 후 el01 이동</a>
	<c:remove var="mySession"/>
	<hr>
	<%
		String[] name = {"111","222","333","444"};
		ArrayList arr = new ArrayList();
		arr.add("test");arr.add("bbbb");arr.add("kkkk");
	%>
	<c:set var="values" value="<%=arr %>"/>
	<c:forEach var="st" items="${values }">
		${st }<br>
	</c:forEach>
	

<hr>
	<%	String ss = "test";
		if(ss.equals("test")){%>
			<b>두 값은 같습니다</b>
		<%} %>

	<c:set var="num02" value="test" />
	<c:if test = '${num02 == "test" }'>
		<b>두 값은 같습니다</b>
	</c:if>

<hr>
	<% String s = "test"; %>
	<c:set var="s01" value="<%=s %>"/>
	s01 : ${s01 }<br>
	s : ${s }
<hr>
	<c:set var="num01">
		안녕하세요 만나서 반갑습니다.
	</c:set>
	${num01}
<hr>
<c:set var="num" value="test jstl2222" />
${num }<br>
<c:out value="test jstl"/><br>
</body>
</html>
















