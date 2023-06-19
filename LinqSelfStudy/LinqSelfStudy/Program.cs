namespace LinqSelfStudy
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Creating List
            IList<ProductStore> productList = new List<ProductStore>();

            productList.Add(new ProductStore { productName = "Hard Disk", productPrice = 1280 });
            productList.Add(new ProductStore { productName = "Monitor", productPrice = 3000 });
            productList.Add(new ProductStore { productName = "SSD Disk", productPrice = 3500 });
            productList.Add(new ProductStore { productName = "RAM", productPrice = 2450 });
            productList.Add(new ProductStore { productName = "Processor", productPrice = 7680 });
            productList.Add(new ProductStore { productName = "Bluetooth", productPrice = 540 });
            productList.Add(new ProductStore { productName = "Keyboard & Mouse", productPrice = 1130 });


            //LINQ Query Syntax
            var result = from p in productList
                         select p.productPrice;

            Console.WriteLine("Average: " + result.Average());
            Console.WriteLine("Count: " + result.Count());
            Console.WriteLine("Max: " + result.Max());
            Console.WriteLine("Min: " + result.Min());
            Console.WriteLine("Sum: " + result.Sum());
            Console.WriteLine("First Value: " + result.First());
            Console.WriteLine("Last Value: " + result.Last());
            Console.WriteLine("Is 3500 Available? " + result.Contains(3500));
            Console.WriteLine("Element at 4th Position: " + result.ElementAt(3));

            var distinctPrice = result.Distinct();
            Console.WriteLine("\n\n------- Distinct Result --------\n");
            foreach (var price in distinctPrice)
            {
                Console.WriteLine("Distinct Value: " + price.ToString());
            }

            //LINQ Method Syntax. Uncomment it to see the result.
            /*
            Console.WriteLine("Average: " + productList.Average(p => p.productPrice));
            Console.WriteLine("Count: " + productList.Count());
            Console.WriteLine("Max: " + productList.Max(p => p.productPrice));
            Console.WriteLine("Min: " + productList.Min(p => p.productPrice));
            Console.WriteLine("Sum: " + productList.Sum(p => p.productPrice));
            */
            Console.ReadKey();
        }
    }
    class ProductStore
    {
        public string productName { get; set; }
        public int productPrice { get; set; }
    }
}