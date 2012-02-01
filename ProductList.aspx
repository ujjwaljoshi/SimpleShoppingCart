<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="ProductList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" >
          <ItemTemplate>
            <asp:ImageButton ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl","~/Images\\{0}")  %>' 
            PostBackUrl='<%# Eval("ProductID", 
"ProductListDetails.aspx?ProductID={0}") %>' />   
            <br />
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />                  
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' />
            <br />            
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />                                     
        </ItemTemplate>   
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
