using P0AccessDatabase;
using System.Linq;
using System.Collections.Generic;
namespace P0BusisnessLogic
{
    public class Storez : Store
    {
        public string Name { get; set; } = "Cheeseburger Store of Cheeseburgers";

        P0Context context = new P0Context();

        public Store StoreChosen(int chosen)
        {
            Store chosenstore = context.Stores.Where(x => x.Storeid == chosen).FirstOrDefault();
            return chosenstore;
        }

        public List<P0AccessDatabase.Store> ShowStores()
        {
            var itemstoshow = context.Stores.ToList();
            return itemstoshow;
        }
    }

    public class Users : User
    {
        public string Name { get; set; }

        public string Choice { get; set; }

    }

    public class Items : Item
    {
        P0Context context = new P0Context();
        public List<Item> ShowItems(string userinput)
        {
            var itemstoshow = context.Items.Where(x => x.Item1 == userinput).ToList();
            return itemstoshow;
        }

        public int ShowItemid(string userinput)
        {
            var itemstoshow = context.Items.Where(x => x.Descriptionforconsole == userinput).Select(x=>x.Itemid).FirstOrDefault();
            return itemstoshow;
        }
        public decimal ShowItemPrice(string chosenitem)
        {
            var itemstoshow = context.Items.Where(x => x.Descriptionforconsole == chosenitem).Select(x => x.Price).FirstOrDefault();
            return itemstoshow;
        }
    }

    public class Inventoryz : Inventory
    {
        P0Context context = new P0Context();
        public int ShowQuantity(int userinputitem, int userinputstore)
        {
            var inventoryshow = (int)context.Inventories.Where(x => (x.Itemid == userinputitem) && (x.Storeid == userinputstore)).Select(x => x.Quantity).First();
                return inventoryshow;
        }
    }


}