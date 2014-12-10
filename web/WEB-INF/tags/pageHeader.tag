<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@tag body-content="empty" %>
<%@attribute name="title" required="false" rtexprvalue="true"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap-theme.min.css" />
<script type="text/javascript" src="assets/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>


<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid" id = "nav">
        <div class="navbar-header">
            
            <a class="navbar-brand" href="#">
                <span class="glyphicon glyphicon-book"></span>
                &nbsp;
                ${title==null?'No Title':title}
            </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a><b>Hello</b></a></li>
                            <c:choose>
                                <c:when test = "${user==null}">
                        <li>
                            <a href="Login" title = "Login to Co System">Guest</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a>${user.name()}</a>
                        </li>
                        <li>                   
                            <a href="Logout" title = "Logout form Co System">Logout</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>