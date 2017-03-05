
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

        <title>NOW: #CupCakeShop</title>

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
                            <form action="../Order" method="post">
                            <h3 style="text-align: center;">Choose your preferred bottom :</h3>
                            <div class="dropdown center-table">
                                <button data-toggle="dropdown" class="btn btn-default dropdown-toggle center-block">Choose an option <span class="caret"></span></button>
                                <ul class="dropdown-menu bullet pull-center">
                                    <li><input type="radio" id="1" name="bottom" value="Chocolate"><label for="1">Chocolate | 5.00 dkk</label></li>
                                    <li><input type="radio" id="2" name="bottom" value="Vanilla"><label for="2">Vanilla | 5.00 dkk</label></li>
                                    <li><input type="radio" id="3" name="bottom" value="Nutmeg"><label for="3">Nutmeg | 5.00 dkk</label></li>
                                    <li><input type="radio" id="4" name="bottom" value="Pistacio"><label for="4">Pistacio | 6.00 dkk</label></li>
                                    <li><input type="radio" id="5" name="bottom" value="Almond"><label for="5">Almond | 7.00 dkk</label></li>
                                    <!-- Other items -->
                                </ul>
                            </div><!-- drop -->
                            <hr>
                            <h3 style="text-align: center;">Choose your preferred topping :</h3>
                            <div class="dropdown center-table">
                                <button data-toggle="dropdown" class="btn btn-default dropdown-toggle center-block">Choose an option <span class="caret"></span></button>
                                <ul class="dropdown-menu bullet pull-center">
                                    <li><input type="radio" id="11" name="topping" value="Chocolate"><label for="11">Chocolate | 5.00 dkk</label></li>
                                    <li><input type="radio" id="12" name="topping" value="Blueberry"><label for="12">Blueberry | 5.00 dkk</label></li>
                                    <li><input type="radio" id="13" name="topping" value="Raspberry"><label for="13">Raspberry | 5.00 dkk</label></li>
                                    <li><input type="radio" id="14" name="topping" value="Crispy"><label for="14">Crispy | 6.00 dkk</label></li>
                                    <li><input type="radio" id="15" name="topping" value="Strawberry"><label for="15">Strawberry | 6.00 dkk</label></li>
                                    <li><input type="radio" id="16" name="topping" value="Rum/Raisin"><label for="16">Rum/Raisin | 7.00 dkk</label></li>
                                    <li><input type="radio" id="17" name="topping" value="Orange"><label for="17">Orange | 8.00 dkk</label></li>
                                    <li><input type="radio" id="18" name="topping" value="Lemon"><label for="18">Lemon | 8.00 dkk</label></li>
                                    <li><input type="radio" id="19" name="topping" value="Blue cheese"><label for="19">Blue cheese | 9.00 dkk</label></li>
                                    <!-- Other items -->
                                </ul>
                            </div><!-- drop -->
                            <h3 style="text-align: center;">Choose preferred quantity :</h3>
                            <div class="dropdown center-table">
                                <button data-toggle="dropdown" class="btn btn-default dropdown-toggle center-block">Choose an option <span class="caret"></span></button>
                                <ul class="dropdown-menu bullet pull-center">
                                    <li><input type="radio" id="21" name="quantity" value="1"><label for="21">1</label></li>
                                    <li><input type="radio" id="22" name="quantity" value="2"><label for="22">2</label></li>
                                    <li><input type="radio" id="23" name="quantity" value="5"><label for="23">5</label></li>
                                    <li><input type="radio" id="24" name="quantity" value="10"><label for="24">10</label></li>
                                    <!-- Other items -->
                                </ul>
                            </div><!-- drop -->
                            <hr>
                            <button class="btn btn-lg btn-success center-block" style="box-shadow: 1px 1px 60px #fff" type="submit" value="Submit"><small><span class="glyphicon glyphicon-plus"></span>&nbsp;Add to cart</small></button>
                        </form>
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
