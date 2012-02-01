using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindGrid();
    }

    protected void grdCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQuantity = (TextBox) grdCart.Rows[e.RowIndex].Cells[2].Controls[0];
        int quantity = Convert.ToInt32(txtQuantity.Text);
        Profile.MyCart.updateorderitemsqty(e.RowIndex, quantity);
        grdCart.EditIndex = -1;
        bindGrid();
        
    }

    protected void grdCart_RowCancelingEdit
                (object sender, GridViewCancelEditEventArgs e)
    {
        grdCart.EditIndex = -1;
        bindGrid();
    }

    protected void grdCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Profile.MyCart.deleteorderitem(e.RowIndex);
        bindGrid();
    }

    protected void grdCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdCart.EditIndex = e.NewEditIndex;
        bindGrid();
        
    }

    public void bindGrid()
    {
        grdCart.DataSource = Profile.MyCart.orderlistqueue;
        DataBind();
        lbltotalprice.Text = (Profile.MyCart.calculatetotalprice()).ToString();
    }
}