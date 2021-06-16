using P0AccessDatabase;
using System.Linq;
using System.Collections.Generic;

namespace P0BusisnessLogic
{
    public class Categories
    {
        P0Context context = new P0Context();
        public List<string> Category1()
        {
            List<string> category1 = context.Cat1s.Select(i => i.Category1).Distinct().ToList();
            return category1;
        }

        public List<TempTable> Category2(string userinput)
        {
            var doublejoin = context.Cat1s.Join(context.Cat12s, x => x.Cat1id, y => y.Cat1id, (x, y) => new TempTable { Column1str = x.Category1, Column2int = y.Cat2id }).Join(context.Cat2s, m => m.Column2int, n => n.Cat2id, (m, n) => new TempTable { Column1str = m.Column1str, Column2str = n.Category2 }).Where(z => z.Column1str.ToUpper() == userinput).ToList();
            return doublejoin;
        }

        public List<TempTable> Category3(string userinput)
        {
            var doublejoin = context.Cat2s.Join(context.Cat23s, x => x.Cat2id, y => y.Cat2id, (x, y) => new TempTable { Column1str = x.Category2, Column2int = y.Cat3id }).Join(context.Cat3s, m => m.Column2int, n => n.Cat3id, (m, n) => new TempTable { Column1str = m.Column1str, Column2str = n.Category3 }).Where(z => z.Column1str.ToUpper() == userinput).ToList();
            return doublejoin;
        }

        public List<TempTable> Category4(string userinput)
        {
            var doublejoin = context.Cat3s.Join(context.Cat34s, x => x.Cat3id, y => y.Cat3id, (x, y) => new TempTable { Column1str = x.Category3, Column2int = y.Cat4id }).Join(context.Cat4s, m => m.Column2int, n => n.Cat4id, (m, n) => new TempTable { Column1str = m.Column1str, Column2str = n.Category4 }).Where(z => z.Column1str.ToUpper() == userinput).ToList();
            return doublejoin;
        }

    }

    public class TempTable
    {
        public string Column1str { get; set; }

        public string Column2str { get; set; }

        public int Column1int { get; set; }

        public int Column2int { get; set; }

        public double Column1double { get; set; }

        public double Column2double { get; set; }
    }
}
