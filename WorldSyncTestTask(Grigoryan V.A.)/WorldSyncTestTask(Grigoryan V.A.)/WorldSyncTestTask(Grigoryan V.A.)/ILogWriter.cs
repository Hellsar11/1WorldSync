using System;
using System.Collections.Generic;
using System.Text;

namespace WorldSyncTestTask_Grigoryan_V.A._
{
    interface ILogWriter
    {
        void LogInfo(string message);
        void LogWarning(string message);
        void LogError(string message);
    }
}
