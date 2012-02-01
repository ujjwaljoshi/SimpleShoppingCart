using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductListDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddtoCart_Click(object sender, EventArgs e)
    {

        int theitemid = int.Parse(Request.QueryString["ProductId"]);
        string thename = ((Label)DataList1.Controls[0].FindControl("NameLabel")).Text;
        string thefilename = ((Label)DataList1.Controls[0].FindControl("ImageUrlLabel")).Text;
        int theqty = 1;
        double theprice = double.Parse(((Label)DataList1.Controls[0].FindControl("PriceLabel")).Text);
        if (Profile.MyCart == null)
        {
            Profile.MyCart = new Order();
        }
        Profile.MyCart.insertorderlineitems(theitemid, thename, thefilename, theqty, theprice);
Server.Transfer("ProductList.aspx");
        
    }
}