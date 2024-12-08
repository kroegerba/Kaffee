# Schritt 1: Binaries herunterladen
## DeviceSelection.exe
[DeviceSelection.exe](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/DeviceSelection/bin/Release/net8.0-windows/win-x64/publish/DeviceSelection.exe) ist ein Hilfstool, welches die numerischen Device Ids der aktuell verfügbaren Audioausgabegeräte anzeigt.
#### Beispiel
```
Device 0: Lautsprecher (2- Logitech USB H    ←    USB-Headset
Device 1: EV3895 (NVIDIA High Definition     ←    Monitor
```
## Kaffee.exe
[Kaffee.exe](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/Kaffee/bin/Release/net8.0/win-x64/publish/Kaffee.exe) spielt zufällig ausgewählte WAV/MP3-Dateien aus dem benachbarten `Samples` Ordner ab.  
Als erster Paramter kann ein Audioausgabegerät anhand seiner Device Id festgelegt werden.
#### Beispiel
- Normales Audio läuft auf dem Headset
- Skype/Teams klingeln zusätzlich auf dem Monitor
- [Kaffee.exe](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/Kaffee/bin/Release/net8.0/win-x64/publish/Kaffee.exe) spielt Geräusche ab auf dem Monitor
  
Der Befehl `"C:\Working Copies\Kaffee\Kaffee\bin\Release\net8.0\win-x64\publish\Kaffee.exe" 1` spielt zufällige Samples aus `"C:\Working Copies\Kaffee\Kaffee\bin\Release\net8.0\win-x64\publish\Samples"` auf meinem Monitor ab.

## sample-builder.ps1
[sample-builder.ps1](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/sample-builder.ps1) ist ein PowerShell Skript, das den User anleitet, ein Audio-Sample einer Windows-Ausgabesprache zu erstellen.
#### Beispiel:
```
C:\Users\Bastian>cd "C:\Working Copies\Kaffee\SampleBuilder"
C:\Working Copies\Kaffee\SampleBuilder>powershell ./sample-builder.ps1
3: Microsoft Irina Desktop
2: Microsoft Zira Desktop
1: Microsoft Hazel Desktop
0: Microsoft Hedda Desktop
WÃ¤hle eine Stimme (Nummer eingeben): 0
GewÃ¤hlte Stimme: Microsoft Hedda Desktop
Gib den Text ein, der gesprochen werden soll: Wie wär's mit einem Kaffee?
Wiedergabe des Textes...
Soll die Ausgabe gespeichert werden? (j/n): j
Speichere Datei nach: C:\Working Copies\Kaffee\SampleBuilder\Microsoft Hedda Desktop-Wie_wär's_mit_einem_Kaffee.wav
```
# Schritt 2: Samples beziehen/erstellen
Wie bereits beschrieben, erwartet [Kaffee.exe](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/Kaffee/bin/Release/net8.0/win-x64/publish/Kaffee.exe) im `Samples` Ordner WAV/MP3 Audio Samples.  
## Standard Sample Sets
Kaffee bringt zusätlich zum [sample-builder.ps1](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/sample-builder.ps1) zwei Standard Sample-Sets mit.
#### Kaffee
Kaffee ist das originale initiale Sample-Set, das mit der Idee für dieses Programm entstanden ist.
- [Microsoft Hedda Desktop-Jetzt_'nen_Kaffee..wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Microsoft%20Hedda%20Desktop-Jetzt_'nen_Kaffee..wav) (Jetzt 'nen Kaffee?)  
- [Microsoft Hedda Desktop-Kaffee.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Microsoft%20Hedda%20Desktop-Kaffee.wav) (Kaffee?)  
- [Microsoft Hedda Desktop-Wie_wär's_mit_einem_Kaffee.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Microsoft%20Hedda%20Desktop-Wie_w%C3%A4r's_mit_einem_Kaffee.wav) (Wie wär's mit einem Kaffee?)  
- [Microsoft Hedda Desktop-Zeit_für_einen_Kaffee,_oder.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Microsoft%20Hedda%20Desktop-Zeit_f%C3%BCr_einen_Kaffee,_oder.wav) (Zeit für einen Kaffee, oder?)  
#### Wladi
Wladi ist ein Sample-Set, das Wladi bei seinem nächsten [Passiert da endlich mal was ? Was passiert da jetzt? Da passiert was.](https://www.youtube.com/watch?v=o3_gOd7Tdnk)-Anfall ein wenig Arbeit abnimmt.  
- [Microsoft Hedda Desktop-Es_passiert_was!.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Wladi/Microsoft%20Hedda%20Desktop-Es_passiert_was!.wav) (Es passiert was!)
- [Microsoft Hedda Desktop-Etwas_passiert_jetzt!.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Wladi/Microsoft%20Hedda%20Desktop-Etwas_passiert_jetzt!.wav) (Etwas passiert jetzt!)
- [Microsoft Hedda Desktop-Jetzt!.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Wladi/Microsoft%20Hedda%20Desktop-Jetzt!.wav) (Jetzt!)
- [Microsoft Hedda Desktop-Jetzt_passiert_was!.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Wladi/Microsoft%20Hedda%20Desktop-Jetzt_passiert_was!.wav) (Jetzt passiert was!)
- [Microsoft Hedda Desktop-Passiert_jetzt_was.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Wladi/Microsoft%20Hedda%20Desktop-Passiert_jetzt_was.wav) (Passiert jetzt was?)
- [Microsoft Hedda Desktop-Was_passiert_hier!.wav](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/Wladi/Microsoft%20Hedda%20Desktop-Was_passiert_hier!.wav) (Was passiert hier!)

## sample-builder.ps1
Wer mehr Zeit zur Verfügung hat, kann mit dem [sample-builder.ps1](https://github.com/kroegerba/Kaffee/raw/refs/heads/master/SampleBuilder/sample-builder.ps1) seine eigenen Samples erzeugen.
# Schritt 3: Cherry MX Keys konfigurieren
Abschließend kann man die Tasten seiner Cherry MX Tastatur auf eine .exe-Datei legen und seinen Kollegen auf die Nerven gehen.
