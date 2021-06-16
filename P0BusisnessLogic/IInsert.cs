using System.Collections.Generic;

namespace P0BusisnessLogic
{
    /// <summary>
    /// Interface for class Insert.
    /// </summary>
    public interface IInsert
    {
        bool AdjustInventory(Dictionary<string, int> endcart, int currentstore);
        void InsertOrder(Dictionary<string, int> endcart, int currentstore, string userfirstname, string userlastname);
        bool InsertUser(string firstname, string lastname, string password);
        void Savechangez();
    }
}