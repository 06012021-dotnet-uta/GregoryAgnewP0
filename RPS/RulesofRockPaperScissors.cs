namespace RPS
{
    // These are the rules for rock-paper-scissors and because this is a console-level program.
    // There are also the outputs for console specific to rock-paper-scissors included here.
    /* My excuse for hardcoding the outputs is because this is a console applicatoin and 
       the entire class is specific to this game.  This class could be substitited for any
       other game or a game designed for a different front-end and the rest of the application
       would only have to change which class is called. */
    public class RulesofRockPaperScissors
    {

        // Private string to be set and get from public method Whowon.
        private int _whowins;

        // Takes a string from player 1 and player 2 and compares them to see who won.
        // Needs the inputs to be in all capital letters.
        // Outputs integer based on result.
        public int Whowon(string player1, string player2)
        {
            if(player1 == player2)
            {
                return _whowins = 0;
            }
            else if(player1 == "ROCK" && player2 == "SCISSORS" || player1 == "SCISSORS" && player2 == "PAPER" || player1 == "PAPER" && player2 == "ROCK")
            {
                return _whowins = 1;
            }
            else
            {
                return _whowins = -1;
            }
        }

        public string Welcome{ get; } = "Welcome to Rock-Paper-Scissors!";

        public string HowManyPlayers { get; } = "Would you like to play agasint another person or the computer?";

        public string Name { get; } = "What is your name?";

        public string Start { get; } = "Let's get started!";

        public string Choice { get; } = "Please enter your choice of rock, paper, or scissors by typing your choice below:";

        private string _round;

        // Sets the string to be shown at the end of every round and simotaneously gets it based on both player inputs and the result of the round.
        public string Round(string player1choice, string player2choice, string player1, string player2, int player1wins, int player2wins, int round, int whowon)
        {
            string winnertext;
            if(whowon == 1)
            {
                winnertext = $"\n{player1choice} beats {player2choice}\n";
            }
            else if(whowon == -1){
                winnertext = $"\n{player2choice} beats {player1choice}\n";
            }else{
                winnertext = $"\n{player2choice} ties {player1choice}\n";
            }
            _round = $"{winnertext}The current score is {player1} has won {player1wins} times and {player2} has won {player2wins} times out of {round} rounds.\n";
            return _round;
        }

        // Private string to be set and get from the public method Winner.
        private string _winner;

        // Sets and also gets the text for who won the total rounds played.
        public string Winner(int player1wins, int player2wins, string player1, string player2){
            if(player1wins > player2wins)
            {
                _winner = $"{player1} is the grand champion!";
            }
            else if(player2wins > player1wins)
            {
                _winner = $"{player2} is the grand champion!";
            }
            else
            {
                _winner = $"{player1} and {player2} tied...";
            }
            return _winner;
        } 

        public string Again {get;} = "Would you like to play again?";

        public string Goodbye {get;} = "See you next time!";


    }
}