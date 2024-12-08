# Stimmen ermitteln
Add-Type -AssemblyName System.Speech
$synth = New-Object System.Speech.Synthesis.SpeechSynthesizer
$voices = $synth.GetInstalledVoices()

# Dictionary für Stimmen erstellen
$voiceDict = @{}
for ($i = 0; $i -lt $voices.Count; $i++) {
    $voiceDict[$i] = $voices[$i].VoiceInfo.Name
}

# Stimmen anzeigen
$voiceDict.GetEnumerator() | ForEach-Object {
    Write-Host "$($_.Key): $($_.Value)"
}

# Benutzer wählt eine Stimme
$choice = Read-Host "Wähle eine Stimme (Nummer eingeben)"
if ($voiceDict.ContainsKey([int]$choice)) {
    $selectedVoice = $voiceDict[[int]$choice]
    Write-Host "Gewählte Stimme: $selectedVoice"

    # Stimme setzen und Text sprechen
    $synth.SelectVoice($selectedVoice)
    $text = Read-Host "Gib den Text ein, der gesprochen werden soll"
    
    # Text sofort abspielen
    Write-Host "Wiedergabe des Textes..."
    $synth.Speak($text)

    # Nachfragen, ob speichern
    $saveChoice = Read-Host "Soll die Ausgabe gespeichert werden? (j/n)"
    if ($saveChoice -eq "j") {
        # Aktuelles Verzeichnis als Ausgabeordner verwenden
        $currentDir = Get-Location

        # Text für Dateinamen bereinigen (keine ungültigen Zeichen)
        $sanitizedText = $text -replace '[\\/:*?"<>|]', '' -replace '\s+', '_'

        # Dynamischen Dateinamen erstellen
        $fileName = "$selectedVoice-$sanitizedText.wav"
        $outputPath = Join-Path -Path $currentDir -ChildPath $fileName
        $synth.SetOutputToWaveFile($outputPath)
        Write-Host "Speichere Datei nach: $outputPath"
    } else {
        $synth.SetOutputToDefaultAudioDevice()
        Write-Host "Gibt den Text nur aus."
    }

    # Sprechen (für Aufnahme)
    $synth.Speak($text)

    # Ausgabe zurücksetzen (nur nötig, wenn gespeichert wurde)
    if ($saveChoice -eq "ja") {
        $synth.SetOutputToDefaultAudioDevice()
    }
} else {
    Write-Host "Ungültige Auswahl."
}