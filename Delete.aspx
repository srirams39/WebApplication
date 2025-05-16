<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="WebApplication.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE ([User_Email] = @User_Email)" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
                <DeleteParameters>
                    <asp:Parameter Name="User_Email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="User_Email" Type="String" />
                    <asp:Parameter Name="User_Pass" Type="String" />
                    <asp:Parameter Name="User_FName" Type="String" />
                    <asp:Parameter Name="User_LName" Type="String" />
                    <asp:Parameter Name="User_YOB" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="User_Email" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="User_Pass" Type="String" />
                    <asp:Parameter Name="User_FName" Type="String" />
                    <asp:Parameter Name="User_LName" Type="String" />
                    <asp:Parameter Name="User_YOB" Type="Int32" />
                    <asp:Parameter Name="User_Email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        Confirm Email:
        <asp:TextBox ID="txtCpass" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtCpass" ErrorMessage="Required"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cv1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtCpass" ErrorMessage=" Email must match"></asp:CompareValidator>

        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete My Account" />
        <br />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
