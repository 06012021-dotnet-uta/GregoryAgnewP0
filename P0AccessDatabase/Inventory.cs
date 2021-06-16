using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Inventory
    {
        public int Storeid { get; set; }
        public int Itemid { get; set; }
        public int? Quantity { get; set; }

        public virtual Item Item { get; set; }
        public virtual Store Store { get; set; }
    }
}
