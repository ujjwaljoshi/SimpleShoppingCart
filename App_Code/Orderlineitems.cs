using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Orderlineitems
/// </summary>
[Serializable]
public class Orderlineitems
{

		
        public int itemid { get; set; }
        public string name { get; set; }
        public string filename {get; set;}
        public int qty { get; set; }
        public double price { get; set; }

        public Orderlineitems()
        {
        }

       public Orderlineitems(int theitemid, string thename, string thefilename, int theqty, double theprice)
        {
            itemid = theitemid;
            name = thename;
            filename = thefilename;
            qty = theqty;
            price = theprice;
        }
	}
