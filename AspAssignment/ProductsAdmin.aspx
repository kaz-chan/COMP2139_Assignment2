<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductsAdmin.aspx.cs" Inherits="MaintainProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" Runat="Server">
    <div>
    
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Maintain Products"></asp:Label>
        </h1>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Products List"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="ProductCode" DataSourceID="SqlDataSource1" Width="796px">
                <Columns>
                    <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
                    <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="To add a new product, enter the product information and click Add Product."></asp:Label>
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Product Code"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbCode" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbCode" Display="None" ErrorMessage="Product code is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbName" Display="None" ErrorMessage="Name is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Version"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbVersion" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TbVersion" Display="None" ErrorMessage="Version is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Release Date"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbDate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TbDate" Display="None" ErrorMessage="Release date is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsConnection %>" 
                SelectCommand="SELECT * FROM [Products]" 
                UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] =@Version , [ReleaseDate] = ReleaseDate WHERE [ProductCode] = @ProductCode" 
                DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @ProductCode"
                InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)"
                >

            <UpdateParameters>
	            <asp:Parameter Type="String" Name="Name"></asp:Parameter>
	            <asp:Parameter Type="Double" Name="Version"></asp:Parameter>
	            <asp:Parameter Type="String" Name="ReleaseDate"></asp:Parameter>
	        </UpdateParameters>
            
            <InsertParameters>
                <asp:Parameter Type="String" Name="ProductCode"></asp:Parameter>
                <asp:Parameter Type="String" Name="Name"></asp:Parameter>
	            <asp:Parameter Type="Double" Name="Version"></asp:Parameter>
	            <asp:Parameter Type="DateTime" Name="ReleaseDate"></asp:Parameter>
            </InsertParameters>
        </asp:SqlDataSource>
</asp:Content>