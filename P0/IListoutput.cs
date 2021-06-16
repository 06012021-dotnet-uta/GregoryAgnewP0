using P0AccessDatabase;
using P0BusisnessLogic;
using System.Collections.Generic;

namespace P0
{
    /// <summary>
    /// Interface for class Listoutput.
    /// </summary>
    public interface IListoutput
    {
        string Listout(List<Item> category);
        string Listout(List<string> category);
        string Listout(List<TempTable> category);
        string Listouts(List<Store> storelist);
    }
}