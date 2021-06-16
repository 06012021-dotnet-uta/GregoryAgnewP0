using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Cat34
    {
        public int Cat3id { get; set; }
        public int Cat4id { get; set; }

        public virtual Cat3 Cat3 { get; set; }
        public virtual Cat4 Cat4 { get; set; }
    }
}
