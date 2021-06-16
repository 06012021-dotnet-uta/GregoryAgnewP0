using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using P0AccessDatabase;

namespace P0BusisnessLogic
{
    public class Insert
    {
        P0Context context = new P0Context();
        User user = new();
        Order order = new();
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

        public bool InsertOrder(Dictionary<string, int> endcart, int currentstore, string userfirstname, string userlastname)
        {
            foreach (KeyValuePair<string, int> pair in endcart)
            {
                if (pair.Key != "")
                {
                    order.Itemid = context.Items.Where(x => x.Descriptionforconsole == pair.Key).Select(x => x.Itemid).FirstOrDefault();
                    order.Userid = context.Users.Where(x => (x.Firstname == userfirstname) && (x.Lastname == userlastname)).Select(x => x.Userid).FirstOrDefault();
                    order.Orderdate = DateTime.Now;
                    order.Storeid = currentstore;
                    order.Quantity = pair.Value;
                }
            }
            context.Add(order);
            return true;
        }
    }
}
