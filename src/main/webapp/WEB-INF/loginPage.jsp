<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
  <title>Login Page</title>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col">

  <c:if test="${logoutMessage != null}">
    <c:out value="${logoutMessage}"></c:out>
  </c:if>
  <c:if test="${errorMessage != null}">
    <c:out value="${errorMessage}"></c:out>
  </c:if>

  <h1>Login</h1>
  <form method="POST" action="/login">
    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" id="email" name="email"/>
    </div>
<%--    <div class="form-group">--%>
<%--      <label for="username">Username</label>--%>
<%--      <input type="text" id="username" name="username"/>--%>
<%--    </div>--%>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password"/>
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Login"/>
  </form>
    </div>
  </div>
  <div class="row">
    <a href="/registration">Registration</a>
  </div>
</div>
</body>
</html>