<%-- 
    Document   : edit
    Created on : Nov 30, 2022, 4:53:36 PM
    Author     : Gabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>CRUD WITH SPRING</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Actualize student</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Student ID</label>
                        <input type="text" name="studentid" class="form-control" value="${EditStud[0].studentid}">
                        <label>Student Full names</label>
                        <input type="text" name="fullnames" class="form-control" value="${EditStud[0].fullnames}">
                        <label>Student gender</label>
                        <input type="text" name="gender" class="form-control" value="${EditStud[0].gender}">
                        <label>Student age</label>
                        <input type="text" name="age" class="form-control" value="${EditStud[0].age}">
                        <label>Student department</label>
                        <input type="text" name="department" class="form-control" value="${EditStud[0].department}">
                        <input type="Submit" value="Submit" class="btn btn-success">
                        <a href="index.htm" class="btn btn-primary">BACK TO HOME</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
