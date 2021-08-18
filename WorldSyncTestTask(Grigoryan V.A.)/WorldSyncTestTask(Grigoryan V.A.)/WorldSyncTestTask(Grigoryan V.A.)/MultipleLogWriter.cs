using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WorldSyncTestTask_Grigoryan_V.A._
{
    class MultipleLogWriter
    {
        public List<ILogWriter> logs;

        public MultipleLogWriter(List<ILogWriter> classes)
        {
            logs = classes;
        }

        public void LogError(string message)
        {
            for (int i = 0; i < logs.Count(); i++)
            {
                logs[i].LogError(message);
            }
        }

        public void LogInfo(string message)
        {
            for (int i = 0; i < logs.Count(); i++)
            {
                logs[i].LogInfo(message);
            }
        }

        public void LogWarning(string message)
        {
            for (int i = 0; i < logs.Count(); i++)
            {
                logs[i].LogWarning(message);
            }
        }
    }
}
