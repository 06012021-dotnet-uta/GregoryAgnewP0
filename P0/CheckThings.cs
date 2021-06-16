using System.Linq;
using P0AccessDatabase;

namespace P0
{
    /// <summary>
    /// Contains methods to check things in the database such as if a user already has an account or what their password is.
    /// </summary>
    public class CheckThings : ICheckThings
    {
        P0Context context = new();

        /// <summary>
        /// Checks if the user already has an account in the database.
        /// </summary>
        /// <param name="firstname">Takes user input for first name as string.</param>
        /// <param name="lastname">Takes user input for last name as string.</param>
        /// <returns>Returns true if user has an account</returns>
        public bool CheckUser(string firstname, string lastname)
        {

            if (context.Users.Where(x => (x.Firstname.ToUpper() == firstname.ToUpper()) && x.Lastname.ToUpper() == lastname.ToUpper()).ToList().Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Checks the user's password in the database.
        /// </summary>
        /// <param name="password">Takes the user's input as a string.</param>
        /// <returns>Returns true if password matches database entry.</returns>
        public bool CheckPassword(string password)
        {

            if (context.Users.Where(x => (x.Password == password)).ToList().Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
