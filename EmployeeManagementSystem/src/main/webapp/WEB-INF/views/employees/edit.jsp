<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
    </head>
    <body>
        <h2>&nbsp;&nbsp;Employee Information</h2>

        <h4>&nbsp;&nbsp;Please enter exist Employee id for Update in DB</h4>

        <form:form method="POST" action="/empupdate" modelAttribute="employee">
            <table class="table table-bordered">
                <tr>
                    <td><form:label path="id">Employee No. </form:label></td>
                    <td><form:input path="id" /></td>
                </tr>
                <tr>
                    <td><form:label path="firstName">First Name</form:label></td>
                    <td><form:input path="firstName" /></td>
                </tr>
                <tr>
                    <td><form:label path="lastName">Last Name</form:label></td>
                    <td><form:input path="lastName" /></td>
                </tr>
                <tr>
                    <td><form:label path="gender">Gender</form:label></td>
                    <td><form:input path="gender" /></td>
                </tr>
                <tr>
                    <td><form:label path="birthDate">Birth Date</form:label></td>
                    <td><form:input path="birthDate" /></td>
                </tr>
                <tr>
                    <td><form:label path="hireDate">Hire Date</form:label></td>
                    <td><form:input path="hireDate" /></td>
                </tr>
            </table>

            <input type="submit" value="Update Employee" class="btn btn-success" />

            <a href="/welcome/employees/add" class="btn btn-info">Reset</a>
        </form:form>

        <script type="application/javascript" src="js/jquery.js"></script>
        <script type="application/javascript" src="js/bootstrap.js"></script>
    </body>
</html>
