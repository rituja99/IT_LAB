using System;

namespace trafficDelegate
{
    public delegate void TrafficDel();
    class Program
    {
        public static void Yellow()
        {
            Console.WriteLine("YELLOW: GET READY");
        }
        public static void Red()
        {
            Console.WriteLine("RED: STOP");
        }
        public static void Green()
        {
            Console.WriteLine("GREEN: GO");
        }

        public static void Main(string[] args)
        {
            Console.WriteLine("Running");
            TrafficDel obj;
            obj = Yellow;
            obj();
            obj = Red;
            obj();
            obj = Green;
            obj();
        }
    }
}
