using P0AccessDatabase;
using System.Collections.Generic;

namespace P0DomainLibrary
{
    /// <summary>
    /// Interface for class Items.
    /// </summary>
    public interface IItems
    {
        int ShowItemid(string userinput);
        decimal ShowItemPrice(string chosenitem);
        List<Item> ShowItems(string userinput);
    }
}