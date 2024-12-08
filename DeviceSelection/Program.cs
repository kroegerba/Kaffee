using NAudio.Wave;

internal class Program
{
    private static void Main(string[] args)
    {
        var deviceCount = WaveOut.DeviceCount;
        if (deviceCount == 0)
        {
            Console.WriteLine("No output devices found.");
        }
        else
        {
            for (int i = 0; i < deviceCount; i++)
            {
                var capabilities = WaveOut.GetCapabilities(i);
                Console.WriteLine($"Device {i}: {capabilities.ProductName}");
            }
        }
        Console.ReadKey();
    }
}