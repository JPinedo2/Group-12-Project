<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Group_12_Project.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 50%;
        }
        .auto-style3 {
        text-align: right;
        width: 476px;
    }
    .auto-style4 {
        text-align: left;
        width: 133px;
    }
        .auto-style5 {
            text-align: center;
        }
    .auto-style6 {
            text-align: left;
            width: 430px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style5" colspan="3">Complete fields below to register</td>
        </tr>
        <tr>
            <td class="auto-style3">Email</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtREmail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfvREmail" runat="server" ControlToValidate="txtCEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm Email</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCEmail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:CompareValidator ID="cvREmail" runat="server" ControlToCompare="txtREmail" ControlToValidate="txtCEmail" ErrorMessage="Emails must match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtRPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfvRPass" runat="server" ErrorMessage="Password is required" ControlToValidate="txtCPass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:CompareValidator ID="cvRPass" runat="server" ControlToCompare="txtRPass" ControlToValidate="txtCPass" ErrorMessage="Passwords must match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">First Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="First name is required" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Last name is required" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Year of Birth</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtYOB" runat="server">YYYY</asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RegularExpressionValidator ID="revYOB" runat="server" ErrorMessage="Year of birth must be four digits" ValidationExpression="\d{4}" ControlToValidate="txtYOB"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style5">
                <asp:Label ID="lblEMsg" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team12ConnectionString2 %>" DeleteCommand="DELETE FROM [Member] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Member] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT * FROM [Member] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Member] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email" ProviderName="<%$ ConnectionStrings:S25Team12ConnectionString2.ProviderName %>">
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
