// The namespace shared by the files that make the program work.
namespace RPS
{
    // Class name "AI" as referenced by a main method.
    public class AI : Player
    {
            // Instanciated random class "aiChoice".
            // This is a hidden way the ai works.
            private System.Random _aiChoice = new System.Random();

            // Built a very short list with valid choices in it.
           private System.Collections.Generic.List<string> _aiChoices = new System.Collections.Generic.List<string>{
            "ROCK",
            "PAPER",
            "SCISSORS"
           };

            // Public method "AiChoice" to access private fields _aiChoice and _aiChoices.
            public string AiChoice
            {
                get{
                    /* .Next property of Random class makes a random int32 with inclusive lower and exclusive upper bound
                        set here to incompass all the options in _aiChoices when referencing by index
                        returns the randomly selected choice from the list
                        Return _aiChoices[1] can be used to debug logic issues easier.;*/
                    return _aiChoices[_aiChoice.Next(0,_aiChoices.Count)];

                }
            }

            // Setters and getters with default value for the computer's name.
            public string AIName{get; set;} = "the computer";
    }
}