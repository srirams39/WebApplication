<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>About</title>
             <link href="css/My.css" rel="stylesheet" />
        </head>
        <body>
            <h1>Welcome to our Learning Management System (LMS)!</h1>
            <p>We are dedicated to providing a comprehensive and user-friendly platform for learners and educators alike. Our mission is to facilitate seamless and effective learning experiences for everyone, anytime, anywhere.</p>
            <img src="Pictures/AboutPicture.JPG" id="image"/>
            <p>Our mission is to revolutionize education by empowering learners and educators with innovative tools and resources.</p>
            <p>We believe that education is the key to unlocking individual potential and driving societal progress. By leveraging technology, we aim to break down barriers to education and create a global community of lifelong learners.</p>
        </body>
    </html>
</asp:Content>