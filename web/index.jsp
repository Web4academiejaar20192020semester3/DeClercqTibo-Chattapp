<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<script src="js/jquery.js"></script>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<body>
<jsp:include page="nav.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<main>
    <c:if test="${errors.size()>0 }">
        <div class="danger">
            <ul>
                <c:forEach var="error" items="${errors }">
                    <li>${error }</li>
                </c:forEach>
            </ul>
        </div>
    </c:if>
    <c:choose>
        <c:when test="${user!=null}">
            <h3>Hallo, <i>${user.getFirstName()}  </i></h3>

            <form method="post" action="Controller?action=LogOut">
                <p>
                    <input type="submit" id="logoutbutton" class="btn btn-outline-primary" value="Log Out">
                </p>
            </form>

        </c:when>
        <c:otherwise>
            <form method="post" action="Controller?action=LogIn">
                <div class="form-group">

                    <label for="email">Your email </label>
                    <input type="text" id="email" name="email" value="jan@ucll.be" class="form-control">


                    <label for="password">Your password</label>
                    <input type="password" id="password" name="password" value="t" class="form-control">

                <br>
                <input type="submit"  class="btn btn-outline-primary" value="Log in">

                <a href="Controller?action=Register" class="btn btn-outline-primary">Register here</a>
                </div>
            </form>
        </c:otherwise>
    </c:choose>

</main>
<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
</body>
</html>
