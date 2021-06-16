using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Keyword
    {
        public string Keyword1 { get; set; }
        public int Itemid { get; set; }

        public virtual Item Item { get; set; }
    }
}
