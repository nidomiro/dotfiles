function omp --description 'Zwingt Herdr-Wiederherstellungen zurück in fence'
    if set -q HERDR_ENV
        # Herdr versucht gerade die Sitzung wiederherzustellen.
        # Wir injizieren die Umgebungsvariable und packen 'fence' wieder davor!
        env HERDR_AGENT=omp fence -- command omp $argv
    else
        # Außerhalb von Herdr (oder beim ersten manuellen Aufruf):
        # Führe omp ganz normal aus (bzw. greift hier Ihr normales fomp-Kürzel)
        command omp $argv
    end
end
