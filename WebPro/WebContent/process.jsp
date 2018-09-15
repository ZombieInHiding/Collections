<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Process</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<body>
<jsp:useBean id="item" class = "lti.bean.ProductBean" scope="request"/><%-- instantiate class --%>

<jsp:setProperty property="*" name="item"/>

<sql:update dataSource="jdbc/myoracle">
insert into product values (${item.code}, '${item.name}',${item.price})
</sql:update>

<%-- If property name is same as param use * instead else follow this.
<jsp:setProperty property="code" name="item"/>
<jsp:setProperty property="name" name="item"/>
<jsp:setProperty property="price" name="item" param="price"/> --%>

<%-- response.sendRedirect("output.jsp") ; Cannot work with scope= request change to session--%>

<jsp:forward page="output.jsp"/>
</body>
</html>