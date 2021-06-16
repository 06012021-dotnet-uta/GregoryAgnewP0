using P0AccessDatabase;
using System.Collections.Generic;
using P0DomainLibrary;

namespace P0BusisnessLogic
{
    public class Cart : ICart
    {
        private decimal _carttotal = 0.00M;

        private string _itemname = "";

        private int _itemid = 0;

        private int _numofitem = 1;

        private decimal _priceeach = 0.00M;

        private int _quantity = 0;

        private decimal _linetotal = 0;

        private Dictionary<string, int> _cartstuff = new();//{ { "", 0 } };

        /// <summary>
        /// Accesses the dictionary created by the cart.
        /// </summary>
        public Dictionary<string, int> Cartstuff
        {
            get
            {
                return _cartstuff;
            }
        }

        /// <summary>
        /// Clears the cart.
        /// </summary>
        public void Resetcart()
        {
            _cartstuff.Clear();
            _carttotal = 0.00M;
        }

        private List<string> returnthing = new();

        /// <summary>
        /// Adds an item to the cart.
        /// </summary>
        /// <param name="item">Takes a list of items the user could have put in the cart.</param>
        /// <param name="itemamount">Takes an integer for how much of the item should be added to the cart.</param>
        /// <param name="whichitem">Takes an integer to find out which item the customer chose.</param>
        /// <returns>Returns the item's name the user chose and the current total cost of the cart.</returns>
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

        /// <summary>
        /// Shows the final cost of the cart after check-out with the items that were purchased.
        /// </summary>
        /// <param name="endcart">Takes the dictionary holding all the items and their amounts in the cart.</param>
        /// <param name="total">Takes the final cost of the sum of items in the cart as a string.</param>
        /// <param name="currentstore">Takes the store'd id the user chose to purchase from as an int.</param>
        /// <param name="userfirstname">The user's first name.</param>
        /// <param name="userlastname">The user's last name.</param>
        /// <returns></returns>
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
            concat2 += $"Your total came to ${total} which will be billed to {userfirstname} {userlastname}.";
            return concat2;
        }
    }
}