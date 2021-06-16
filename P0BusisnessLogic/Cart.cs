using P0AccessDatabase;
using System.Linq;
using System.Collections.Generic;
namespace P0BusisnessLogic
{
    public class Cart
    {
        private decimal _carttotal = 0.00M;

        private string _itemname = "";

        private int _itemid = 0;

        private int _numofitem = 1;

        private decimal _priceeach = 0.00M;

        private int _quantity = 0;

        private decimal _linetotal = 0;

        private Dictionary<string, int> _cartstuff = new() { { "", 0 } };

        public Dictionary<string, int> Cartstuff
        {
            get
            {
                return _cartstuff;
            }
        }
        public void Resetcart()
        {
            _cartstuff.Clear();
            _carttotal = 0.00M;
        }    

        private List<string> returnthing = new();

        public decimal Carttotal { get; set; }
        public List<string> Cartadd(List<Item> item, int itemamount, int whichitem)
        {
                    int i = 0;
                    foreach (Item things in item)
                    {
                        i++;
                        if (i == whichitem)
                        {
                            _carttotal += things.Price * itemamount;

                            _priceeach = things.Price;

                            _quantity = itemamount;

                            _linetotal = things.Price * itemamount;

                            _itemname = things.Descriptionforconsole;

                            _itemid = things.Itemid;

                            _numofitem = 1;

                            _numofitem = itemamount;

                            break;
                        }
                    }
                    /* Thanks to Kash for this code taken from https://stackoverflow.com/questions/8406165/dictionarystring-int-increase-value
                       which adds to the int value of a dictionary pair if the key was already in the dictionary and otherwise adds the key with value of 1. */
                    int currentamount2;
                    if (!_cartstuff.TryGetValue(_itemname, out currentamount2))
                    {
                        _cartstuff.Add(_itemname, _numofitem);
                    }
                    else
                    {
                        _cartstuff[_itemname] = currentamount2 + _numofitem;
                    }

                    returnthing.Add(_itemname);
                    returnthing.Add($"{_carttotal}");
                    return returnthing;
        }
        public string FinalCart(Dictionary<string, int> endcart, string total, int currentstore, string userfirstname, string userlastname)
        {
            string concat2 = "";
            Items chosenitem = new();
            foreach (KeyValuePair<string, int> pair in endcart)
            {
                if (pair.Key != "")
                {
                    concat2 += $"${chosenitem.ShowItemPrice(pair.Key) * pair.Value}\t${chosenitem.ShowItemPrice(pair.Key)} each\t{pair.Value} quantity\t{pair.Key}\n";
                }
            }
            concat2 += $"Your total came to ${total}.";
            return concat2;
        }
    }
}