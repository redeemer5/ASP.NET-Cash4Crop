<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FreshMark.aspx.cs" Inherits="Cash4Crop2017.FreshMark" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cash4Crop Fresh Market</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie" />
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/styles.css" />
    <link rel="stylesheet" href="assets/css/Hero-Technology.css" />
    <link rel="stylesheet" href="assets/css/Pretty-Footer.css" />
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css" />
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css" />


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

    <style>

        #GridView1
        {
            margin-left:27%;
            
            height:50%;
            padding-top:15em;
            
            border-radius: 25px;
            border: 2px solid #ffffff;
            padding: 20px; 
            width: 200px;
            height: 150px;   

              width: 100%; 
    word-wrap:break-word;
    table-layout: fixed;
        }


        #freshmarketcontent
        {
            padding-top:5em;
        }

        #space
        {
            padding-bottom:3.5em;
        }

                #opacity {
            background-color: white;
            opacity: 0.8;
            color: black;

            border-radius: 25px;
            border: 2px solid #ffffff;
            padding: 20px;
        }

    </style>
</head>
<body>
        <!-- Start Nav -->
    <nav class="navbar navbar-light navbar-expand-md" id="space">
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
    <!-- End Nav-->

<form id="form2" runat="server">


            <!-- freshmarket content -->
    <%--<h1 style="text-align:center;">Here's whats on the market for you</h1>--%>

    <%--<div data-bs-parallax-bg="true" style="height:500px;background-image:url(assets/img/Cash4crop4.jpg);background-position:center;background-size:cover;"></div>--%>

        <div data-bs-parallax-bg="true" style="height:500px;background-image:url(assets/img/TDNP4878.JPG);background-position:center;background-size:cover;">
        <h1 class="text-center text-white" data-aos="slide-up" data-aos-duration="900" data-aos-delay="450" style="padding-top:175px;"><br>Here's whats on the market for you<br></h1>
    </div>




        <div id="freshmarketcontent" >
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HeaderStyle-Width="50%" class="grid" BorderStyle="Ridge" GridLines="Horizontal">

               <Columns>
                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="lable1" runat="server" Text='<%#Eval("ItemType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lable2" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="lable3" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                    <asp:TemplateField HeaderText="Area">
                    <ItemTemplate>
                        <asp:Label ID="lable5" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Farm Address">
                    <ItemTemplate>
                        <asp:Label ID="lable9" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                    <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label ID="lable7" runat="server" Text='<%#Eval("CellNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("Image") %>' Height="200" Width="200" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>   
        </div>
    <!-- End FreshMarket Content -->

</form>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
    <script src="assets/js/Contact-Form-v2-Modal--Full-with-Google-Map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>

</body>
</html>
