<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="donations.aspx.cs" Inherits="Group_12_Project.donations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        width: 50%;
        border: 1px solid #FFCC00;
    }
    .auto-style4 {
            text-align: right;
            width: 449px;
        }
    .auto-style5 {
        text-align: left;
        width: 129px;
    }
        .auto-style6 {
            text-align: left;
            width: 458px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style2">Support our Park</h2>
<p class="auto-style2" data-end="346" data-start="90">
    If you&#39;d like to support the park and help us continue providing excellent service and a top-quality experience, please consider making a donation.<br data-end="240" data-start="237" />
    Enter your donation amount below, then click the <strong data-end="299" data-start="289">Donate</strong> button. After that, please mail your check to:</p>
<p class="auto-style2" data-end="391" data-start="348">
    <strong data-end="391" data-start="348">1111 Dog Park Dr.<br data-end="370" data-start="367" />
    Southlake, TX 76092</strong></p>
<p class="auto-style2" data-end="420" data-start="393">
    Thank you for your support!</p>
<table align="center" class="auto-style3">
    <tr>
        <td class="auto-style4">Email</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Donation Amount</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="Must enter an amount"></asp:RequiredFieldValidator>
&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAmount" ErrorMessage="Please enter valid amount" ValidationExpression="^\$?\d{1,3}(,\d{3})*(\.\d{1,2})?$|^\$?\d+(\.\d{1,2})?"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<p class="auto-style2" data-end="420" data-start="393">
    <asp:Button ID="btnDonate" runat="server" OnClick="btnDonate_Click" Text="Donate" />
</p>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team12ConnectionString %>" DeleteCommand="DELETE FROM [Donations] WHERE [DonationsID] = @DonationsID" InsertCommand="INSERT INTO [Donations] ([DonationsID], [DonAmount], [Email]) VALUES (@DonationsID, @DonAmount, @Email)" SelectCommand="SELECT * FROM [Donations] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Donations] SET [DonAmount] = @DonAmount, [Email] = @Email WHERE [DonationsID] = @DonationsID">
    <DeleteParameters>
        <asp:Parameter Name="DonationsID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="DonationsID" Type="Int32" />
        <asp:Parameter Name="DonAmount" Type="Decimal" />
        <asp:Parameter Name="Email" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter Name="Email" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="DonAmount" Type="Decimal" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="DonationsID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<p class="auto-style2" data-end="420" data-start="393">
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
