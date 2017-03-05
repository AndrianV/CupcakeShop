
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>NOW: Order</title>

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../css/sb-admin.css" rel="stylesheet">
        <link href="../css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="../css/dropdowns-enhancement.css" rel="stylesheet">

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
                            <a href="viewprofile.jsp"><i class="fa fa-fw fa-id-card-o"></i> View Profile</a>
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
                            <h1 class="page-header"><span class="glyphicon glyphicon-fire"></span>&nbsp;Make Order<small> | Welcome, <%= session.getAttribute("username")%> :)</small></h1>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped" id="mydata">
                                            <thead>
                                                <tr>
                                                    <th class="center-table">Bottom</th>
                                                    <th class="center-table">Price</th>
                                                    <th class="center-table">Topping</th>
                                                    <th class="center-table">Price</th>
                                                    <th class="center-table">Quantity</th>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center"><%= session.getAttribute("bottom")%></td>
                                                    <td class="text-center"><%= session.getAttribute("bottomprice") %> dkk</td>
                                                    <td class="text-center"><%= session.getAttribute("topping")%></td>
                                                    <td class="text-center"><%= session.getAttribute("toppingprice")%> dkk</td>
                                                    <td class="text-center"><%= session.getAttribute("quantitysum")%></td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center" colspan="5">SUM:&nbsp;<%= session.getAttribute("sumorder")%> dkk</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /col-lg-12 -->
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
        <script src="../js/dropdowns-enhancement.js"></script>

        <script>
            $('#mydata').dataTable();
        </script>
    </body>

</html>
