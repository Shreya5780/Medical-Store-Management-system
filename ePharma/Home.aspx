<%@ Page Title="" Language="C#" MasterPageFile="~/PharmaSite.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
    /* Add custom CSS styles for your page here */
    body {
        background-color: #FFFFFF; /* White background color for the entire page */
    }

    .container {
        max-width: 1000px;
        margin: 0 auto;
        margin-top: 50px;
        text-align: center;
        background-color: #FFFFFF; /* White background color for the container */
    }

    .header {
        font-size: 30px;
        margin-bottom: 20px;
        color: #4CAF50; /* Blue header text color */
    }

    .login-box {
        border: 2px solid #4CAF50; /* Green border color */
        border-radius: 10px; /* Rounded corners */
        padding: 20px;
        background-color: #FFFFFF; /* White background color for the login box */
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.4);
    }

    .login-form {
        max-width: 290px;
        margin: 0 auto;
    }

    .input-box {
        margin-bottom: 30px;
    }

    .button {
        background-color: #4CAF50; /* Green button background color */
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px; /* Rounded button corners */
        cursor: pointer;
        margin-top: 10px;
    }

    .button:hover {
        background-color: darkgreen; /* Darker green on hover */
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="header"><br/>
            Welcome to ePharmacy
        </div>
        <div class="login-box">
            <div class="login-form">
                <div class="input-box">
                    <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtUserName" ForeColor="#990000"></asp:RequiredFieldValidator>
                </div>
                <div class="input-box">
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="#990000"></asp:RequiredFieldValidator>
                </div>
                <div class="input-box">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" />
                    <asp:Button ID="lnkRegister" runat="server" Text="New Registration" PostBackUrl="~/Registration.aspx" CausesValidation="False" CssClass="button"/>
                </div>
                <div class="input-box">
                    <asp:Label ID="lblResult" runat="server" Text="" CssClass="result-label"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
