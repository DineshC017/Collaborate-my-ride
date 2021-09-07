<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin-dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" >
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
<style>
        body {
            font-family: "Lato", sans-serif;
        }

        :root {
           
            --primary: #66ccff;
            
        }

        .justify {
            text-align: justify;
        }

        .text-purple {
            color: var(--primary);
        }

        .bg-purple {
            background-color: var(--primary);
            color: white;
        }

</style>
</head>
<body>
<%@include  file="admin_navbar.html" %>

    <div class="container py-5">
        <div class="row">
            <div class="col-lg-12 p-5">
                <h1> <i class="fa fa-tachometer" aria-hidden="true"></i> Admin Dashboard</h1>
                <hr />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
                <a class="text-decoration-none" href="admin_viewregistered.jsp">
                    <div class="card p-3 shadow bg-purple text-center border-0">
                        <div class="card-body">
                            <i class="fa fa-user fa-2x" aria-hidden="true"></i>
                            <hr />
                            <p class="card-title lead">Registered <br> Users</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
                <a class="text-decoration-none" href="viewall_hostdetails.jsp?filter=approved">
                    <div class="card p-3 shadow bg-purple text-center border-0">
                        <div class="card-body">
                            <i class="fa fa-edit fa-2x" aria-hidden="true"></i>
                            <hr />
                            <p class="card-title lead">Host<br> Details</p>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
                <a class="text-decoration-none" href="admin_accepthosts.jsp">
                    <div class="card p-3 shadow bg-purple text-center border-0">
                        <div class="card-body">
                            <i class="fa fa-envelope-open fa-2x" aria-hidden="true"></i>
                            <hr />
                            <p class="card-title lead">Pending Requests</p>
                        </div>
                    </div>
                </a>
            </div>
            

            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
                <a class="text-decoration-none" href="BlockUser.jsp">
                    <div class="card p-3 shadow bg-purple text-center border-0">
                        <div class="card-body">
                            <i class="fa fa-ban fa-2x" aria-hidden="true"></i>
                            <hr />
                            <p class="card-title lead">Blocked<br> user</p>
                        </div>
                    </div>
                </a>
            </div>

            
            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
                <a class="text-decoration-none" href="admin_review.jsp">
                    <div class="card p-3 shadow bg-purple text-center border-0">
                        <div class="card-body">
                            <i class="fa fa-star fa-2x" aria-hidden="true"></i>
                            <hr />
                            <p class="card-title lead">Review <br>Session</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-2 p-2">
                <a class="text-decoration-none" href="add_admin.jsp">
                    <div class="card p-3 shadow bg-purple text-center border-0">
                        <div class="card-body">
                            <i class="fa fa-plus-circle fa-2x" aria-hidden="true"></i>
                            <hr />
                            <p class="card-title lead">Add <br> Admin</p>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>


 

</body>
</html>