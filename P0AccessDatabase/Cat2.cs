using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Cat2
    {
        public Cat2()
        {
            Cat12s = new HashSet<Cat12>();
            Cat23s = new HashSet<Cat23>();
        }

        public int Cat2id { get; set; }
        public string Category2 { get; set; }

        public virtual ICollection<Cat12> Cat12s { get; set; }
        public virtual ICollection<Cat23> Cat23s { get; set; }
    }
}
