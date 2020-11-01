using System;

namespace itemConsole
{
    public delegate void eventHandler();
    class Item
    {
        private string iname;
        private decimal iprice;
        public event eventHandler testEvent;
        public string name
        {
            get; set;
        }

        public decimal cost
        {
            set
            {
                if(value>0)
                {
                    iprice = value;
                }
            }
        }

        public decimal GST()
        {
            if(testEvent!=null)
            {
                testEvent();
            }
            return iprice * (decimal)0.08;
        }
        
    }
    class Program
    {
        public static void ChangeDetected()
        {
            Console.WriteLine("The event has occurred");
        }
        static void Main(string[] args)
        {
            Item item = new Item();
            item.cost = (decimal)65.05;
            item.name = "pasta";
            item.testEvent += ChangeDetected;
            decimal gst = item.GST();
            Console.WriteLine("GST of {0}: {1}", item.name, gst);
        }
    }
}
