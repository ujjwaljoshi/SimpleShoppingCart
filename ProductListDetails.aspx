<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductListDetails.aspx.cs" Inherits="ProductListDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
         <ItemTemplate>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            ImageUrl:
            <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
     <asp:Button ID="btnAddtoCart" runat="server" Text="AddtoCart" 
        onclick="btnAddtoCart_Click" />
        <br /> <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cart.aspx">View Shopping Cart</asp:HyperLink>

   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Name], [Description], [Price], [ImageUrl] FROM [Products] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" 
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
