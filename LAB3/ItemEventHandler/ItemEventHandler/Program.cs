using System;
using System.Collections.Generic;
namespace ItemEventHandler
{
    public delegate void priceChangedEvent(decimal price);
    public class Product
    {
        private string name;
        private decimal price;
        public event priceChangedEvent priceChanged;
        public string Name
        {
            set; get;
        }
        public decimal Price
        {
            set
            {
                if (value > 0)
                {
                    price = value;
                    if (priceChanged != null)
                    {
                        priceChanged(price);
                    }
                }
            }
            get { return price; }
        }
       
    }
   
    class Program
    {
        public static void ChangeDetected(decimal price)
        {
            Console.WriteLine("The changed Price is: {0}", price);
        }

        static void Main(string[] args)
        {
            List<Product> items = new List<Product>();
            string name;
            decimal price;
            for(int i=0;i<3;i++)
            {
                name = Console.ReadLine();
                price = Convert.ToDecimal(Console.ReadLine());
                Product i = new Product();
                i.Name=name;
                i.Price = price;
                i.priceChanged += ChangeDetected;
                items.Add(i);
            }
            Product itemEvent = items[0];
            itemEvent.Price *= 2;
            foreach(Product item in items)
            {
                Console.WriteLine("Name: {0} Total Price: {1}", item.Name, item.totalPrice);
            }

        }
    }
}
