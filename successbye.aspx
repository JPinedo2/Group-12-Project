<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="successbye.aspx.cs" Inherits="Group_12_Project.successbye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .message-wrapper {
            text-align: center;
            margin-top: 100px;
            padding: 30px;
            background-color: #ffffffcc;
            border-radius: 10px;
            width: 60%;
            margin-left: auto;
            margin-right: auto;
        }

        .success-title {
            font-size: x-large;
            color: black;
            font-weight: bold;
        }

        .goodbye-text {
            margin-top: 10px;
            font-size: large;
        }

        .home-button {
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="message-wrapper">
        <div class="success-title">Your account has been successfully deleted.</div>
        <div class="goodbye-text">Hope to see you again :(</div>
        <div class="home-button">
            <asp:Button ID="btnBackHome" runat="server" Text="Return to Home" OnClick="btnBackHome_Click" />
        </div>
    </div>
</asp:Content>