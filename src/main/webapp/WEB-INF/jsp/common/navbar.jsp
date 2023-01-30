
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Student Info</title>

    <!-- Add the Bootstrap CSS and JavaScript files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>

    <%--Data Table--%>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">

     <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />

</head>
<body  class="p-3 m-0 border-0 bd-example">
<div class="bg-info" style="text-align: right;">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link " aria-current="page" href="/student/dashBord">Dashbord</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/student/registrationStudent">Student Registration</a>
        </li>
        <li class="nav-item ml-auto">
            <a class="nav-link " href="/student/login" style="grid-column: 2/3;">Logout</a>
        </li>
    </ul>
</div>