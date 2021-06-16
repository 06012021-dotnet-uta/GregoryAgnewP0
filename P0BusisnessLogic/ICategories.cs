using System.Collections.Generic;

namespace P0
{
    /// <summary>
    /// Interface for class Categories.
    /// </summary>
    public interface ICategories
    {
        List<string> Category1();
        List<TempTable> Category2(string userinput);
        List<TempTable> Category3(string userinput);
        List<TempTable> Category4(string userinput);
    }
}