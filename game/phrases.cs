//the namespace shared by the files that make the program work
namespace game
{
    //class name "phrases" as referenced by a main method
    public class phrases
    {
        //field "_name" is assigned by a hardcoded string
        //this field is private and can only be accessed by a method from this class
        private string _name = "What is your name?";

        //a method for accesing "_name" that is "public" so it can be accessed from other classes in the same package
        //C# syntax for automatically returning the variable "_name" when the method "Name" is called
        public string Name
        { 
            get{
                return _name;
            }
        } 

        //more hardcoding
        private string _quest = "What is your quest?";

        //C# syntax for automatically returning the variable "_quest" when the method "Quest" is called
        public string Quest
        { 
            get{
                return _quest;
            }
        } 

        //and yet more hardcoding
        private string _color = "What is your favorite color?";

        //C# syntax for automatically returning the variable "_color" when the method "Color" is called
        public string Color
        { 
            get{
                return _color;
            }
        } 

        //so much hardcoding!
        private string _gameStart = "\n*********************************\nLet's play rock, paper, scissors!\n*********************************\n";

        //C# syntax for automatically returning the variable "_gameStart" when the method "GameStart" is called
        public string GameStart
        { 
            get{
                return _gameStart;
            }
        } 

        //there has to be a better way to do this right?
        private string _chooseYourWeapon = ("Choose from the following options: (not case sensitive)\n ROCK \n PAPER \n SCISSORS\n");

        //C# syntax for automatically returning the variable "_chooseYourWeapon" when the method "ChooseYourWeapon" is called
        public string ChooseYourWeapon
        { 
            get{
                return _chooseYourWeapon;
            }
        } 

        //it's gonna be a hardcode life
        private string _invalidChoice = "\nThat was not a valid option.\n";

        //C# syntax for automatically returning the variable "_invalidChoice" when the method "InvalidChoice" is called
        public string InvalidChoice
        { 
            get{
                return _invalidChoice;
            }
        } 

        //declares field _playerwins of type string (and doesn't hardcode it yay!)
        private string _playerwins;

        //C# syntax for automatically returning the variable "_playerwins" when the method "PlayerWins" is called
        //takes an arbitrary passthrough variable that is probably redundant and the choices of the players from storage
        //outputs the choices and the result of the round
        public string Playerwins(int whowon, string player1choice, string player2choice, string player1name, string player2name, int player1score, int player2score, int round)
        {
            string longstring = "\n"+ player1name + " has won " + player1score + " time(s) and " + player2name + " has won " + player2score + " time(s) out of " + round + " total rounds.\n";
            //if player1 wins
            if(whowon >0)
            {
            _playerwins="\n" + player1choice + " BEATS " + player2choice + "\n" + player1name +" won this round!\n"+ longstring + "";
            }
            //if player2 wins
            else if(whowon<0)
            {
                _playerwins="\n" + player2choice + " BEATS " + player1choice + "\n" + player2name +" won this round!\n"+ longstring + "";
            }else
            {
                _playerwins="\n BOTH PLAYERS CHOSE " + player1choice + "\nIt's a tie...\n"+ longstring + "";
            }
            return _playerwins;
        }

            //annnnnnnnnnd we're back to hardcoding
            private string _currenttotal = ("Choose from the following options: (not case sensitive)\n ROCK \n PAPER \n SCISSORS\n");

        //C# syntax for automatically returning the variable "_currenttotal" when the method "Currenttotal" is called
        public string Currenttotal
        { 
            get{
                return _currenttotal;
            }
        } 


    }
}