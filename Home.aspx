<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>Home</title>
            <link href="css/My.css" rel="stylesheet" />
        </head>
        <body>
            <h2>Best place to Transform Your Career.</h2>
            <div class="gallery">
            <img style="padding:10px;" src="Pictures/Unlock Your Potential with LearnToCode.png"/>

            <p>Discover Professional Development Courses like Python, C#, Java, ASP .NET and many more...</p>
            <img src="Pictures/courses.png" width="500"/>
         </div>
        </body>
    </html>
</asp:Content>
