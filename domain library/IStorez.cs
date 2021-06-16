using P0AccessDatabase;
using System.Collections.Generic;

namespace P0DomainLibrary
{
    /// <summary>
    /// Interface for class Storez.
    /// </summary>
    public interface IStorez
    {
        string Name { get; set; }

        List<Store> ShowStores();
        Store StoreChosen(int chosen);
    }
}