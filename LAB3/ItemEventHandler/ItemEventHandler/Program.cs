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
        public Product(string name, decimal price)
        {
            Name = name;
            Price = price;
        }
        public Product()
        {

        }
    }
    public class TaxableProduct: Product
    {
        private  decimal taxrate = 1.15M;

       
        public TaxableProduct(): base()
        {
            
        }
        public TaxableProduct(string name, decimal price) : base(name, price)
        {

        }
        public decimal totalPrice
        {
            get { return taxrate * Price; }
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
            List<TaxableProduct> items = new List<TaxableProduct>();
            string name;
            decimal price;
            for(int i=0;i<3;i++)
            {
                name = Console.ReadLine();
                price = Convert.ToDecimal(Console.ReadLine());
                TaxableProduct item = new TaxableProduct(name, price);
                item.priceChanged += ChangeDetected;
                items.Add(item);
            }
            TaxableProduct itemEvent = items[0];
            itemEvent.Price *= 2;
            foreach(TaxableProduct item in items)
            {
                Console.WriteLine("Name: {0} Total Price: {1}", item.Name, item.totalPrice);
            }

        }
    }
}
