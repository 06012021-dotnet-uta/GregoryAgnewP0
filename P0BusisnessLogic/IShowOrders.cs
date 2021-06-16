namespace P0
{
    /// <summary>
    /// Interface for class ShowOrders.
    /// </summary>
    public interface IShowOrders
    {
        string ShowAllOrders(string firstname, string lastname);
        string ShowStoreOrders(int storeid);
    }
}