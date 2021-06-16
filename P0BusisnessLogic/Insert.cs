using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using P0AccessDatabase;

namespace P0BusisnessLogic
{
    /// <summary>
    /// Holds methods to enter things into the database.
    /// </summary>
    public class Insert : IInsert
    {
        P0Context context = new P0Context();
        User user = new();
        Order order = new();
        Inventory inventory = new();

        /// <summary>
        /// Adds a user to the database.
        /// </summary>
        /// <param name="firstname">Takes the user's first name as a string.</param>
        /// <param name="lastname">Takes the user's last name as a string.</param>
        /// <param name="password">Takes the user's password as a string.</param>
        /// <returns></returns>
        public bool InsertUser(string firstname, string lastname, string password)
        {
            //Console.WriteLine("test1");
            user.Firstname = firstname;
            user.Lastname = lastname;
            user.Password = password;
            context.Add(user);
            context.SaveChanges();

            if (context.Users.Where(x => (x.Firstname.ToUpper() == firstname.ToUpper()) && x.Lastname.ToUpper() == lastname.ToUpper() && x.Password == password).ToList().Count > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        /// <summary>
        /// Adds an order to the database.
        /// </summary>
        /// <param name="endcart">Takes the dictionary made by the cart with the items purchased and their quantities in the cart.</param>
        /// <param name="currentstore">Takes the currernt store's id as an int.</param>
        /// <param name="userfirstname">Takes the user's first name as a string.</param>
        /// <param name="userlastname">Takes the user's last name as a string.</param>
        public void InsertOrder(Dictionary<string, int> endcart, int currentstore, string userfirstname, string userlastname)
        {
            if (context.Orders.Select(x => x.Orderid).Count() > 0)
            {
                order.Orderid = context.Orders.Select(x => x.Orderid).Max() + 1;
            }
            else
            {
                order.Orderid = 1;
            }
            foreach (KeyValuePair<string, int> pair in endcart)
            {
                if (pair.Key != "")
                {
                    order.Itemid = context.Items.Where(x => x.Descriptionforconsole == pair.Key).Select(x => x.Itemid).FirstOrDefault();
                    order.Userid = context.Users.Where(x => (x.Firstname == userfirstname) && (x.Lastname == userlastname)).Select(x => x.Userid).FirstOrDefault();
                    order.Orderdate = DateTime.Now;
                    order.Storeid = currentstore;
                    order.Quantity = pair.Value;
                    context.Orders.Add(order);
                    context.SaveChanges();
                }
            }
            //error handeling?
        }

        /// <summary>
        /// Subtracts the inventory of a store based on what the user purchased from it.
        /// </summary>
        /// <param name="endcart">Takes the dictionary made by the cart with the items purchased and their quantities in the cart.</param>
        /// <param name="currentstore">Takes the currernt store's id as an int.</param>
        public bool AdjustInventory(Dictionary<string, int> endcart, int currentstore)
        {
            bool fail = false;
            foreach (KeyValuePair<string, int> pair in endcart)
            {
                if (pair.Key != "")
                {
                    int thisItemid = context.Items.Where(x => x.Descriptionforconsole == pair.Key).Select(x => x.Itemid).FirstOrDefault();
                    var onlythis = context.Inventories.Where(x => (x.Itemid == thisItemid) && (x.Storeid == currentstore)).FirstOrDefault();
                    var lowamount = context.Inventories.Where(x => (x.Itemid == thisItemid) && (x.Storeid == currentstore)).Select(x=>x.Quantity).FirstOrDefault();
                    if (lowamount < pair.Value)
                    {
                        fail = true;
                    }
                    else
                    { 
                        onlythis.Quantity -= pair.Value;
                        fail = false;
                    }
                }
            }
            //error handeling?
            return fail;
        }
        public void Savechangez()
        {
            context.SaveChanges();
        }
    }
}
