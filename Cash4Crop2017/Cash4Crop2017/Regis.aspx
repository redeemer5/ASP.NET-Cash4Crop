<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regis.aspx.cs" Inherits="Cash4Crop2017.Regis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cash4crop</title>
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
    <div class="register-photo">
        <div class="form-container">
            <div class="image-holder"></div>
            <form method="post">
                <h2 class="text-center"><strong>New user ?</strong> Register here.</h2>
                <div class="form-group"> <asp:TextBox ID="NameTxb" class="form-control" runat="server" placeholder="Name" required=""></asp:TextBox> </div>
                <div class="form-group"> <asp:TextBox ID="SurnameTxb" class="form-control" runat="server" placeholder="Surname" required=""></asp:TextBox> </div>
                <div class="form-group"> <asp:TextBox ID="CellNoTxb" runat="server" class="form-control" placeholder="Contact Number" TextMode="Phone" required=""></asp:TextBox> </div>
                <div class="form-group"> <asp:TextBox ID="EmailTxb" runat="server"  class="form-control" placeholder="Email" TextMode="Email" required=""></asp:TextBox> <%--<input class="form-control" type="email" name="email" placeholder="Email">--%> </div>
                <div class="form-group"> <asp:TextBox ID="PasswordTxb" runat="server" class="form-control" placeholder="Password" TextMode="Password" required=""></asp:TextBox> <%--<input class="form-control" type="password" name="password" placeholder="Password">--%> </div>
                <%--<div class="form-group"><input class="form-control" type="password" name="password-repeat" placeholder="Password (repeat)"></div>--%>
                <div class="form-group">
                    <%--<div class="form-check"><label class="form-check-label"><input class="form-check-input" type="checkbox">I agree to the license terms.</label></div>--%>
                </div>
                  <div class="form-group"> <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary btn-block" OnClick="Button1_Click1" /> </div></form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
    <script src="assets/js/Contact-Form-v2-Modal--Full-with-Google-Map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script> 
    
</form>
</body>
</html>
