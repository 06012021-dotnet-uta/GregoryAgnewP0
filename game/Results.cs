namespace game
{
    public class Results
    {
        private int[] totals = new int[2];
        public int[] TotalPlayerScore(int tally){
            
            if(tally>0)
            {
                totals[0] += tally;
            }
            else if(tally<0)
            {
                totals[1] += System.Math.Abs(tally);
            }
            return totals;
        }
    }
}