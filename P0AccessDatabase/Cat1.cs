using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Cat1
    {
        public Cat1()
        {
            Cat12s = new HashSet<Cat12>();
        }

        public int Cat1id { get; set; }
        public string Category1 { get; set; }

        public virtual ICollection<Cat12> Cat12s { get; set; }
    }
}
