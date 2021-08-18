using System;
using System.Collections.Generic;
using System.Text;

namespace WorldSyncTestTask_Grigoryan_V.A._
{
    class ConsoleLogWriter:ILogWriter
    {
        public void LogError(string message)
        {
            Console.WriteLine(DateTime.Now.ToString("yyyy-MM-ddTHH:mm:sszzz ") + MessageType.Error.ToString() + " " + message);
        }

        public void LogInfo(string message)
        {
            Console.WriteLine(DateTime.Now.ToString("yyyy-MM-ddTHH:mm:sszzz ") + MessageType.Info.ToString() + " " + message);
        }

        public void LogWarning(string message)
        {
            Console.WriteLine(DateTime.Now.ToString("yyyy-MM-ddTHH:mm:sszzz ") + MessageType.Warning.ToString() + " " + message);
        }
    }
}
