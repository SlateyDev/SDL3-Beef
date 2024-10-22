namespace example;

using System;

using SDL3;

class Program
{
	public static void Main()
	{
		Console.WriteLine(SDL.Init(.Events));
		Console.Read();
		SDL.Quit();
	}
}