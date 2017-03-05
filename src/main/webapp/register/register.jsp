<%-- 
    Document   : register
    Created on : 25-Feb-2017, 16:31:41
    Author     : dido8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NOW: Register</title>
        <!-- Bootstrap core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../css/cover.css" rel="stylesheet">
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script>
            $(function () {
                $('#input1').on('keypress', function (e) {
                    if (e.which == 32)
                        return false;
                });
                $('#input2').on('keypress', function (e) {
                    if (e.which == 32)
                        return false;
                });
            });
        </script>
    </head>

    <body>

        <div class="site-wrapper">
            <div class="site-wrapper-inner">
                <div class="cover-container">
                    <!-- Header -->
                    <div class="masthead clearfix">
                        <div class="inner">
                            <h3 class="masthead-brand">#CupCakeShop&nbsp;<span class="glyphicon glyphicon-fire"></span></h3>
                            <nav>
                                <ul class="nav masthead-nav">
                                    <li><a href="../about.html">About this Project</a></li>
                                    <li><a href="../index.html" data-toggle="tooltip" data-placement="right" title="Log&nbsp;in!">Log in</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <div class="inner cover">
                        <h2 class="cover-heading"><span style="color: #ff4d4d; text-shadow: 1px 1px 22px #fff">Register&nbsp;</span><span style="color: #fff">in&nbsp;</span>#CupCakeShop&nbsp;<span class="glyphicon glyphicon-fire"></span>&nbsp;:</h2>
                        <hr>
                        <div class="container-fluid">
                            <!-- FORM LOGIN -->
                            <form method="post" action="reg.jsp">
                                <div class="col-lg-12">
                                    <div class="form-group row">
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon1">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <input type="text" class="form-control" name="username" placeholder="Username" id="input1" required>
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon2">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <input type="password" class="form-control" name="password" placeholder="Password" id="input2" required>
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon2">
                                                <span class="glyphicon glyphicon-text-color"></span>
                                            </span>
                                            <input type="text" class="form-control" name="name" placeholder="Name" required>
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon2">
                                                <span class="glyphicon glyphicon-home"></span>
                                            </span>
                                            <input type="text" class="form-control" name="address" placeholder="Address" required>
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon2">
                                                <span class="glyphicon glyphicon-earphone"></span>
                                            </span>
                                            <input type="text" class="form-control" name="phone" placeholder="Phone" required>
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon2">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <input type="text" class="form-control" name="email" placeholder="E-mail" required>
                                        </div>
                                        <hr>
                                    </div>
                                </div>

                                <button class="btn btn-lg btn-danger" style="box-shadow: 1px 1px 60px #fff" type="submit" value="Submit"><small>Register&nbsp;&nbsp;<span class="glyphicon glyphicon-edit"></span></small></button>
                                <button class="btn btn-lg btn-primary" type="reset" value="Reset"><small>Reset&nbsp;&nbsp;<span class="glyphicon glyphicon-pencil"></span></small></button>
                            </form>
                            <br><br>
                            <h3>Already registered? Log in <span class="clickable"><a href="../index.html">here</a></span>.</h3>
                        </div>        
                    </div>
                    <!-- Footer -->
                    <div class="mastfoot">
                        <div class="inner">
                            <p><span class="glyphicon glyphicon-copyright-mark"></span>&nbsp;2017 Powered by: <a href="http://getbootstrap.com">Bootstrap</a>, made by Andrian V.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Tooltip sctipt -->
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </body>
</html>

