<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="Cash4Crop2017.Sell" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cash4Crop Sell Page</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie" />
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/styles.css" />
    <link rel="stylesheet" href="assets/css/Hero-Technology.css" />
    <link rel="stylesheet" href="assets/css/Pretty-Footer.css" />
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css" />
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css" />

    <style>

        #GridView1
        {
            border-radius: 25px;
            border: 2px solid #73AD21;
            padding: 20px; 
            width: 200px;
            height: 150px;
        }

        #SellControl
        {
            float:right;
            width:40%;
            
        }

        #SellContent
        {
            margin-right:50%;
            padding-left:7em;
            width:100%;

        }
    </style>
</head>
<body>
            <!-- Start Nav -->
    <nav class="navbar navbar-light navbar-expand-md">
        <div class="container-fluid"><a class="navbar-brand navbar-brand-centered" href="#"> <img src="assets/img/IMG_1521.PNG" style="max-height:145px;"></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="FreshMark.aspx">Sign-Out</a></li>
                </ul>
        </div>
        </div>
    </nav>
    <!-- End Nav-->
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>

    <form id="form1" runat="server">
       <!-- Sell Control Start -->
        <div id="SellControl" >
                <div class="row register-form">
        <div class="col-md-8 col-md-offset-2">
            <form class="form-horizontal custom-form">
                <h1 style="text-align:center;">Sell all you want</h1>

                <div class="form-group">
                   
                    <div class="col-sm-4 label-column">
                        <%--<label class="control-label" for="name-input-field">Name </label>--%>
                    </div>
                    <div class="col-sm-6 input-column">
                        <%--<asp:TextBox ID="ItemTypeTxb" runat="server" class="form-control" placeholder="Item"></asp:TextBox>--%>
                        <%--<asp:DropDownList ID="ItemTypeDdl" runat="server" class="form-control" Enabled="true"></asp:DropDownList>--%>
                        <asp:DropDownList ID="ItemTypezz" runat="server" CssClass="form-control" OnSelectedIndexChanged="ItemTypezz_SelectedIndexChanged">
                            <asp:ListItem>Crop</asp:ListItem>
                            <asp:ListItem>Chicken</asp:ListItem>
                            <asp:ListItem>Potato</asp:ListItem>
                            <asp:ListItem>Tomato</asp:ListItem>
                            <asp:ListItem>Peri-peri</asp:ListItem>
                            <asp:ListItem>Pumpkin</asp:ListItem>
                            <asp:ListItem>Mango</asp:ListItem>
                            <asp:ListItem>Carrots</asp:ListItem>
                            <asp:ListItem>Beetroot</asp:ListItem>
                            <asp:ListItem>Avocados</asp:ListItem>
                            <asp:ListItem>Banana</asp:ListItem>
                            <asp:ListItem>Apple</asp:ListItem>
                            <asp:ListItem>Oragne</asp:ListItem>
                            <asp:ListItem>Lemon</asp:ListItem>
                            <asp:ListItem>Apricot</asp:ListItem>
                            <asp:ListItem>Butternut</asp:ListItem>
                        </asp:DropDownList>
                        
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <%--<label class="control-label" for="name-input-field">Surname </label>--%>
                    </div>
                    <div class="col-sm-6 input-column">
                        <%--<input class="form-control" type="text">--%>
                        <asp:TextBox ID="DescriptionTxb" runat="server" class="form-control" placeholder="Item Description" required=""></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <%--<label class="control-label" for="email-input-field">Email </label>--%>
                    </div>
                    <div class="col-sm-6 input-column">
                        <%--<input class="form-control" type="email">--%>
                        <asp:TextBox ID="PriceTxb" runat="server" class="form-control" placeholder="Price in number" required="" TextMode="Number"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <%--<label class="control-label" for="pawssword-input-field">Password </label>--%>
                    </div>
                    <div class="col-sm-6 input-column">
                        <%--<input class="form-control" type="password">--%>
                        <asp:TextBox ID="AddressTxb" runat="server" class="form-control" placeholder="Farm Address" required=""></asp:TextBox>
                    </div>
                </div>

               <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <%--<label class="control-label" for="repeat-pawssword-input-field">Repeat Password </label>--%>
                    </div>
                    <div class="col-sm-6 input-column">
                        <%--<input class="form-control" type="password">--%>
                        <asp:TextBox ID="NameTxb" runat="server" class="form-control" placeholder="Contact Name" required=""></asp:TextBox>
                    </div>
                </div>


               <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <%--<label class="control-label" for="repeat-pawssword-input-field">Repeat Password </label>--%>
                    </div>
                    <div class="col-sm-6 input-column">
                        <%--<input class="form-control" type="password">--%>
                        <asp:TextBox ID="NumberTxb" runat="server" class="form-control" placeholder="Cell Numbers" required="" TextMode="Phone"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <%--<label class="control-label" for="repeat-pawssword-input-field">Repeat Password </label>--%>
                    </div>
                    <div class="col-sm-6 input-column">
                        <%--<input class="form-control" type="password">--%>
                        <asp:Label ID="Label1" runat="server" Text="Upload Picture"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>

                <div class="checkbox">
                    <label>
                        <%--<input type="checkbox">I've read and accept the terms and conditions--%>
                        <%--<asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="I've read and accept the terms and conditions" />--%>
                    </label>
                </div>
                <hr />
                <%--<button class="btn btn-default submit-button" type="button">Submit Form</button>--%>
                <asp:Button ID="Button1" runat="server" Text="Submit Form" class="btn btn-default submit-button" OnClick="Button1_Click"/>
            </form>
        </div>
    </div>
        </div>
        <!-- Sell Control End -->


        <!-- Sell Content Start -->
        <div id="SellContent">
            <asp:GridView ID="GridView1" runat="server" Height="550px" Width="550px" AutoGenerateColumns="false" DataKeyNames="id"
                
        OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." gridlines="horizontal">
                

            <Columns>
                
                

                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="ItemTypeLbl" runat="server" Text='<%#Eval("ItemType") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="ItemType" runat="server" Text='<%# Eval("ItemType") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="DescriptionLbl" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                    </ItemTemplate>

                <EditItemTemplate>
                    <asp:TextBox ID="Description" runat="server" Text='<%# Eval("Description") %>'></asp:TextBox>
               </EditItemTemplate>

                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="PriceLbl" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                    </ItemTemplate>

                <EditItemTemplate>
                    <asp:TextBox ID="Price" runat="server" Text='<%# Eval("Price") %>'></asp:TextBox>
               </EditItemTemplate>

                </asp:TemplateField>

                    <asp:TemplateField HeaderText="Area">
                    <ItemTemplate>
                        <asp:Label ID="AddressLbl" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                    </ItemTemplate>

                <EditItemTemplate>
                    <asp:TextBox ID="Address" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
               </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Farm Address">
                    <ItemTemplate>
                        <asp:Label ID="NameLbl" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>

                <EditItemTemplate>
                    <asp:TextBox ID="Name" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
               </EditItemTemplate>

                </asp:TemplateField>


                    <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label ID="CellNumberLbl" runat="server" Text='<%#Eval("CellNumber") %>'></asp:Label>
                    </ItemTemplate>

                <EditItemTemplate>
                    <asp:TextBox ID="CellNumber" runat="server" Text='<%# Eval("CellNumber") %>'></asp:TextBox>
               </EditItemTemplate>

                </asp:TemplateField>


                  <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("Image") %>' Height="200" Width="200" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
            </Columns>

        </asp:GridView>
        </div>
        <!-- Sell Content End -->

    </form>

    <!-- Script -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- End Script -->

</body>
</html>
