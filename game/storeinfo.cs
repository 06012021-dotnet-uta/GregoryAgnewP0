//the namespace shared by the files that make the program work
namespace game
{
    //class name "storeinfo" as referenced by a main method
    public class storeinfo
    {
        //this field does not have a default value
        //this field is private and can only be accessed by a method from this class
        private string _username;

        //a method for accesing "_username" that is "public" so it can be accessed from other classes in the same package
        //C# syntax for automatically returning the variable "_username" when the method "Username" is called
        public string Username
        { 
            get
            {
                return _username;
            }
        }

        //a custom method for defining the variable "_username" from some input "username"
        public void Storename(string username){

            /*returns a message to the console (because I haven't learned error handeling yet) for excessivily long inputs
            ideally, this would be taken care of before the length of the string is calculated*/
            if(username.Length > 100){
                System.Console.WriteLine("Your name is too long...start over.");
            }
            //stores the input "username" to the local variable "_username" ...now would be a great time for some SQL...
            else
            {
                _username = username;
            }
        }
        //this field does not have a default value
        //this field is private and can only be accessed by a method from this class
        private string _quest;

        //a method for accesing "_quest" that is "public" so it can be accessed from other classes in the same package
        //C# syntax for automatically returning the variable "_quest" when the method "Quest" is called
        public string Quest{ get;}

        //a custom method for defining the variable "_quest" from some input "quest"
        public void Storequest(string quest){

            /*returns a message to the console (because I haven't learned error handeling yet) for excessivily long inputs
            ideally, this would be taken care of before the length of the string is calculated*/
            if(quest.Length > 100){
                System.Console.WriteLine("Your quest is way too long!\nI don't wanna be here all day...\nStart all the way over.");
            }
            //stores the input "quest" to the local variable "_quest" ...now would be a great time for some SQL...
            else
            {
                _quest = quest;
            }
        }
        //this field does not have a default value
        //this field is private and can only be accessed by a method from this class
        private string _color;

        //a method for accesing "_color" that is "public" so it can be accessed from other classes in the same package
        //C# syntax for automatically returning the variable "_color" when the method "Color" is called
        public string Color{ get;}

        //a custom method for defining the variable "_color" from some input "color"
        public void Storecolor(string color){

            /*returns a message to the console (because I haven't learned error handeling yet) for excessivily long inputs
            ideally, this would be taken care of before the length of the string is calculated*/
            if(color.Length > 100){
                System.Console.WriteLine("Your color's name is too long...how is that even a thing?\n Stop trying to break things!");
            }

            //stores the input "color" to the local variable "_color" ...now would be a great time for some SQL...
            else
            {
                _color = color;
            }
        }
        //this field does not have a default value
        //this field is private and can only be accessed by a method from this class
        private string _choice;

        //a method for accesing "_choice" that is "public" so it can be accessed from other classes in the same package
        //C# syntax for automatically returning the variable "_color" when the method "Color" is called
        public string Choice
        {
            get{
                return _choice;
                }
        }

        //sets _choice and returns true if successful
        public bool Storechoice(string choice){

            /*returns a message to the console (because I haven't learned error handeling yet) for excessivily long inputs
            ideally, this would be taken care of before the length of the string is calculated*/
            if(choice.Length > 100){
                System.Console.WriteLine("OK...now I know you are just messing around...\n SHOO!");
                System.Environment.Exit(-1);
                return false;
            }
            //stores the input "choice" to the local variable "_choice" ...now would be a great time for some SQL...
            else
            {
                //valid options are searched for in the input variable
                if(choice.ToUpper().Contains("ROCK") || choice.ToUpper().Contains("PAPER") || choice.ToUpper().Contains("SCISSORS"))
                {
                    _choice = choice.ToUpper();
                    return true;

                }
                //the input was not a valid choice
                else{
                    return false;
                }
            }
        }
                //stores the input "score" to the local variable "_score"
                //adds to previous inputs of score
                public int _score{get; set;}
                public int Score(int score){
                    //System.Console.WriteLine(_score);
                    _score++;
                    return _score;
                    
        }
    }
}