using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Item
    {
        public Item()
        {
            Inventories = new HashSet<Inventory>();
            Keywords = new HashSet<Keyword>();
            Orders = new HashSet<Order>();
        }

        public int Itemid { get; set; }
        public string Item1 { get; set; }
        public decimal Price { get; set; }
        public string Descriptionforconsole { get; set; }

        public virtual ICollection<Inventory> Inventories { get; set; }
        public virtual ICollection<Keyword> Keywords { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}
