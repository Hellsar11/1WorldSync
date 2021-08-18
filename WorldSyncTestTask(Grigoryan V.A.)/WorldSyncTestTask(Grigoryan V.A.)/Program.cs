using System;
using System.Collections.Generic;
using System.Linq;

namespace WorldSyncTestTask_Grigoryan_V.A._
{
    class Program
    {
        static void Main(string[] args)
        {
            FileLogWriter fileLog = new FileLogWriter();
            ConsoleLogWriter consoleLog = new ConsoleLogWriter();
            MultipleLogWriter multipleLogWriter = new MultipleLogWriter(new List<ILogWriter> { fileLog, consoleLog });
            multipleLogWriter.LogInfo("Test");
            multipleLogWriter.LogError("Test");
            multipleLogWriter.LogWarning("Test");
        }
    }

    enum MessageType
    {
        Info,
        Error,
        Warning
    }
}
