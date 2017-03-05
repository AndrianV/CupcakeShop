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
        <title>NOW: #TheLibrary</title>
        <!-- Bootstrap core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../css/cover.css" rel="stylesheet">
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script>
            function validateForm() {
                var username = document.forms["myForm"]["username"].value;
                var password = document.forms["myForm"]["password"].value;
                if (username == "" || password == "") {
                    alert("Username and Password must be filled out");
                    return false;
                }
            }
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
                        <h1 class="cover-heading"><span style="color: #ff4d4d; text-shadow: 1px 1px 22px #fff">Register&nbsp;</span><span style="color: #fff">in&nbsp;</span>#CupCakeShop&nbsp;<span class="glyphicon glyphicon-fire"></span>&nbsp;:</h1>
                        <hr>
                        <div class="container-fluid">
                            <!-- FORM LOGIN -->
                            <h3>Registration is Successful! <br>Please Log in here:</h3>
                            <h3>Go to <span class="clickable"><a href="../index.html">Log in</a></span></h3>
                            <hr>
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

