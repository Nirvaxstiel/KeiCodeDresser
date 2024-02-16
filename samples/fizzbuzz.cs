using System;
using System.Collections.Generic;
using System.Linq;

namespace FizzBuzzApp
{
    public class Program
    {
        static void Main(string[] args)
        {
            var config = new FizzBuzzConfig { Start = 1, End = 100 };
            var fizzBuzzService = new FizzBuzzService(config);
            foreach (var item in fizzBuzzService.Generate())
            {
                Console.WriteLine(item);
            }
        }
    }
    
    public class FizzBuzzService
    {
        private IFizzBuzzConfig _config;

        public FizzBuzzService(IFizzBuzzConfig config)
        {
            _config = config;
        }

        public IEnumerable<string> Generate()
        {
            return Generate(_config.Start, _config.End);
        }

        public IEnumerable<string> Generate(int start, int end)
        {
            return Enumerable.Range(start, end - start + 1).Select(n => 
                (n % 3 == 0, n % 5 == 0) switch
                {
                    (true, true) => "FizzBuzz",
                    (true, false) => "Fizz",
                    (false, true) => "Buzz",
                    _ => n.ToString(),
                });
        }
    }

    public interface IFizzBuzzConfig
    {
        int Start { get; }
        int End { get; }
    }

    public class FizzBuzzConfig : IFizzBuzzConfig
    {
        public int Start { get; set; }
        public int End { get; set; }
    }
}