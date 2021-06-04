//imports System library...mainly for using Console
using System;

//the namespace shared by the files that make the program work
namespace game
{
    class program
    {
        //main method tells the console to start from here
        static void Main(string[] args)
        {
            //creates a new reference variable "phrase" from the class "phrases" of type "phrases" from another class file
            phrases phrase = new phrases();
            /*uses the get property of the method "Name" from the reference variable "phrase" 
            that it has as part of the "phrases" class to return some variable to this main method 
            and prints that variable to the console*/
            Console.WriteLine(phrase.Name);

            //creates a new reference variable "player1" from the class "storeinfo" of type "storeinfo" from another class file
            storeinfo player1 = new storeinfo();

            /*uses a custom method "Storename" from the reference variable "player1" 
            that has the method because it is part of the "storeinfo" class to set some value
            in the storeinfo class by reading some user input from the console*/
            player1.Storename(Console.ReadLine());

            /*uses the get property of the method "Quest" from the reference variable "phrase" 
            that it has as part of the "phrases" class to return some variable to this main method 
            and prints that variable to the console*/
            Console.WriteLine(phrase.Quest);

            /*uses a custom method "Storename" from the reference variable "player1" 
            that has the method because it is part of the "storeinfo" class to set some value
            in the storeinfo class by reading some user input from the console*/
            player1.Storequest(Console.ReadLine());

            /*uses the get property of the method "Color" from the reference variable "phrase" 
            that it has as part of the "phrases" class to return some variable to this main method 
            and prints that variable to the console*/
            Console.WriteLine(phrase.Color);

            /*uses a custom method "Storename" from the reference variable "player1" 
            that has the method because it is part of the "storeinfo" class to set some value
            in the storeinfo class by reading some user input from the console*/
            player1.Storecolor(Console.ReadLine());

            /*uses the get property of the method "GameStart" from the reference variable "phrase" 
            that it has as part of the "phrases" class to return some variable to this main method 
            and prints that variable to the console*/
            Console.WriteLine(phrase.GameStart);

            //initialize some things for in the while loop
            int round = 0;
            int player1score = 0;
            int player2score = 0;
            while(round < 3){

                /*uses the get property of the method "GameStart" from the reference variable "phrase" 
                that it has as part of the "phrases" class to return some variable to this main method 
                and prints that variable to the console*/
                Console.WriteLine(phrase.ChooseYourWeapon);

                /*uses a custom method "Storechoice" from the reference variable "player1" 
                that has the method because it is part of the "storeinfo" class to set some value
                in the storeinfo class by reading some user input from the console
                also checks to see if the value was a valid choice from the list of options
                and stores the boolean True in "validchoice" if it was*/
                bool validchoice = player1.Storechoice(Console.ReadLine());

                /*itterates until the user enters a valid option as defined in the Storechoice method
                of the storeinfo class while letting the user know they are entering an invalid option
                and re-prompting them for an input*/
                while(validchoice == false)
                {
                    Console.WriteLine(phrase.InvalidChoice);
                    Console.WriteLine(phrase.ChooseYourWeapon);
                    validchoice = player1.Storechoice(Console.ReadLine());
                }
                //creates a new reference variable "player2" from the class "storeinfo" of type "storeinfo" from another class file
                //I'm tired and don't feel like handling the stupid for input on asking if it's a player or cpu so we are doing cpu for now
                //besides, surely there is a better way to do this than doubling the length of my code right?
                storeinfo player2 = new storeinfo();

                //creates an AI reference variable
                AI cpu = new AI();

                //stores the computer's name in player 2 reference variable
                player2.Storename(cpu.Name);

                //stores the AI choice
                player2.Storechoice(cpu.AiChoice);

                //creates a new rules reference variable "rockpaperscissors"
                gamerules rockpaperscissors = new gamerules();

                //compares the two choices from storage with the given rules to determine the winner
                //Whowins() returns a somewhat arbitrary number for now and takes both choices from storage as arguments
                //assigned to temp variable for readability
//************************there is currently an error here where for some reason player2score is not incrementing but player1score is...******************************
                int whowon = rockpaperscissors.Whowins(player1.Choice, player2.Choice);
                if(whowon > 0)
                {
                    player1score = player1.Score(whowon);
                    Console.WriteLine(player1score);
                }else if(whowon < 0)
                {
                    player2score = player2.Score(Math.Abs(whowon));
                    Console.WriteLine(player2score);
                }

                //Playerwins outputs the winner to console (of the round) and also takes both choices from storage as arguments  
                Console.WriteLine(phrase.Playerwins(whowon, player1.Choice, player2.Choice, player1.Username, player2.Username, player1score, player2score, round + 1));

                //creates a new Results refernce variable "finalscore"
                //Results finalscore = new Results();

                //adds the current score to the total score  
                //Console.WriteLine(finalscore.TotalPlayerScore(whowon));
                round++;

                //yeah I ran out of time here
                if(player1score>player2score)
                {
                    Console.WriteLine("Player 1 is the grand champion!");
                }else
                {
                    Console.WriteLine("Player 2 is the grand champion!");
                }
                Console.WriteLine("If you want to play again just do whatever you did the first time to run the program ya bum...");
            }
        }
    }
}
