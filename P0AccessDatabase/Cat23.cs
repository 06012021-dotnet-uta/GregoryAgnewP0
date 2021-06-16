using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Cat23
    {
        public int Cat2id { get; set; }
        public int Cat3id { get; set; }

        public virtual Cat2 Cat2 { get; set; }
        public virtual Cat3 Cat3 { get; set; }
    }
}
