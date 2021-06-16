using System;
using P0BusisnessLogic;
using P0AccessDatabase;
using System.Collections.Generic;

namespace P0
{
    class Program
    {
        static void Main(string[] args)
        {
            Categories category = new();
            Items item = new();


            Storez store = new();

            Users user = new();

            user.Lastname = "";

            user.Firstname = "";

            user.Password = "";

            Sanitizer sanitize = new();

            CheckThings checkthing = new();

            Insert insertname = new();

            Inventoryz inventor = new();

            bool badinput = false;

            int tries = 0;

            int always = 1;

            // This is creating a new reference variable of type Listoutput (C#9 Syntax).
            Listoutput list = new();

            // First input.
            string storefirstchoice = "";

            string storesecondchoice = "";

            string storethirdchoice = "";

            string storefourthchoice = "";

            bool repeat1 = false;

            bool repeat2 = false;

            bool repeat3 = false;

            bool repeat4 = false;

            int currentcart = 0;

            int tempint = 0;

            bool valid = true;

            bool checkout = false;

            List<string> cartlist = new();

            Cart cart = new();

            int currentstore = 0;

            user.Choice = "";

            Console.WriteLine($"Welcome to the {store.Name}!");

            while (always == 1)
            {
                checkout = false;
                cart.Resetcart();

                do
                {
                    Console.WriteLine("Log in:");
                    Console.WriteLine("Please enter your first name or type EXIT to close the application.");

                    // User input sent to all caps and with removed spaces and sanitized.
                    badinput = false;
                    user.Firstname = sanitize.CleanInput(Console.ReadLine());

                    if (user.Firstname == "")
                    {
                        Console.WriteLine("Try again, no special characters please.");
                        badinput = true;
                    }
                    else if (user.Firstname.ToUpper() == "EXIT")
                    {
                        Console.WriteLine("See you next time.");
                        Environment.Exit(0);
                    }
                } while (badinput == true);

                do
                {
                    Console.WriteLine("Please enter your last name.");

                    // User input sent to all caps and with removed spaces and sanitized.
                    badinput = false;
                    user.Lastname = sanitize.CleanInput(Console.ReadLine());

                    if (user.Firstname == "")
                    {
                        Console.WriteLine("Try again, no special characters please.");
                        badinput = true;
                    }
                } while (badinput == true);

                if (checkthing.CheckUser(user.Firstname, user.Lastname) == true)
                {
                    do
                    {
                        Console.WriteLine("Enter your password.");
                        badinput = false;
                        user.Password = sanitize.CleanInput(Console.ReadLine());
                        if (user.Password == "")
                        {
                            Console.WriteLine("Try again, no special characters please.");
                            badinput = true;
                        }
                        else if (checkthing.CheckPassword(user.Password))
                        {
                            Console.WriteLine("Log-in Successful!");
                        }
                        else
                        {
                            Console.WriteLine("Try again.  Wrong Password.");
                            tries++;
                            badinput = true;
                        }
                    } while (badinput == true && tries < 3);
                    Console.WriteLine(tries);
                    if (tries == 3)
                    {
                        Console.WriteLine("Max attempts failed!");
                        Environment.Exit(0);
                    }
                }
                else
                {
                    do
                    {
                        Console.WriteLine("Please choose a password.");
                        badinput = false;
                        user.Password = sanitize.CleanInput(Console.ReadLine());
                        if (user.Password == "")
                        {
                            Console.WriteLine("Try again, no special characters please.");
                            badinput = true;
                        }
                    } while (badinput == true);
                    //Console.WriteLine("Re-enter your new password.");
                    bool didinsertwork;
                    didinsertwork = insertname.InsertUser(user.Firstname, user.Lastname, user.Password);
                }
                
                do { 
                    Console.WriteLine("Select a store to purchase from by entering their line number.");

                    Console.WriteLine($"\n0. Log Out{list.Listouts(store.ShowStores())}");
                    user.Choice = Console.ReadLine();
                    var storelist = store.ShowStores();
                    if (Int32.TryParse(user.Choice, out int j) && j == 0)
                    {
                        valid = true;
                        goto Restart;
                    }
                    else if (Int32.TryParse(user.Choice, out j) && j > 0 && j <= storelist.Count)
                    {
                        Console.WriteLine($"\nYou've chosen the store at {store.StoreChosen(j).Location}\n");
                        currentstore = store.StoreChosen(j).Storeid;
                        valid = true;
                    }
                    else
                    {
                        Console.WriteLine("\nThat was not an option.\n");
                        valid = false;
                    }
                } while (valid == false) ;

            Console.WriteLine("Select a category from the following to get started.");

                do
                {
                    do
                    {
                        /* Calling the Listout method which prints a given list to console.
                           BTW...this seems like super useful right?  Like this should be a system generic method right?
                           This would print any variable type in the list just fine. */
                        Console.WriteLine(list.Listout(category.Category1()));
                        do
                        {
                            // User input sent to all caps and with removed spaces.
                            user.Choice = Console.ReadLine().Trim().ToUpper();

                            int temp = category.Category2(user.Choice).Count;

                            if (temp > 0)
                            {
                                storefirstchoice = user.Choice;
                                Console.WriteLine($"{list.Listout(category.Category2(user.Choice))}" + "Previous\n");
                                valid = true;
                            }
                            else if (item.ShowItems(user.Choice).Count > 0)
                            {
                                Console.WriteLine(list.Listout(item.ShowItems(user.Choice)));
                            }
                            else
                            {
                                Console.WriteLine("\nThat was not a valid choice.\nPlease select from the following by typing them below.\n");
                                Console.WriteLine(list.Listout(category.Category1()));
                                valid = false;
                            }

                        } while (valid == false);
                        do
                        {
                            do
                            {
                                // User input sent to all caps and with removed spaces.
                                // Second input.
                                user.Choice = Console.ReadLine().Trim().ToUpper();

                                int temp = category.Category3(user.Choice).Count;

                                if (user.Choice == "PREVIOUS")
                                {
                                    Console.WriteLine($"{list.Listout(category.Category2(user.Choice))}" + "Previous\n");
                                    repeat1 = true;
                                    goto FirstLoop;
                                }
                                else if (temp > 0)
                                {
                                    storesecondchoice = user.Choice;
                                    Console.WriteLine($"{list.Listout(category.Category3(user.Choice))}" + "Previous\n");
                                    valid = true;
                                    repeat1 = false;
                                }
                                else if (item.ShowItems(user.Choice).Count > 0)
                                {
                                    var itemlist = item.ShowItems(user.Choice);
                                    do
                                    {
                                        Console.WriteLine("\nChoose which of the following you'd like to add to your cart by typing their line number below.\n");

                                        Console.WriteLine($"\n0. Previous{list.Listout(itemlist)}\n");
                                        user.Choice = Console.ReadLine();
                                        if (Int32.TryParse(user.Choice, out int j) && j == 0)
                                        {
                                            Console.WriteLine($"{list.Listout(category.Category2(storefirstchoice))}" + "Previous\n");
                                            valid = true;
                                            repeat2 = true;
                                            goto SecondLoop;
                                        }
                                        else if (Int32.TryParse(user.Choice, out j) && j > 0 && j <= itemlist.Count)
                                        {
                                            do
                                            {
                                                currentcart = 0;
                                                cartlist = cart.Cartadd(itemlist, 0, j);
                                                int itemid = item.ShowItemid(cartlist[0]);
                                                if (cart.Cartstuff.TryGetValue(cartlist[0], out currentcart))
                                                {
                                                    tempint = inventor.ShowQuantity(itemid, currentstore) - currentcart;
                                                }
                                                else
                                                {
                                                    tempint = inventor.ShowQuantity(itemid, currentstore);
                                                }

                                                Console.WriteLine($"\nHow many of that would you like? (max {tempint})\n");

                                                if (Int32.TryParse(Console.ReadLine(), out int x) && x > 0 && x < tempint)
                                                {
                                                    //add the thing to the cart
                                                    cartlist.Clear();
                                                    cartlist = cart.Cartadd(itemlist, x, j);
                                                    Console.WriteLine($"\nYou've added {x} {cartlist[0]}(s) to your cart.\n  Your current cart costs a total of {cartlist[1]}.\n");
                                                    Console.WriteLine("Type CHECK to checkout now or anything else to keep shopping.");
                                                    if (Console.ReadLine().ToUpper() == "CHECK")
                                                    {
                                                        checkout = true;
                                                        goto Checkout;
                                                    }
                                                    valid = true;
                                                    repeat2 = false;

                                                }
                                                else
                                                {
                                                    valid = false;
                                                    Console.WriteLine("\nThat was not a quantity between 0 and max, please try again.\n");
                                                }
                                            } while (valid == false);
                                        }
                                        else
                                        {
                                            Console.WriteLine("\nThat was not an option.\n");
                                            valid = false;
                                            repeat2 = false;
                                        }
                                    } while (valid == false);
                                    goto SecondLoop;
                                }
                                else
                                {
                                    Console.WriteLine("\nThat was not a valid choice.\nPlease select from the following by typing them below.\n");
                                    Console.WriteLine($"{list.Listout(category.Category2(storefirstchoice))}" + "Previous\n");
                                    valid = false;
                                    repeat1 = false;
                                }
                            } while (valid == false);
                            do
                            {
                                do
                                {
                                    //User input sent to all caps and with removed spaces.
                                    //Third input.
                                    user.Choice = Console.ReadLine().Trim().ToUpper();

                                    int temp = category.Category4(user.Choice).Count;

                                    if (user.Choice == "PREVIOUS")
                                    {
                                        repeat2 = true;
                                        Console.WriteLine($"{list.Listout(category.Category2(storefirstchoice))}" + "Previous\n");
                                        goto SecondLoop;
                                    }
                                    else if (temp > 0)
                                    {
                                        storethirdchoice = user.Choice;
                                        Console.WriteLine($"{list.Listout(category.Category4(user.Choice))}" + "Previous\n");
                                        valid = true;
                                        repeat2 = false;
                                        do
                                        {
                                            do
                                            {
                                                //User input sent to all caps and with removed spaces.
                                                //Forth input.
                                                user.Choice = Console.ReadLine().Trim().ToUpper();
                                                storefourthchoice = user.Choice;

                                                if (user.Choice == "PREVIOUS")
                                                {
                                                    repeat3 = true;
                                                    Console.WriteLine($"{list.Listout(category.Category3(storesecondchoice))}" + "Previous\n");
                                                    goto ThirdLoop;
                                                }
                                                else if (item.ShowItems(user.Choice).Count > 0)
                                                {
                                                    var itemlist = item.ShowItems(user.Choice);
                                                    do
                                                    {
                                                        Console.WriteLine("\nChoose which of the following you'd like to add to your cart by typing their line number below.\n");

                                                        Console.WriteLine($"\n0. Previous{list.Listout(itemlist)}\n");
                                                        user.Choice = Console.ReadLine();
                                                        if (Int32.TryParse(user.Choice, out int j) && j == 0)
                                                        {
                                                            Console.WriteLine($"{list.Listout(category.Category4(storethirdchoice))}" + "Previous\n");
                                                            valid = true;
                                                            repeat4 = true;
                                                            goto FourthLoop;
                                                        }
                                                        else if (Int32.TryParse(user.Choice, out j) && j > 0 && j <= itemlist.Count)
                                                        {
                                                            do
                                                            {
                                                                currentcart = 0;
                                                                cartlist = cart.Cartadd(itemlist, 0, j);
                                                                int itemid = item.ShowItemid(cartlist[0]);
                                                                if (cart.Cartstuff.TryGetValue(cartlist[0], out currentcart))
                                                                {
                                                                    tempint = inventor.ShowQuantity(itemid, currentstore) - currentcart;
                                                                }
                                                                else
                                                                {
                                                                    tempint = inventor.ShowQuantity(itemid, currentstore);
                                                                }
                                                                Console.WriteLine("\nHow many of that would you like?\n");
                                                                if (Int32.TryParse(Console.ReadLine(), out int x) && x > 0 && x < tempint)
                                                                {
                                                                    //add the thing to the cart
                                                                    cartlist.Clear();
                                                                    cartlist = cart.Cartadd(itemlist, x, j);
                                                                    Console.WriteLine($"\nYou've added {x} {cartlist[0]}(s) to your cart.\n  Your current cart costs a total of {cartlist[1]}.\n");
                                                                    Console.WriteLine("Type CHECK to checkout now or anything else to keep shopping.");
                                                                    if (Console.ReadLine().ToUpper() == "CHECK")
                                                                    {
                                                                        checkout = true;
                                                                        goto Checkout;
                                                                    }
                                                                    valid = true;
                                                                    repeat4 = false;
                                                                }
                                                                else
                                                                {
                                                                    valid = false;
                                                                    Console.WriteLine("\nThat was not a quantity between 0 and max, please try again.\n");
                                                                }
                                                            } while (valid == false);
                                                        }
                                                        else
                                                        {
                                                            Console.WriteLine("\nThat was not an option.\n");
                                                            valid = false;
                                                            repeat4 = false;
                                                        }
                                                    } while (valid == false);
                                                }
                                                else
                                                {
                                                    Console.WriteLine("\nThat was not a valid choice.\nPlease select from the following by typing them below.\n");
                                                    Console.WriteLine($"{list.Listout(category.Category4(storethirdchoice))}" + "Previous\n");
                                                    valid = false;
                                                    repeat3 = false;
                                                }
                                            } while (valid == false);
                                        FourthLoop:;
                                        } while (repeat4 == true);
                                    }
                                    else if (item.ShowItems(user.Choice).Count > 0)
                                    {
                                        var itemlist = item.ShowItems(user.Choice);
                                        do
                                        {
                                            Console.WriteLine("\nChoose which of the following you'd like to add to your cart by typing their line number below.\n");

                                            Console.WriteLine($"\n0. Previous{list.Listout(itemlist)}\n");
                                            user.Choice = Console.ReadLine();
                                            if (Int32.TryParse(user.Choice, out int j) && j == 0)
                                            {
                                                Console.WriteLine($"{list.Listout(category.Category3(storesecondchoice))}" + "Previous\n");
                                                valid = true;
                                                repeat3 = true;
                                                goto ThirdLoop;
                                            }
                                            else if (Int32.TryParse(user.Choice, out j) && j > 0 && j <= itemlist.Count)
                                            {
                                                do
                                                {
                                                    currentcart = 0;
                                                    cartlist = cart.Cartadd(itemlist, 0, j);
                                                    int itemid = item.ShowItemid(cartlist[0]);
                                                    if (cart.Cartstuff.TryGetValue(cartlist[0], out currentcart))
                                                    {
                                                        tempint = inventor.ShowQuantity(itemid, currentstore) - currentcart;
                                                    }
                                                    else
                                                    {
                                                        tempint = inventor.ShowQuantity(itemid, currentstore);
                                                    }
                                                    Console.WriteLine("\nHow many of that would you like?\n");
                                                    if (Int32.TryParse(Console.ReadLine(), out int x) && x > 0 && x < tempint)
                                                    {
                                                        //add the thing to the cart
                                                        cartlist.Clear();
                                                        cartlist = cart.Cartadd(itemlist, x, j);
                                                        Console.WriteLine($"\nYou've added {x} {cartlist[0]}(s) to your cart.\n  Your current cart costs a total of {cartlist[1]}.\n");
                                                        Console.WriteLine("Type CHECK to checkout now or anything else to keep shopping.");
                                                        if(Console.ReadLine().ToUpper()=="CHECK")
                                                        {
                                                            checkout = true;
                                                            goto Checkout;
                                                        }
                                                        valid = true;
                                                        repeat3 = false;
                                                    }
                                                    else
                                                    {
                                                        valid = false;
                                                        Console.WriteLine("\nThat was not a quantity between 0 and max, please try again.\n");
                                                    }
                                                } while (valid == false);
                                            }
                                            else
                                            {
                                                Console.WriteLine("\nThat was not an option.\n");
                                                valid = false;
                                                repeat4 = false;
                                            }
                                        } while (valid == false);
                                    }
                                    else
                                    {
                                        Console.WriteLine("\nThat was not a valid choice.\nPlease select from the following by typing them below.\n");
                                        Console.WriteLine($"{list.Listout(category.Category3(storesecondchoice))}" + "Previous\n");
                                        valid = false;
                                        repeat2 = false;
                                    }
                                } while (valid == false);
                            ThirdLoop:;
                            } while (repeat3 == true);
                        SecondLoop:;
                        } while (repeat2 == true);
                    FirstLoop:;
                    } while (repeat1 == true);
                Checkout:;
                } while (checkout == false);
                //update inventory
                Console.WriteLine($"\n{ cart.FinalCart(cart.Cartstuff, cartlist[1], currentstore, user.Firstname, user.Lastname)}");
                Console.WriteLine("\nHave a good day!\n\n");
            Restart:;
            }
        }
    }
}
