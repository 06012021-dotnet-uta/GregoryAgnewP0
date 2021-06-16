namespace P0
{
    /// <summary>
    /// Interface for class CheckThings.
    /// </summary>
    public interface ICheckThings
    {
        bool CheckPassword(string password);
        bool CheckUser(string firstname, string lastname);
    }
}