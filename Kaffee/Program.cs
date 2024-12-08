using System.Runtime.InteropServices;
using NAudio.Wave;

internal class Program
{
    [DllImport("kernel32.dll")]
    static extern IntPtr GetConsoleWindow();

    [DllImport("user32.dll")]
    static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

    const int SW_HIDE = 0;

    private static void Main(string[] args)
    {
        var handle = GetConsoleWindow();
        ShowWindow(handle, SW_HIDE);

        var deviceId = 0;
        if (args.Length > 0 && int.TryParse(args[0], out int argDeviceId))
            deviceId = argDeviceId;

        var samplesDirectory = "Samples";
        if (!Directory.Exists(samplesDirectory))
            return;

        var audioFiles = Directory.GetFiles(samplesDirectory, "*.mp3").Concat(Directory.GetFiles(samplesDirectory, "*.wav")).ToList();
        if (audioFiles.Count == 0)
            return;

        var random = new Random();
        var selectedFile = audioFiles[random.Next(audioFiles.Count)];

        using (var audioFile = new AudioFileReader(selectedFile))
        using (var outputDevice = new WaveOutEvent() { DeviceNumber = deviceId })
        {
            outputDevice.Init(audioFile);
            outputDevice.Play();
            while (outputDevice.PlaybackState == PlaybackState.Playing)
            {
                Thread.Sleep(1000);
            }
        }
    }
}