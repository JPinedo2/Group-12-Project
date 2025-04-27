<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="read.aspx.cs" Inherits="Group_12_Project.read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 50%;
    }
    .auto-style2 {
        font-size: x-large;
        text-align: center;
    }
    .auto-style4 {
        font-size: large;
        text-align: right;
        width: 497px;
    }
        .auto-style7 {
            text-align: center;
        }
        .auto-style10 {
        text-align: left;
        width: 485px;
    }
        .auto-style11 {
            width: 92px;
        }
    .auto-style12 {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3">
            <h2>Welcome Back!</h2>
            <p class="auto-style12">
                Use member credentials to login.</p>
            <p class="auto-style12">
                &nbsp;</p>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="rfvEmail0" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is incorrect"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Password:&nbsp;
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is incorrect"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3">&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team12ConnectionString %>" DeleteCommand="DELETE FROM [Member] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Member] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" ProviderName="<%$ ConnectionStrings:S25Team12ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Member] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Member] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
                <DeleteParameters>
                    <asp:Parameter Name="Email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="LName" Type="String" />
                    <asp:Parameter Name="YOB" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="Email" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="LName" Type="String" />
                    <asp:Parameter Name="YOB" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
