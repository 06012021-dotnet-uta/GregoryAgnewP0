//the namespace shared by the files that make the program work
namespace game
{
    //class name "gamerules" as referenced by a main method
    public class gamerules
    {
        private int _whowins;

        //determines a way to track who wins a round for internal code purposes
        public int Whowins(string player1, string player2)
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
    }
}