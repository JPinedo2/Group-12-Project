<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Group_12_Project.delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .delete-wrapper {
            background-color: #d9e7f4;
            border-radius: 8px;
            padding: 30px;
            width: 700px;
            margin: 40px auto;
            color: black;
        }

        .delete-wrapper td {
            padding: 10px;
        }

        .delete-wrapper .label {
            text-align: right;
            width: 150px;
            font-weight: bold;
        }

        .delete-wrapper .input {
            width: 300px;
        }

        .delete-wrapper .button-center {
            text-align: center;
        }

        .error-message {
            color: red;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="delete-wrapper">
        <table style="width: 100%;">
            <tr>
                <td colspan="2" style="text-align: center; font-weight: bold;">
                    To delete your account, enter your email address and press the delete button.
                </td>
            </tr>
            <tr>
                <td class="label">Email:</td>
                <td class="input">
                    <asp:TextBox ID="txtEmail" runat="server" Width="250px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-center">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete My Account" OnClick="btnDelete_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMessage" runat="server" CssClass="error-message" />
                </td>
            </tr>
        </table>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:S25Team12ConnectionString2 %>"
        DeleteCommand="DELETE FROM [Member] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Member] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT * FROM [Member] WHERE (([Email] = @Email) AND ([Email] = @Email2))" UpdateCommand="UPDATE [Member] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
            <asp:Parameter Name="Email2" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FName" Type="String" />
            <asp:Parameter Name="LName" Type="String" />
            <asp:Parameter Name="YOB" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>