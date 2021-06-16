using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Cat12
    {
        public int Cat1id { get; set; }
        public int Cat2id { get; set; }

        public virtual Cat1 Cat1 { get; set; }
        public virtual Cat2 Cat2 { get; set; }
    }
}
