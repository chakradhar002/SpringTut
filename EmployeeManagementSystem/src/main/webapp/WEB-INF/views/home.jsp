<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Manage Employee</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!--   <link type="text/css" href="/css/bootstrap.css" rel="stylesheet" /> -->
        <link type="text/css" href="/css/bootstrap-theme.css" rel="stylesheet" />
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">Employee Management</a>
                </div>

                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/welcome"><strong>Home</strong></a>
                    </li>
                    <li class="">
                        <a href="/getemployeelist"><strong>Employee List</strong></a>
                    </li>
                    <li class="">
                        <a href="/addemployee"><strong>Add Employee</strong></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row">
            <div class="col-md-12">
                <img class="img-responsive" src="/images/home.jpg" />
            </div>
        </div>

        <script type="application/javascript" src="resources/static/js/jquery.js"></script>
        <script type="application/javascript" src="resources/static/js/bootstrap.js"></script>
    </body>
</html>
