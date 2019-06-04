<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="Cash4Crop2017.Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cash4Crop Login</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora" />
    <link rel="stylesheet" href="assets/css/-Login-form-Page-BS4-.css" />
    <link rel="stylesheet" href="assets/css/Article-Clean.css" />
    <link rel="stylesheet" href="assets/css/Carousel-Hero.css" />
    <link rel="stylesheet" href="assets/css/Contact-Form-v2-Modal--Full-with-Google-Map.css" />
    <link rel="stylesheet" href="assets/css/dh-navbar-centered-brand.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css" />
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css" />
    <link rel="stylesheet" href="assets/css/Services.css" />
    <link rel="stylesheet" href="assets/css/Social-Icons.css" />
    <link rel="stylesheet" href="assets/css/styles.css" />

</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-light navbar-expand-md">
        <div class="container-fluid"><a class="navbar-brand navbar-brand-centered" href="#"> <img src="assets/img/IMG_1521.PNG" style="max-height:145px;" /></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="FreshMark.aspx">Fresh market</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="ContactUs.aspx">Contact us</a></li>
                </ul>
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="Log.aspx">Admin</a></li>
                </ul>
        </div>
        </div>
    </nav>


    <div class="container-fluid">
        <div class="row mh-100vh">
            <div class="col-10 col-sm-8 col-md-6 col-lg-6 offset-1 offset-sm-2 offset-md-3 offset-lg-0 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block">
                <div class="m-auto w-lg-75 w-xl-50">
                    <h2 class="text-info font-weight-light mb-5"><i class="fa fa-diamond"></i>&nbsp;Cash4crop</h2>
                    <form>
                        <div class="form-group"><label class="text-secondary">Email</label> <asp:TextBox ID="EmailTxb" class="form-control"  runat="server"  required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,15}$" TextMode="Email"></asp:TextBox> <%--<input class="form-control" type="text" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,15}$" inputmode="email">--%> </div>
                        <div class="form-group"><label class="text-secondary">Password</label> <asp:TextBox ID="PasswordTxb" class="form-control" required="" runat="server" TextMode="Password"></asp:TextBox> <%--<input class="form-control" type="password" required="">--%> </div> <asp:Button ID="Button1" class="btn btn-info mt-2" runat="server" Text="Log-in" OnClick="Button1_Click" /> <%--<button class="btn btn-info mt-2" type="submit">Log In</button>--%> </form>
                    <%--<p class="mt-3 mb-0"><a href="Regis.aspx" class="text-info small">new ? Click here to register</a></p>--%>
                </div>
            </div>
            <div class="col-lg-6 d-flex align-items-end" id="bg-block" style="background-image:url(&quot;assets/img/IHGD7171.jpg&quot;);background-size:cover;background-position:center center;">
            </div>
        </div>
    </div>
    <div class="social-icons"><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-youtube"></i></a></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
    <script src="assets/js/Contact-Form-v2-Modal--Full-with-Google-Map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    </form>
</body>
</html>
