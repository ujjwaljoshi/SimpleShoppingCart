using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Order
/// </summary>
[Serializable]
public class Order
{
	  DateTime datetimeordered { get; set; }
        decimal totalprice { get; set; }
        
        
     //  public enum OrderStatus { Ordered = 1, Fullfilled = 2, Pending = 3 }
       // OrderStatus orderstatus;
       public List<Orderlineitems> orderlistqueue {get; set; }

       public Order()
        {
        
            
            if (orderlistqueue == null)
            {
                orderlistqueue = new List<Orderlineitems>();
                datetimeordered = DateTime.Now;            
            }
        }

     

       public void insertorderlineitems(int theitemid, string thename, string thefilename, int theqty, double theprice)
        {
          
                Orderlineitems neworderlineitems = new Orderlineitems();
                neworderlineitems.itemid = theitemid;
                neworderlineitems.name = thename;
                neworderlineitems.filename = thefilename;
                neworderlineitems.qty = theqty;
                neworderlineitems.price = theprice;
                orderlistqueue.Add(neworderlineitems);           
        }

       public int indexofid(int theitemid)
       {
           int k = 0;
           foreach (Orderlineitems orderlist in orderlistqueue)
           {
               if (orderlist.itemid == theitemid)
               {
                   return k;
               }
                k++;
           }
           return -1;
       }

       public void updateorderitemsqty(int index, int theqty)
       {           
           Orderlineitems items = orderlistqueue[index];
           items.qty = theqty;
       }

       public void deleteorderitem(int index)
       {           
           orderlistqueue.RemoveAt(index);

       }

        public double calculatetotalprice()
        {
            double k = 0;
            foreach (Orderlineitems orderlist in orderlistqueue)
            {
                k += orderlist.qty * orderlist.price;               
            }
            return k;
        }

        public void printitems()
        {
            foreach (Orderlineitems items in orderlistqueue)
            {
                Console.WriteLine("Items are: {0},{1},{2},{3}", 
                    items.itemid, items.name, items.qty, items.price);

            }
        }
    }

