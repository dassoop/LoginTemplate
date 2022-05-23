<%--
  Created by IntelliJ IDEA.
  User: lancemac
  Date: 5/21/22
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
  <title>Registration Page</title>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col">

      <form:errors path="user.*"/>
      <h1>Register</h1>

      <form:form method="POST" action="/registration" modelAttribute="user">
        <div class="form-group">
          <form:label path="username">Username</form:label>
          <form:input path="username"/>
        </div>
        <div class="form-group">
          <form:label path="password">Password</form:label>
          <form:password path="password"/>
        </div>
        <div class="form-group">
          <form:label path="passwordConfirmation">Password Confirmation</form:label>
          <form:password path="passwordConfirmation"/>
        </div>
        <input type="submit" value="Register"/>
      </form:form>
    </div>
  </div>
</div>
</body>
</html>
