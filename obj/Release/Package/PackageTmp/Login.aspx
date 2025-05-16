<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 50%;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            text-align: left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
    <br />
    </p>
    <p>
    </p>
    <table align="center" class="auto-style12" style="background-color: #CCCCCC">
        <tr>
            <td class="auto-style14">
                <asp:Label runat="server" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label runat="server" Text="Password"></asp:Label>
            </td>
            <td id="txtpass" class="auto-style15">
                <asp:TextBox type="password" ID="txtpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style15">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" SelectCommand="SELECT * FROM [Logins] WHERE (([User_Email] = @User_Email) AND ([User_Pass] = @User_Pass))">
                    <SelectParameters>
                        <asp:Parameter Name="User_Email" Type="String" />
                        <asp:Parameter Name="User_Pass" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Text="Submit" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="lblerror" runat="server" ForeColor="Red" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    </asp:Content>