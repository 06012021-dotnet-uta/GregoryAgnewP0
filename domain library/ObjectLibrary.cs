using P0AccessDatabase;
using System.Linq;
using System.Collections.Generic;

namespace P0DomainLibrary
{
    /// <summary>
    /// Extends the Store class from the scaffold and adds a Name property.
    /// </summary>
    public class Storez : Store, IStorez
    {
        /// <summary>
        /// Hardcodes the name of the store chain.
        /// </summary>
        public string Name { get; set; } = "Cheeseburger Store of Cheeseburgers";

        P0Context context = new P0Context();

        /// <summary>
        /// Gives a list of stores to chose from.
        /// </summary>
        /// <returns>Returns the stores that can be chosen from.</returns>
        public List<Store> ShowStores()
        {
            var itemstoshow = context.Stores.ToList();
            return itemstoshow;
        }

        /// <summary>
        /// Allows user to choose which store from the database they will purchase from.
        /// </summary>
        /// <param name="chosen">Takes the user's choice as an int.</param>
        /// <returns>Returns the store whos Storeid matches the input.</returns>
        public Store StoreChosen(int chosen)
        {
            Store chosenstore = context.Stores.Where(x => x.Storeid == chosen).FirstOrDefault();
            return chosenstore;
        }
    }

    /// <summary>
    /// Extends the User class from the scaffold and adds a property to track a user choices.
    /// </summary>
    public class Users : User, IUsers
    {
        /// <summary>
        /// Adds a tracking variable for choices made be the user.
        /// </summary>
        public string Choice { get; set; }

    }

    /// <summary>
    /// Extends the Item class from the scaffold and contains methods to extract certain information from the database.
    /// </summary>
    public class Items : Item, IItems
    {
        P0Context context = new P0Context();

        /// <summary>
        /// Shows a list of items that can be purchased.
        /// </summary>
        /// <param name="userinput">Takes a user's input on which items they'd like to see as a string.</param>
        /// <returns>Returns the list of items the user would like to see.</returns>
        public List<Item> ShowItems(string userinput)
        {
            var itemstoshow = context.Items.Where(x => x.Item1 == userinput).ToList();
            return itemstoshow;
        }

        /// <summary>
        /// Gets an item's id from the database.
        /// </summary>
        /// <param name="userinput">Takes a string input of the description of the item on which item to show.</param>
        /// <returns>Returns the item's id.</returns>
        public int ShowItemid(string userinput)
        {
            var itemstoshow = context.Items.Where(x => x.Descriptionforconsole == userinput).Select(x => x.Itemid).FirstOrDefault();
            return itemstoshow;
        }

        /// <summary>
        /// Gets an item's price from the database.
        /// </summary>
        /// <param name="chosenitem">Takes a string input of the description of the item on which item to show.</param>
        /// <returns>Returns the item's price.</returns>
        public decimal ShowItemPrice(string chosenitem)
        {
            var itemstoshow = context.Items.Where(x => x.Descriptionforconsole == chosenitem).Select(x => x.Price).FirstOrDefault();
            return itemstoshow;
        }
    }

    /// <summary>
    /// Extends the Inventory class from the scaffold and adds a method to get the quantity of an item in a specific store from the database.
    /// </summary>
    public class Inventoryz : Inventory, IInventoryz
    {
        P0Context context = new P0Context();

        /// <summary>
        /// Gets the quantity of an item from a particular store from the database.
        /// </summary>
        /// <param name="userinputitem">Takes an itemid input as an int.</param>
        /// <param name="userinputstore">Takes a storeid input as an int.</param>
        /// <returns>Returns the quantity of that item at that store.</returns>
        public int ShowQuantity(int userinputitem, int userinputstore)
        {
            var inventoryshow = (int)context.Inventories.Where(x => (x.Itemid == userinputitem) && (x.Storeid == userinputstore)).Select(x => x.Quantity).First();
            return inventoryshow;
        }
    }


}