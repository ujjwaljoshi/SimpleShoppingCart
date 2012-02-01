<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<asp:gridview ID="grdCart" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="grdCart_RowDeleting" onrowediting="grdCart_RowEditing" onrowupdating="grdCart_RowUpdating" 
            OnRowCancelingEdit="grdCart_RowCancelingEdit" 
       EmptyDataText="Your Cart is Empty. Add Items to Cart" DataKeyNames="itemid">
  <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />        
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Qty" HeaderText="Quantity" SortExpression="Qty" />
        <asp:BoundField DataField="filename" HeaderText="ImageUrl" 
            SortExpression="ImageUrl" />
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    
</asp:gridview>
Totalprice: <asp:Label runat="server" Text="Total Price:" ID="lbltotalprice"></asp:Label>
    </div>
    </form>
</body>
</html>
