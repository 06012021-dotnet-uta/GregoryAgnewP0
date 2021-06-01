using System;

namespace nameandage
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter your name");
            String yourname = Console.ReadLine();
            Console.WriteLine("Enter your age");
            String yourage = Console.ReadLine();
            Console.WriteLine($"Your name is {yourname} and your age is {yourage}.");
        }
    }
}
