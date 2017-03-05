
<%@page import="data.UserMapper"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("../index.html");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>NOW: View Profile</title>

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../css/sb-admin.css" rel="stylesheet">
        <link href="../css/dataTables.bootstrap.min.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="../css/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <style>
            .center-table {
                text-align: center;
            }
        </style>

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="#" style="color: #fff">#CupCakeShop&nbsp;<span class="glyphicon glyphicon-fire"></span></a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <%= session.getAttribute("username")%> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../login/logout.jsp"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="myplace.jsp"><span class="glyphicon glyphicon-fire"></span>&nbsp;Make Order</a>
                            <a href="#"><i class="fa fa-fw fa-id-card-o"></i> View Profile</a>
                            <a href="catalogue.jsp"><i class="fa fa-fw fa-shopping-cart"></i> Shopping Cart</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"><i class="fa fa-fw fa-id-card-o"></i>&nbsp;View Profile <small> | Welcome, <%= session.getAttribute("username")%> :)</small></h1>
                        </div>
                    </div>

                    <!-- User info -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 style="text-align: center;">Your Registered information, <%= session.getAttribute("username")%> :</h3>
                            <hr>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>Username:</p>
                            <div class="well well-sm"><%= session.getAttribute("username")%></div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>Password:</p>
                            <div class="well well-sm"><%= session.getAttribute("password")%></div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>User ID:</p>
                            <div class="well well-sm"><%= session.getAttribute("id")%></div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>Name:</p>
                            <div class="well well-sm"><%= session.getAttribute("name")%></div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>Phone:</p>
                            <div class="well well-sm"><%= session.getAttribute("phone")%></div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>Address:</p>
                            <div class="well well-sm"><%= session.getAttribute("address")%></div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>E-mail:</p>
                            <div class="well well-sm"><%= session.getAttribute("email")%></div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>Balance:</p>
                            <div class="well well-sm"><%= session.getAttribute("balance")%>&nbsp;dkk</div>
                        </div>
                        <div class="col-xs-6 col-md-3 col-lg-2 center-table">
                            <p>Registration Date:</p>
                            <div class="well well-sm"><%= session.getAttribute("regdate")%></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 style="text-align: center;">Your Orders & Invoices, <%= session.getAttribute("username")%> :</h3>
                            <hr>
                            <p>It's still empty here. You need to make at least one order.</p>
                        </div>
                    </div>
                    <!-- /.row -->


                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="../js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>

        <!-- Data Tables -->
        <script src="../js/jquery.dataTables.min.js"></script>
        <script src="../js/dataTables.bootstrap.min.js"></script>

        <script>
            $('#mydata').dataTable();
        </script>
    </body>

</html>
