using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class User
    {
        public User()
        {
            Orders = new HashSet<Order>();
        }

        public int Userid { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Password { get; set; }
        public int? Defaultstore { get; set; }
        public string Location { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}
