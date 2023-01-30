<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
    <!-- Add the Bootstrap CSS and JavaScript files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />

</head>
<body  class="p-3 m-0 border-0 bd-example">


<div class="container mb-5">
    <div class="row mt-5">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <form class="border p-5 " action="/student/dashBord1" method="GET">
                <h2 class="text-center bg-info mb-4">Log in to Dashboard.</h2>

                <div class="form-group  mt-3">
                    <input type="text" class="form-control rounded-pill" id="username"
                           name="username" placeholder="User Name ">
                </div>
                <div class="form-group  mt-3">
                    <input type="text" class="form-control rounded-pill" id="password"
                           name="password" placeholder="Password">
                </div>
                <button type="submit"
                        class="btn btn-info rounded-pill btn-width mt-3 mb-4"> LogIn  </button>
                <div class="d-flex justify-content-between">
                    <p style="color: gray;">______________________________</p>
                    or
                    <p style="color: gray;">______________________________</p>
                </div>

                <button type="submit"
                        class="btn btn-primary rounded-pill btn-width mt-3 mb-4">Continue
                    with Google</button>
                <hr>
                <div class="d-flex justify-content-between">
                    <p class="underline">____________</p>
                    <p class="text-small">Don't have an  account?</p>
                    <p class="underline">____________</p>
                </div>
                <a
                        class="btn btn-outline-success btn-signup  rounded-pill pr-4 pl-4"
                        href="singup">Sign Up</a>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>

<jsp:include page="common/footer.jsp"/>