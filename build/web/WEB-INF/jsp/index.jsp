<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>CRUD WITH SPRING</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="regist.htm" class="btn btn-light">NEW REGISTRATION</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>FULL NAMES</th>
                                <th>AGE</th>
                                <th>PHONE</th>
                                <th>DEPARTMENT</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dat" items="${StudentList}">
                                <tr>
                                    <td>${dat.studentid}</td>
                                    <td>${dat.fullnames}</td>
                                    <td>${dat.gender}</td>
                                    <td>${dat.age}</td>
                                    <td>${dat.department}</td>
                                    <td>
                                        <a href="edit.htm?id=${dat.studentid}" class="btn btn-warning">EDIT</a>
                                        <a href="delete.htm?did=${dat.studentid}" class="btn btn-danger">DELETE</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>

            </div>

        </div>
    </body>
</html>
