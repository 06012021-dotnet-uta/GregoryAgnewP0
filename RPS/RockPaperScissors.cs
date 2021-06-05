using System;

namespace RPS
{
    // This is a console-based version of rock-paper-scissors written in C#.
    public class RockPaperScissors
    {
        // Runs the console.
        static void Main(string[] args){

            // Use these to keep track of number of rounds and if the input is unexpected.
            // Also, checks if the player wants to go again.
            int round = 0;
            bool again = false;
            bool what = false;

            // This is a way to instanciate a class as of C# version 9.
            RulesofRockPaperScissors rules = new();

            AI player2 = new();

            Console.WriteLine(rules.Welcome);

            Console.WriteLine(rules.Name);

            // Stores input from console into Player1.Name.
            var player1 = new Player{Name = Console.ReadLine()};

            // Reruns the game if the player wants to.
            do{

                Console.WriteLine(rules.Start);

                // Runs three rounds of the game.
                while(round <3)
                {
                    // Repeatedly prompts player for valid choice until choice is valid.
                    do{
                        Console.WriteLine(rules.Choice);

                        // Temporary variable to increase legibility.
                        string input = Console.ReadLine().ToUpper().Trim();

                        // Ensures input is a valid choice.
                        if(input == "ROCK" || input == "PAPER" || input == "SCISSORS")
                        {
                            player1.Choice = input;
                            what = true;
                        }
                        else
                        {
                            Console.WriteLine("That didn't match one of the choices.\nType your choice in again.");
                            what = false;
                        }

                    }while(what == false);

                    /* Assigns the AI's choice to the player so there is less code to change if there is a real 2nd player
                       if the application is changed to allow one later. */
                    player2.Choice = player2.AiChoice;

                    // Calls the Whowon method to decide who won and outputs it to a variable for tracking purposes.
                    
                    int whowon = rules.Whowon(player1.Choice, player2.Choice);

                    // Keeps score for each player based on who won.
                    if(whowon > 0)
                    {
                        player1.Playerwins += whowon;
                    }

                    else if(whowon < 0)
                    {
                        player2.Playerwins += Math.Abs(whowon);
                    }

                    // Prints to console the results of the round.
                    Console.WriteLine(rules.Round(player1.Choice,player2.Choice,player1.Name, player2.AIName, player1.Playerwins, player2.Playerwins, round + 1, whowon));

                    round++;
                }

                // Prints to console the total of the rounds and who won or if there was a tie.
                Console.WriteLine(rules.Winner(player1.Playerwins, player2.Playerwins, player1.Name, player2.AIName));

                Console.WriteLine(rules.Again);   

                /* Checks input and continues until it's acceptable.
                   Restarts the game if the player wants to. */
                do
                {
                    string input = Console.ReadLine().ToUpper().Trim();
                    if(input == "YES"){
                        again = true;
                        what = true;
                        round = 0;
                        player1.Playerwins = 0;
                    player2.Playerwins = 0;
                    }else if(input == "NO"){
                        again = false;
                        what = true;
                        Console.WriteLine(rules.Goodbye);
                    }else{
                        Console.WriteLine("Enter yes or no please.");
                        what = false;
                    }

                }while(what == false);
                
            }while(again == true);

        }
    
    }   

}