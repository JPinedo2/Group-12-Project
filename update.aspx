<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Group_12_Project.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        width: 50%;
        border-style: solid;
        border-width: 1px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style2">Account Update</h2>
<p class="auto-style2">
    Check the box for the information you wold like to update.</p>
    <p class="auto-style2">
        When finished click
        <asp:HyperLink ID="lnkLogoff" runat="server" NavigateUrl="~/success.aspx">here</asp:HyperLink>
&nbsp;to go to logoff page.</p>
<table align="center" class="auto-style3">
    <tr>
        <td>Update?</td>
        <td>Current Information</td>
        <td>
            <asp:Label ID="lblNInfo" runat="server" Text="New Information"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>Email:
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbPass" runat="server" OnCheckedChanged="cbPass_CheckedChanged" AutoPostBack="True" />
        </td>
        <td>Password:
            <asp:Label ID="lblPass" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPass" runat="server" Visible="False" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPassC" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="lblPassC" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;<asp:TextBox ID="txtPassC" runat="server" Visible="False" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPassC" ErrorMessage="Password Must Match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbFName" runat="server" OnCheckedChanged="cbFName_CheckedChanged" AutoPostBack="True" />
        </td>
        <td>First Name:
            <asp:Label ID="lblFName" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFName" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="First name required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbLName" runat="server" OnCheckedChanged="cbLName_CheckedChanged" AutoPostBack="True" />
        </td>
        <td>Last Name:
            <asp:Label ID="lblLName" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLName" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Last name required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:CheckBox ID="cbYOB" runat="server" OnCheckedChanged="cbYOB_CheckedChanged" AutoPostBack="True" />
        </td>
        <td>YOB:
            <asp:Label ID="lblYOB" runat="server"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtYOB" runat="server" Visible="False">YYYY</asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="revYOB" runat="server" ControlToValidate="txtYOB" ErrorMessage="4 digit year required" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team12ConnectionString2 %>" DeleteCommand="DELETE FROM [Member] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Member] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT * FROM [Member] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Member] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
        <td>
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
