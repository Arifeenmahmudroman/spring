<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="common/navbar.jsp"/>

    <div class="container">
        <form action="/student/update" method="POST">
            <h2 class="text-center mb-5 mt-5">Student Update</h2>

            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Student Name :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${c.name }" id="name" name="name">
                </div>
            </div>
            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">Email :</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" value="${c.email }" id="email" name="email">
                </div>
            </div>
            <div class="form-group row">
                <label for="username" class="col-sm-2 col-form-label">Student username :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${c.username }" id="username" name="username">
                </div>
            </div>
            <div class="form-group row">
                <label for="password" class="col-sm-2 col-form-label">Password :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${c.password }" id="password" name="password">
                </div>
            </div>
            <div class="form-group row">
                <label for="age" class="col-sm-2 col-form-label">Age :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${c.age }" id="age" name="age">
                </div>
            </div>
            <div class="form-group row">
                <label for="gender" class="col-sm-2 col-form-label">Gender :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${c.gender }" id="gender" name="gender">
                </div>
            </div>
            <div class="form-group row">
                <label for="degree" class="col-sm-2 col-form-label">Degree :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${c.degree}" id="degree" name="degree">
                </div>
            </div>
            <div class="form-group row">
                <label for="division" class="col-sm-2 col-form-label">Division :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" value="${c.division }" id="division" name="division">
                </div>
            </div>
            <input type="hidden" name="id" value="${c.id}"/><br/>
            <div class="text-center">
                <button type="submit" class="btn btn-primary "> Update</button>
            </div>

        </form>
    </div>

<jsp:include page="common/footer.jsp"/>