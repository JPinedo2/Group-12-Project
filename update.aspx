<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Group_12_Project.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
            background-color: #00FFFF;
        }
        .auto-style4 {
            background-color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            height: 27px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style2">Account Update</h2>
    <p>
        &nbsp;</p>
    <p class="auto-style2">
        Check the box for the information you want to update.</p>
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">Update</td>
            <td class="auto-style5">Current Value:</td>
            <td class="auto-style4">
                <asp:Label ID="lblNewVal" runat="server" Text="New Value:"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6">Email:
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:CheckBox ID="cbPass" runat="server" AutoPostBack="true" OnCheckedChanged="cbPass_CheckedChanged" />
            </td>
            <td class="auto-style4">Password:
                <asp:Label ID="lblPass" runat="server"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lblPassC" runat="server" Text="Confrim Password"></asp:Label>
                <asp:TextBox ID="txtPassC" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:CompareValidator ID="cvPassC" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPassC" ErrorMessage="Password Must Match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:CheckBox ID="cbFName" runat="server" AutoPostBack="true" OnCheckedChanged="cbFName_CheckedChanged" />
            </td>
            <td class="auto-style4">First Name:
                <asp:Label ID="lblFName" runat="server"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="First Name is Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:CheckBox ID="cbLName" runat="server" AutoPostBack="true" OnCheckedChanged="cbLName_CheckedChanged" />
            </td>
            <td class="auto-style4">Last Name:
                <asp:Label ID="lblLName" runat="server"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Last Name is Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:CheckBox ID="cbYOB" runat="server" AutoPostBack="true" OnCheckedChanged="cbYOB_CheckedChanged" />
            </td>
            <td class="auto-style4">YoB:
                <asp:Label ID="lblYOB" runat="server"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtYOB" runat="server">YYYY</asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvYOB" runat="server" ControlToValidate="txtYOB" ErrorMessage="Year of Birth is Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team12ConnectionString2 %>" DeleteCommand="DELETE FROM [Member] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Member] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT * FROM [Member] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Member] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Information" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
