<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginSuccess.aspx.cs" Inherits="WebApplication.LoginSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        Welcome
        <asp:Label ID="lbluser" runat="server" Text="lbluser"></asp:Label>
&nbsp;you have authenticated</p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="UpdatePage" Width="93px" />
    </p>
    <p>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" Text="DeletePage" OnClick="Button2_Click" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>