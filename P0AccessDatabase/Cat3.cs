using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Cat3
    {
        public Cat3()
        {
            Cat23s = new HashSet<Cat23>();
            Cat34s = new HashSet<Cat34>();
        }

        public int Cat3id { get; set; }
        public string Category3 { get; set; }

        public virtual ICollection<Cat23> Cat23s { get; set; }
        public virtual ICollection<Cat34> Cat34s { get; set; }
    }
}
