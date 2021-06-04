namespace RPS
{
    public class Person
    {
        public string name;

        //default constructor
        public Person(){
            name = "placeholder";
        }

        //constructor with given name
        public Person(string name){
            this.name = name;
        }
    }
}