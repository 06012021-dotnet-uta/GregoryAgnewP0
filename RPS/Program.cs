// Legacy procedural code was messing with my vs code complier so I commented it out.
// using System;

// namespace RPS
// {
//     class Program
//     {
//                 public enum RPSChoice
//         {
//             Rock = 1,//equivalent to 0
//             Paper = 2,//equivalent to 1
//             Scissors = 3//equivalent to 2
//         }
//         //Runs the console
//         static void Main(string[] args){
//             //new testing stuff
//             //Person person = new Person();


//             //initializes
//             Console.WriteLine("Would you like to play a game?\n\nWhat is your name?");
//             String yourname = Console.ReadLine();
//             bool playmore = true;
//             int i = 0;
//             int playerwins = 0;
//             int computerwins = 0;
//             //runs while player wants to play again
//             do{
//                 bool successfulConversion = false;
//                 int playerChoiceInt;
//                 //runs three times
//                 do{
//                     //different message first time
//                     if(i==0){
//                         Console.WriteLine("Enter a number corresponding to your selection.\n(Yes we are playing rock-paper-scissors)\n\n1. Rock\n2. Paper\n3. Scissors");
//                     }else{
//                         Console.WriteLine("Let's go again!\n(Best 2 out of 3 games)\n\n1. Rock\n2. Paper\n3. Scissors");
//                     }
//                     do{
//                         string playerChoice = Console.ReadLine();
//                         //create a int variable to catch the converted choice.
//                         successfulConversion = Int32.TryParse(playerChoice, out playerChoiceInt);
//                         //check if the user inputted a number but the numebr is out of bounds.
//                         if (playerChoiceInt > 3 || playerChoiceInt < 1){
//                             Console.WriteLine($"You inputted {playerChoiceInt}. That is not a valid choice.");
//                         }
//                         else if (!successfulConversion){
//                             Console.WriteLine($"You inputted {playerChoice}. That is not a valid choice.");
//                         }
//                     }while (!successfulConversion || !(playerChoiceInt > 0 && playerChoiceInt < 4));
//                     //get a random number generator object
//                     Random rand = new Random();
//                     //get a random number 1,2, or 3.
//                     int computerChoice = rand.Next(1, 4);
//                     //converts player input to rock/paper/scissors
//                     RPSChoice RPSplayerchoice = (RPSChoice)Enum.ToObject(typeof(RPSChoice) , playerChoiceInt);
//                     RPSChoice RPScomputerchoice = (RPSChoice)Enum.ToObject(typeof(RPSChoice) , computerChoice);
//                     //print the choices.
//                     Console.WriteLine($"Your choice is {RPSplayerchoice}");
//                     Console.WriteLine($"The computer chose {RPScomputerchoice}");
//                     //check and print who won.
//                     if ((playerChoiceInt == 1 && computerChoice == 2) || (playerChoiceInt == 2 && computerChoice == 3) || (playerChoiceInt == 3 && computerChoice == 1)){
//                         Console.WriteLine($"{RPScomputerchoice} beats {RPSplayerchoice}... {yourname} LOST!");
//                         computerwins++;
//                         }
//                     else if (playerChoiceInt == computerChoice){
//                         Console.WriteLine("Tie Game!!");
//                     }
//                     else {
//                         Console.WriteLine($"{RPSplayerchoice} beats {RPScomputerchoice}...{yourname} WON!");
//                         playerwins++;
//                     }
//                     //increments game counter and prints total score so far
//                     i++;
//                     Console.WriteLine($"The score is {playerwins} for {yourname} vs {computerwins} losses out of {i} game(s)");    
//                     }while(i<3);
//                     //prints final score of set
//                     if(playerwins > computerwins){
//                         Console.WriteLine($"{yourname} is the grand champion!");
//                     }else if(computerwins > playerwins){
//                         Console.WriteLine($"Better luck next time {yourname}!");
//                     }else{
//                         Console.WriteLine($"I guess that's not really winning or losing...");
//                     }
//                     //play more?  resets variables if yes and checks for bad player input as well.
//                     bool poker = true;
//                     do{
//                     Console.WriteLine("Would you like to play again?\n(Y/N)");
//                     String YN = Console.ReadLine();
//                         if(YN == "Y" || YN == "y"){
//                             poker = true;
//                             playmore = true;
//                             i = 0;
//                             playerwins =0;
//                             computerwins = 0;
//                         }else if(YN == "N" || YN == "n"){
//                             poker = true;
//                             playmore = false;
//                         }else{
//                             Console.WriteLine("Only enter Y or N please.");
//                             poker = false;
//                         }
//                     }while(poker == false);
//             }while(playmore == true);
//         }
//     }
// }