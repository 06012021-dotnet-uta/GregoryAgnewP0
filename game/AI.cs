//the namespace shared by the files that make the program work
namespace game
{
    //class name "AI" as referenced by a main method
    public class AI
    {
            //instanciated random class "aiChoice"
            //this is a hidden way the ai works
            private System.Random _aiChoice = new System.Random();

            //built a very short list with valid choices in it 
           private System.Collections.Generic.List<string> _aiChoices = new System.Collections.Generic.List<string>{
            "ROCK",
            "PAPER",
            "SCISSORS"
           };

            //public method "AiChoice" to access private fields _aiChoice and _aiChoices
            public string AiChoice
            {
                get{
                    /*.Next property of Random class makes a random int32 with inclusive lower and exclusive upper bound
                    set here to incompass all the options in _aiChoices when referencing by index
                    returns the randomly selected choice from the list*/
                    //return _aiChoices[_aiChoice.Next(0,_aiChoices.Count)];
                    return _aiChoices[1];
                }
            }

            //names the computer and returns the hardcoded name for player 2 name
            private string _name = "the computer";

            public string Name{
                get{
                    return _name;
                }
            }
    }
}