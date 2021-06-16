using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using P0AccessDatabase;

namespace P0
{
    class CheckThings
    {
        P0Context context = new();
        public bool CheckUser(string firstname, string lastname) 
        {
            
        if (context.Users.Where(x => (x.Firstname.ToUpper() == firstname.ToUpper()) && x.Lastname.ToUpper() == lastname.ToUpper()).ToList().Count > 0)
            {
                return true;
            }
        else
            {
                return false;
            }
        }

        public bool CheckPassword(string password)
        {

            if (context.Users.Where(x => (x.Password == password)).ToList().Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
