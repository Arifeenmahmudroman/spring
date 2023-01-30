<%--
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="common/navbar.jsp"/>

<div class="col-sm-9 col-md-10">
    <div class="container mt-3 mb-4">
        <h1 style="text-align: center" class="mb-2"><u>শিক্ষার্থীদের তালিকা</u> </h1>
        <table id="dashbord" class="table table-striped table-hover"  >
            <thead>
            <tr>
                <th>Serial ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Degree</th>
                <th>Division</th>
                <th> Date</th>
                <th>Edit Action</th>
                <th>Delete Action</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach items="${students}" var="students">
                <tr>
                    <td>${students.id}</td>
                    <td>${students.name}</td>
                    <td>${students.email}</td>
                    <td>${students.username}</td>
                    <td>${students.password}</td>
                    <td>${students.age}</td>
                    <td>${students.gender}</td>
                    <td>
                        <c:forEach items="${students.degree}" var="degree"> ${degree}<br> </c:forEach>
                    </td>
                    <td>${students.division}</td>
                    <td>${students.deadline}</td>
                    <td class="btn-warning"><a href="/student/edit/${students.id}">Edit</a></td>
                    <td class="btn-info"><a href="/student/delete/${students.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>

        </table>
    </div>
</div>




<jsp:include page="common/footer.jsp"/>


<script>
    $('#dashbord').DataTable( {
        "paging":   true,
        "ordering": true,
        "info":     true
    });
</script>
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Information</title>
    <%--data table jquery--%>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-components-web/4.0.0/material-components-web.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">

    <%--BootStrap 5--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>

<style>
    body{
        background-color: lightsteelblue;
        <%--background-image: url("<c:url value='src/main/webapp/resources/img/formBg.jpg'/>");--%>
    }
</style>


</head>
<body  class="p-3  border-0 bd-example">
<div class="bg-info" style="text-align: right;">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link " aria-current="page" href="/student/dashBord">Dashbord</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/student/registrationStudent">Student Registration</a>
        </li>
        <li class="nav-item ml-auto">
            <a class="nav-link "  href="/student/login" style="text-align: right">Logout</a>
        </li>
    </ul>
</div>

<div class="col-sm-12 col-md-12">
    <div class=" mt-3 mb-4">
        <h1 style="text-align: center" class="mb-2"><u>Student List</u> </h1>
        <table id="dashbord" class="table mdl-data-table table-hover"  >
            <thead>
            <tr>
                <th>Sirial Number</th>
                <th>Name</th>
                <th>Email</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Degree</th>
                <th>Division</th>
                <th> Date</th>
                <th>Edit Action</th>
                <th>Delete Action</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach items="${students}" var="students">
                <tr>
                    <td>${students.id}</td>
                    <td>${students.name}</td>
                    <td>${students.email}</td>
                    <td>${students.username}</td>
                    <td>${students.password}</td>
                    <td>${students.age}</td>
                    <td>${students.gender}</td>
                    <td>
                        <c:forEach items="${students.degree}" var="degree"> ${degree}<br> </c:forEach>
                    </td>
                    <td>${students.division}</td>
                    <td>${students.deadline}</td>
                    <td class="btn-info"><a href="/student/edit/${students.id}">Edit</a></td>
                    <td class="btn-danger"><a href="/student/delete/${students.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>

        </table>
    </div>
</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script>
    $('#dashbord').DataTable( {
        "paging":   true,
        "ordering": true,
        "info":     true,
        "pageLength": 5,
        columnDefs: [
            {
                targets: ['_all'],
                className: 'mdc-data-table__cell',
            },
        ],
    });
</script>
</body>
</html>
