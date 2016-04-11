<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 77px;
        }
        .auto-style3 {
            width: 385px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Customers</h1>
        <asp:Label ID="Label1" runat="server" Text="Select Customer:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DdlCustomers" runat="server" AutoPostBack="True" Width="150px" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID" OnSelectedIndexChanged="DdlCustomers_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Address:</td>
                <td class="auto-style3">
                    <asp:Label ID="LblAddress" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Phone:</td>
                <td class="auto-style3">
                    <asp:Label ID="LblPhone" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style3">
                    <asp:Label ID="LblEmail" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="BtnAddList" runat="server" Text="Add to Contact List" OnClick="BtnAddList_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnDisplayList" runat="server" Text="Display Contact List"/>
        <br />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SportsConnection %>' SelectCommand="SELECT [CustomerID], [Name], [Address], [Phone], [Email] FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
    </form>
</body>
</html>
