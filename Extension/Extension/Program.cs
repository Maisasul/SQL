namespace Extension
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int x = 12345;
            int y = x.Mirror();
            Console.WriteLine(y);

            List<int> list = new List<int> { 1,2,3,4,5,6,7,8};
            var r = list.Where(i => i % 2 == 0);
            foreach(var item in r)
            {
                Console.WriteLine(item + ",");
            }
            Console.WriteLine("");

            var sql = from i in list
                      where i >= 5
                      select i;
            foreach (var item in sql)
            {
                Console.WriteLine(item + ",");
            }
        }
    }
}