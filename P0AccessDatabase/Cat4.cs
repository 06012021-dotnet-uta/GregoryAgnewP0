using System;
using System.Collections.Generic;

#nullable disable

namespace P0AccessDatabase
{
    public partial class Cat4
    {
        public Cat4()
        {
            Cat34s = new HashSet<Cat34>();
        }

        public int Cat4id { get; set; }
        public string Category4 { get; set; }

        public virtual ICollection<Cat34> Cat34s { get; set; }
    }
}
