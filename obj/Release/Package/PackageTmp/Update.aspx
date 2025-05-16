<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="WebApplication.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="lblEmail"></asp:Label>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtPass" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCpass" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtCpass" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cv1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCpass" ErrorMessage="password must match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">First Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtFname" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtLname" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Year of Birth</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtYob" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtYob" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="txtYob" ErrorMessage="Must be a four digit year" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnsignup" runat="server" OnClick="btnsignup_Click" Text="Sign up" />
    
<p>&nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE (([User_Email] = @User_Email))" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
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
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_Pass" Type="String" />
            <asp:Parameter Name="User_YOB" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Pass" Type="String" />
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_YOB" Type="Int32" />
            <asp:Parameter Name="User_Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
