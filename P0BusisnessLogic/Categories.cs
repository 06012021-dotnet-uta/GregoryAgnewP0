using P0AccessDatabase;
using System.Linq;
using System.Collections.Generic;

namespace P0
{
    /// <summary>
    /// Holds methods for showing a user different categories.
    /// </summary>
    public class Categories : ICategories
    {

        P0Context context = new P0Context();

        /// <summary>
        /// Gets all top-level categories from database. Parameterless.
        /// </summary>
        /// <returns>Returns a list of top-level categories as strings.</returns>
        public List<string> Category1()
        {
            List<string> category1 = context.Cat1s.Select(i => i.Category1).Distinct().ToList();
            return category1;
        }
        /// <summary>
        /// Gets all second-level categories from database.
        /// </summary>
        /// <param name="userinput"> Takes a string user input from user choice.</param>
        /// <returns>Returns a list of 2nd level categories as strings</returns>

        public List<TempTable> Category2(string userinput)
        {
            var doublejoin = context.Cat1s.Join(context.Cat12s, x => x.Cat1id, y => y.Cat1id, (x, y) => new TempTable { Column1str = x.Category1, Column2int = y.Cat2id }).Join(context.Cat2s, m => m.Column2int, n => n.Cat2id, (m, n) => new TempTable { Column1str = m.Column1str, Column2str = n.Category2 }).Where(z => z.Column1str.ToUpper() == userinput).ToList();
            return doublejoin;
        }
        /// <summary>
        /// Gets all third-level categories from database.
        /// </summary>
        /// <param name="userinput">Takes a string user input from user choice.</param>
        /// <returns>Returns a list of 3rd level categories as strings</returns>

        public List<TempTable> Category3(string userinput)
        {
            var doublejoin = context.Cat2s.Join(context.Cat23s, x => x.Cat2id, y => y.Cat2id, (x, y) => new TempTable { Column1str = x.Category2, Column2int = y.Cat3id }).Join(context.Cat3s, m => m.Column2int, n => n.Cat3id, (m, n) => new TempTable { Column1str = m.Column1str, Column2str = n.Category3 }).Where(z => z.Column1str.ToUpper() == userinput).ToList();
            return doublejoin;
        }

        /// <summary>
        /// Gets all fourth-level categories from database.
        /// </summary>
        /// <param name="userinput">Takes a string user input from user choice.</param>
        /// <returns>Returns a list of 4rd level categories as strings</returns>
        public List<TempTable> Category4(string userinput)
        {
            var doublejoin = context.Cat3s.Join(context.Cat34s, x => x.Cat3id, y => y.Cat3id, (x, y) => new TempTable { Column1str = x.Category3, Column2int = y.Cat4id }).Join(context.Cat4s, m => m.Column2int, n => n.Cat4id, (m, n) => new TempTable { Column1str = m.Column1str, Column2str = n.Category4 }).Where(z => z.Column1str.ToUpper() == userinput).ToList();
            return doublejoin;
        }

    }

    /// <summary>
    /// Used to make passing things from the database easier.
    /// </summary>
    public class TempTable
    {
        public string Column1str { get; set; }

        public string Column2str { get; set; }

        public int Column1int { get; set; }

        public int Column2int { get; set; }

        public double Column1double { get; set; }

        public double Column2double { get; set; }
    }

    /// <summary>
    /// Contains methods that can show the user thier order history or a store's order history.
    /// </summary>
    public class ShowOrders : IShowOrders
    {
        P0Context context = new P0Context();

        /// <summary>
        /// Shows all orders a customer has had.
        /// </summary>
        /// <param name="firstname">Takes the user's first name as a string.</param>
        /// <param name="lastname">Takes the user's last name as a string.</param>
        /// <returns>Returns a string with each order a user has had.</returns>
        public string ShowAllOrders(string firstname, string lastname)
        {
            int userid = context.Users.Where(x => (x.Firstname == firstname) && (x.Lastname == lastname)).Select(x => x.Userid).FirstOrDefault();
            var orderinfo = context.Orders.Where(x => x.Userid == userid).ToList();
            decimal itemprice = 0;
            string allorder = "";
            string allitem = "";
            if (orderinfo.Count() > 0)
            {
                foreach (Order order in orderinfo)
                {
                    string itemname = context.Items.Where(x => x.Itemid == order.Itemid).Select(x => x.Descriptionforconsole).FirstOrDefault();
                    itemprice += context.Items.Where(x => x.Itemid == order.Itemid).Select(x => x.Price).FirstOrDefault();
                    if (!allorder.Contains(itemname))
                    {
                        allitem += $"{itemname}\n";
                    }
                    allorder += $"At {order.Orderdate} you bought a total of ${itemprice} worth of items.\nThose items were the following:\n{allitem}\n\n";
                }
                return allorder;
            }
            else
            {
                return "You have no previous orders.";
            }
        }

        public string ShowStoreOrders(int storeid)
        {
            var orderinfo = context.Orders.Where(x => x.Storeid == storeid).ToList();
            decimal itemprice = 0;
            string allorder = "";
            if (orderinfo.Count() > 0)
            {
                foreach (Order order in orderinfo)
                {
                    string firstname = context.Users.Where(x => x.Userid == order.Userid).Select(x => x.Firstname).FirstOrDefault();
                    string lastname = context.Users.Where(x => x.Userid == order.Userid).Select(x => x.Lastname).FirstOrDefault();
                    itemprice += context.Items.Where(x => x.Itemid == order.Itemid).Select(x => x.Price).FirstOrDefault();
                    allorder += $"At {order.Orderdate}, {firstname} {lastname} bought items worth a total of {itemprice}.\n\n";
                }
                return allorder;
            }
            else
            {
                return "There have been no orders from this location.";
            }
        }
    }

    public class ShowUsers : IShowUsers
    {
        public string SearchAllUsers(string userinput)
        {
            string allusernames = "";
            P0Context context = new P0Context();
            if (context.Users.Where(x => x.Lastname == userinput).Count() > 0)
            {
                var allusers = context.Users.Where(x => x.Lastname.ToUpper() == userinput.ToUpper());
                foreach (var user in allusers)
                {
                    allusernames += $"{user.Firstname} {user.Lastname}\n";
                }
            }
            else if (context.Users.Where(x => x.Firstname == userinput).Count() > 0)
            {
                var allusers = context.Users.Where(x => x.Firstname.ToUpper() == userinput.ToUpper());
                foreach (var user in allusers)
                {
                    allusernames += $"{user.Firstname} {user.Lastname}\n";
                }
            }
            else
            {
                allusernames = "There are no users by that name.";
            }
            return allusernames;
        }
    }
}
