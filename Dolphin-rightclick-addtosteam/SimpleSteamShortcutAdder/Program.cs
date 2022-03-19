using System;
using System.IO;
using System.Threading;

namespace SimpleSteamShortcutAdder
{
    class Program
    {
        static void Fatal(string message)
        {
            Console.WriteLine($"[FATAL] {message}");
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();
        }

        static void Main(string[] args)
        {
            if (args.Length != 1)
            {
                Fatal("Not enough or too many args!");
                return;
            }

            SteamManager manager = new SteamManager();
            if (!manager.InitialisePaths())
            {
                Fatal("Could not initialise paths. Does a shortcuts.vdf file exist? Try to add a non-steam game to steam");
                return;
            }

            Console.WriteLine($"Accessing '{manager.VdfPath}'");

            if (!manager.Read())
            {
                Fatal("Failed to read shortcuts.vdf");
                return;
            }

            if (!manager.AddExe(args[0], Path.GetFileName(args[0])))
            {
                Fatal("Failed to add executable");
                return;
            }

            if (!manager.Write())
            {
                Fatal("Failed to write to the shortcuts.vdf file");
                return;
            }
        
            Console.WriteLine("Finished! Exiting in 5 seconds. Restart steam to view the new shortcut");
            Thread.Sleep(5000);
        }
    }
}