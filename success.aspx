<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="Group_12_Project.success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style2">
        <span class="auto-style3">Welcome </span>
        <asp:Label ID="lblMsg2" runat="server" CssClass="auto-style3"></asp:Label>
        !</h2>
<h2 class="auto-style2">
        Y<span class="auto-style3">ou have successfully logged in.</span></h2>
<p class="auto-style2">
        If you would like to update your account information click
        <asp:HyperLink ID="lnkUpdate" runat="server" NavigateUrl="~/update.aspx">here</asp:HyperLink>
        .</p>
    <p class="auto-style2">
        If you would like to delete your account click
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/delete.aspx">here</asp:HyperLink>
        .</p>
    <p class="auto-style2">
        If you would like to donate click
        <asp:HyperLink ID="lnkDonate" runat="server" NavigateUrl="~/donations.aspx">here</asp:HyperLink>
        .</p>
    <p class="auto-style2">
        <asp:Button ID="btnLogoff" runat="server" OnClick="btnLogoff_Click" Text="Logoff" />
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        <asp:Image ID="imgSammy" runat="server" Height="281px" ImageUrl="C:\Users\jp1205\Desktop\BCIS 4720\Group 12 Project\Images\Sammy.PNG" Width="548px" />
    </p>
</asp:Content>
