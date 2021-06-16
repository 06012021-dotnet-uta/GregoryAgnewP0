using System.Collections.Generic;
using P0BusisnessLogic;

namespace P0
{
    // Used in main program and Menue to print out the contents of a list to Console.
    public class Listoutput
    {
        // Takes in a list and returns nothing.
        public string Listout(List<string> category)
        {
            string concstring = "\n";
            /* Iterrates among all strings in list.  Would like to be able to
            change to work with all information. */
            foreach (string cat in category)
            {
                // Creates a long string based on inputs with each item on a new line.
                concstring += $"{cat}\n";
            }
            return concstring;
        }

        public string Listout(List<TempTable> category)
        {
            string concstring = "\n";
            /* Iterrates among all strings in list.  Would like to be able to
            change to work with all information. */
            foreach (TempTable cat in category)
            {
                // Creates a long string based on inputs with each item on a new line.
                concstring += $"{cat.Column2str}\n";
            }
            return concstring;
        }

        public string Listout(List<P0AccessDatabase.Item> category)
        {
            string concstring = "\n";
            /* Iterrates among all strings in list.  Would like to be able to
            change to work with all information. */
            int i = 1;
            foreach (P0AccessDatabase.Item cat in category)
            {
                // Creates a long string based on inputs with each item on a new line.
                concstring += $"{i}. {cat.Item1}, ${cat.Price}, {cat.Descriptionforconsole}\n";
                i++;
            }
            return concstring;
        }

        public string Listouts(List<P0AccessDatabase.Store> storelist)
        {
            string concstring = "\n";
            /* Iterrates among all strings in list.  Would like to be able to
            change to work with all information. */
            int i = 1;
            foreach (P0AccessDatabase.Store cat in storelist)
            {
                // Creates a long string based on inputs with each item on a new line.
                concstring += $"{cat.Storeid}. {cat.Location}\n";
                i++;
            }
            return concstring;
        }
    }
}