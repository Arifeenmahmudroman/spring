<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="common/navbar.jsp"/>
<div class="container bg-info">
    <h1 class="mb-2 mt-2 " style="text-align: center"><u>Student Regestration Form</u></h1>
    <form:form action="/student/save" method="post">
        <div class="form-group mb-2">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder=" Type your Name">
        </div>
        <div class="form-group mb-2">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Type your Email">
        </div>
        <div class="form-group mb-2">
            <label for="username"> User Name:</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Type User Name">
        </div>
        <div class="form-group mb-2">
            <label for="password">PaSSWORD:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Type Password">
        </div>
        <div class="form-group mb-2">
            <label for="age">Age:</label>
            <input type="number" class="form-control" id="age" name="age" placeholder="Type Age">
        </div>
        <div class="btn-group mb-2" data-toggle="buttons">
            <label>Gender:</label>
            <label class="btn btn-secondary active">
                <input type="radio" name="gender" value="Male" checked> Male
            </label>
            <label class="btn btn-secondary">
                <input type="radio" name="gender" value="Female"> Female
            </label>
        </div>
        <div class="form-group mb-2">
            <label for="degree1" class="mr-2">Degree:</label>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="degree1" name="degree" value="Honours">
                <label class="form-check-label" for="degree1">Honours</label>

            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" id="degree2" name="degree" value="Masters ">
                <label class="form-check-label" for="degree2">Masters</label>
            </div>
        </div>

        <div class="form-group mb-2">
            <label for="division">Division</label>
            <select class="form-control" id="division" name="division">
                <option value=" ">Select</option>
                <option value="Dhaka">Dhaka</option>
                <option value="Khulna">Khulna</option>
                <option value="Rajsahi">Rajsahi</option>
                <option value="Rongpur">Rongpur</option>
                <option value="Chitagong">Chitagong</option>
                <option value="Sylet">Sylet</option>
                <option value="Borisal">Borisal</option>
            </select>
        </div>

        <div class="form-group mb-2">
            <label for="deadline">Date :</label>
            <input type="date" class="form-control" id="deadline" name="deadline">
        </div>

        <div class="mb-2">
            <button type="submit" class="btn-primary" id="invokesToastMessage"> Submit</button>
        </div>
        <div class="alert alert-success">
            <c:out value="${message}"/>
        </div>
    </form:form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<%-- <script>$('#invokesToastMessage').click(function () { toastr.success('message', ${message}); });</script>--%>

</body>
</html>

<%--
<script>
    $(document).ready(function() {
        $("#username,#email").on("input", function() {
            var value = $(this).val();
            var pattern = new RegExp("^[a-zA-Z\\s@.-]*$");
            if (!pattern.test(value)) {
                alert("Please enter only English letters.");
                $(this).val("");
            }
        });
    });

    $(document).ready(function() {
        $("#passowrd").on("input", function() {
            var value = $(this).val();
            var pattern = new RegExp("^\"^[0-9\\s]*$");
            if (!pattern.test(value)) {
                alert("Please enter only Number letters.");
                $(this).val("");
            }
        });
    });

    $(document).ready(function() {
        $("#name").on("input", function() {
            var value = $(this).val();
            var pattern = new RegExp("^[\u0980-\u09FF\\s]*$");
            if (!pattern.test(value)) {
                alert("Please Type");
                $(this).val("");
            }
        });
    });

</script>--%>
