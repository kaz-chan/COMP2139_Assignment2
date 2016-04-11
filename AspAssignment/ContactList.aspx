<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Contact List"></asp:Label>
        </h1>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Contact List:"></asp:Label>
        </p>
        <p>
            <asp:ListBox ID="LbContacts" runat="server" Height="114px" Width="318px"></asp:ListBox>
            <asp:Button ID="BtnRemove" runat="server" Text="Remove Contact" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnEmpty" runat="server" Text="Empty List" />
        </p>
        <p>
            <asp:Button ID="BtnSelectAdditional" runat="server" Text="Select Additional Customers" OnClick="BtnSelectAdditional_Click" />
        </p>
    
    </div>
    </form>
</body>
</html>
