<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<script src="js/jquery.js"></script>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Blog"/>
</jsp:include>
<body>
<jsp:include page="nav.jsp">
    <jsp:param name="title" value="Blog"/>
</jsp:include>
<main>
        <c:forEach var="topic" items="${topics}">
            <div class="topic card">
                <div class="card-body">
                <h5 class="card-title">${topic.getTopic()}</h5>
                <table class="table table-bordered ">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Response</th>
                        <th>Rating</th>
                    </tr>
                    </thead>
                    <tbody id=${topic.getTopicId()}>

                    </tbody>
                </table>
                <div class="row">
                    <div class="col">
                        <label for="name">Your name:</label>
                        <input type="text" id="name" name="name" value="" class="form-control" required>
                    </div>
                    <div class="col">
                        <label for="rating">Your rating:</label>
                        <input type="number" id="rating" name="rating" value="" class="form-control">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label for="comment">Your comment:</label>
                        <div class="input-group mb-3">
                            <input type="text" id="comment" name="comment" value="" class="form-control">
                            <div class="input-group-append">
                                <input type="button" id="replybutton" value="Reply"
                                       onclick="sendReply(${topic.getTopicId()});" class="btn btn-outline-secondary">
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            </div>

        </c:forEach></ul>
    <script type="text/javascript" src="js/blog.js"></script>
</main>
<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
</body>
</html>
