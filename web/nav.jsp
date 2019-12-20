<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header role="banner">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="Controller?action=Home">smoelenboek</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
            <c:choose>
                <c:when test="${param.title=='Home'}">
                    <a class="nav-item nav-link active" href="Controller?action=Home">Home <span class="sr-only">(current)</span></a>
                </c:when>
                <c:otherwise>
                    <a class="nav-item nav-link" href="Controller?action=Home">Home</a>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${param.title=='Chat'}">
                    <a class="nav-item nav-link active" href="Controller?action=Chat">Chat <span class="sr-only">(current)</span></a>
                </c:when>
                <c:otherwise>
                    <a class="nav-item nav-link" href="Controller?action=Chat">Chat</a>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${param.title=='Blog'}">
                    <a class="nav-item nav-link active" href="Controller?action=Blog">Blog<span class="sr-only">(current)</span></a>
                </c:when>
                <c:otherwise>
                    <a class="nav-item nav-link" href="Controller?action=Blog">Blog</a>
                </c:otherwise>
            </c:choose>
            </div>
        </div>

    </nav>

</header>
