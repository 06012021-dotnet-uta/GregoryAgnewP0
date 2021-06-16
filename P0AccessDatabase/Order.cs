using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Order
    {
        public int Orderid { get; set; }
        public int? Storeid { get; set; }
        public int? Itemid { get; set; }
        public int? Userid { get; set; }
        public int? Quantity { get; set; }
        public DateTime Orderdate { get; set; }

        public virtual Item Item { get; set; }
        public virtual Store Store { get; set; }
        public virtual User User { get; set; }
    }
}
