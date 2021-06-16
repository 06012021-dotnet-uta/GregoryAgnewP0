using System;
using System.Text.RegularExpressions;


/* Copied exactly from https://docs.microsoft.com/en-us/dotnet/standard/base-types/how-to-strip-invalid-characters-from-a-string
   thanks to Winston for the link! */
namespace P0
{
    /// <summary>
    /// Holds the method to sanitize user inputs going to the database.
    /// </summary>
    public class Sanitizer : ISanitizer
    {
        /// <summary>
        /// Sanitizes input being sent to database.
        /// </summary>
        /// <param name="strIn">Takes a user input as a string.</param>
        /// <returns>Returns sanitized string.</returns>
        public string CleanInput(string strIn)
        {
            // Replace invalid characters with empty strings.
            try
            {
                return Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            // If we timeout when replacing invalid characters,
            // we should return Empty.
            catch (RegexMatchTimeoutException)
            {
                return String.Empty;
            }
        }
    }
}