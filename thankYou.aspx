<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="thankYou.aspx.cs" Inherits="Group_12_Project.thankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style2">Thank you for you donation!</h2>
    <p class="auto-style2">Click
        <asp:HyperLink ID="lnkSuccess" runat="server" NavigateUrl="~/success.aspx">here</asp:HyperLink>
&nbsp;to go to main account directory.</p>
<p class="auto-style2">
    &nbsp;</p>
<p class="auto-style2">
    &nbsp;</p>
<p class="auto-style2">
    &nbsp;</p>
<p class="auto-style2">
    <asp:Image ID="Image1" runat="server" Height="502px" ImageUrl="C:\Users\jp1205\Desktop\BCIS 4720\Group 12 Project\Images\smiley.jpg" Width="886px" />
</p>
</asp:Content>
