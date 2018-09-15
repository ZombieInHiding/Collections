<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Output</title>
</head>
<body>
<jsp:useBean id="item" class="lti.bean.ProductBean" scope="request"/>

Code: <jsp:getProperty property="code" name="item"/><br>
Name: <jsp:getProperty property="name" name="item"/><br>
Price: <jsp:getProperty property="price" name="item"/>

</body>
</html>