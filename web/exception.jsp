<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>chatapp</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main>
    <article>
        <h1>Oeps!</h1>
    </article>
    <p>You caused a ${pageContext.exception} on the server !</p>
</main>
</body>
</html>
