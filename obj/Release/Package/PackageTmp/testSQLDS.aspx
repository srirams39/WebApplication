<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testSQLDS.aspx.cs" Inherits="WebApplication.testSQLDS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" ProviderName="<%$ ConnectionStrings:5680LabsConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Logins]"></asp:SqlDataSource>
    </form>
</body>
</html>
