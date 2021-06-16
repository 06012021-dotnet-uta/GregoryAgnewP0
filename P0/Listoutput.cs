using System.Collections.Generic;
using P0BusisnessLogic;
using P0AccessDatabase;

namespace P0
{
    /// <summary>
    /// Contains methods to itterate over a list and returns a string.
    /// </summary>
    public class Listoutput : IListoutput
    {
        /// <summary>
        /// Iterrates on a list and returns all elements in one string.
        /// </summary>
        /// <param name="category">Takes a list of strings to itterate on.</param>
        /// <returns>Returns a string with all elements from list.</returns>
        public string Listout(List<string> category)
        {
            string concstring = "\n";
            foreach (string cat in category)
            {
                concstring += $"{cat}\n";
            }
            return concstring;
        }

        /// <summary>
        /// Iterrates on a list and returns all elements in one string.
        /// </summary>
        /// <param name="category">Itterates on a list of type TempTable.</param>
        /// <returns>Returns a string with all elements from list.</returns>
        public string Listout(List<TempTable> category)
        {
            string concstring = "\n";
            foreach (TempTable cat in category)
            {
                concstring += $"{cat.Column2str}\n";
            }
            return concstring;
        }

        /// <summary>
        /// Iterrates on a list and returns all elements in one string.
        /// </summary>
        /// <param name="category">Takes a list of type Item to itterate on.</param>
        /// <returns>Returns a string with all elements from list.</returns>
        public string Listout(List<Item> category)
        {
            string concstring = "\n";
            int i = 1;
            foreach (Item cat in category)
            {
                concstring += $"{i}. {cat.Item1}, ${cat.Price}, {cat.Descriptionforconsole}\n";
                i++;
            }
            return concstring;
        }

        /// <summary>
        /// Iterrates on a list and returns all elements in one string.
        /// </summary>
        /// <param name="storelist">Takes a list of type Store itterate on.</param>
        /// <returns>Returns a string with all elements from list.</returns>
        public string Listouts(List<Store> storelist)
        {
            string concstring = "\n";
            int i = 1;
            foreach (Store cat in storelist)
            {
                concstring += $"{cat.Storeid}. {cat.Location}\n";
                i++;
            }
            return concstring;
        }
    }
}