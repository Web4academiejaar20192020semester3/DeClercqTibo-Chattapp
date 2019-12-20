<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Chat"/>
</jsp:include>
<body onload="getNewStatus();getFriends()">
<script src="js/jquery.js"></script>
<jsp:include page="nav.jsp">
    <jsp:param name="title" value="Chat"/>
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
            <h4>Hallo, <i>${user.getFirstName()} </i></h4>
            <div id="showstatus"></div>
            <%--clicken--%>

            <table class="table table-bordered">
                <thead id="friendList" class="thead-dark">
                <tr>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Status</th>
                </thead>
                <tbody id="showFriends">

                </tbody>
            </table>

            <div class="msg_box card">
                <div class="msg_head card-header"></div>
                <div class="msg_wrap">

                    <div class="msg_body card-body list-group list-group-flush">
                    </div>

                    <div class="msg_footer input-group"><textarea class="msg_input form-control"></textarea></div>

                </div>
            </div>



            <label for="status">Status</label>
            <div class="input-group mb-3">

                <input type="text" class="form-control" id="status" name="status" aria-describedby="basic-addon3">
                <div class="input-group-append">
                    <input type="button" class="btn btn-outline-secondary" id="statusbutton" value="Change status">
                </div>
            </div>

            <label for="userid">New Friend</label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">email</span>
                </div>
                <input type="text" class="form-control" id="userid" name="userid" >
                <div class="input-group-append">
                    <input type="button" class="btn btn-outline-secondary" id="friendbutton" value="Add Friend">
                </div>
            </div>




            <div id="conversations"></div>
            <script type="text/javascript" src="js/chat.js"></script>
            <script type="text/javascript" src="js/friends.js"></script>
            <script type="text/javascript" src="js/status.js"></script>

        </c:when>
        <c:otherwise>
            <a href="Controller" class="btn btn-outline-primary">Link to login</a>
        </c:otherwise>
    </c:choose>

</main>
<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Chat"/>
</jsp:include>
</body>
</html>
