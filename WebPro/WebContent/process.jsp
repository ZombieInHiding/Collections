<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Process</title>
</head>
<body>
<jsp:useBean id="item" class = "lti.bean.ProductBean" scope="request"/><%-- instantiate class --%>

<jsp:setProperty property="*" name="item"/>

<%-- If property name is same as param use * instead else follow this.
<jsp:setProperty property="code" name="item"/>
<jsp:setProperty property="name" name="item"/>
<jsp:setProperty property="price" name="item" param="price"/> --%>

<%-- response.sendRedirect("output.jsp") ; Cannot work with scope= request change to session--%>

<jsp:forward page="output.jsp"/>
</body>
</html>