# HTL Protocol Template

Dieses Repo enthält eine Typst-Vorlage für Protokolle (z. B. ITSI).

## Typst verwenden

Siehe in ``examples/main.typ`` file wie es beispielsweise ausschauen könnte.

Sonst ist hier die Dokumentation: <https://typst.app/docs/>

### Compiler Download

<https://typst.app/open-source/>

## Verwenden

### Locales Package

Kopiere alle Daten zum Order `~\AppData\Local\typst\packages\{namespace}\{package}\{version}`.
Also zum Beispiel zu `~\AppData\Local\typst\packages\local\htl-protocol\1.1.1\`.
Dann wird es in deinem File so eingebunden:

```typst
#import "@local/htl-protocol:1.1.1": template

#show: body => template(body)
```

Danach kann normal weitergeschrieben werden

> Global Package kommt bald vielleicht

1. Folgende Parameter für das Template:
   1. `author`: Full Name
   2. `class-long`: Header Mitte
   3. `logo-url`: path zum logo
   4. `school-year`: z.B.: 2025/26
   5. `title`: Protokoll Titel
   6. `subtitle`: Unter Titel
   7. `task-title`: Aufgabenüberschrift
   8. `task-content`: Aufgabenbeschreibung
   9. `class`: Klasse (3AHITS)
   10. `date`: Datum des Protokolls
   11. `subject`: Schulfach
   12. `school`: (HTBLuVA Salzburg)
   13. `department`: Abteilung und vlt. Schwerpunkt
   14. `teachers`: Liste von Lehrern
   15. `do_lof`: Bool ob man ein Abbildungsverzeichnis will
   16. `do_lot`: Bool ob man ein Tabellenverzeichnis will
   17. `do_bib`: Bool ob man ein Literaturverzeichnis will
   18. `bib-src`: pfad zur Literaturliste
   19. `fancy_design`: Bool ob man ein fancy Design mit Farbe will

Alle Werte haben Standardwerte Also muss nicht alles davon gesetzt werden.

## Build

```powershell
typst compile main.typ main.pdf
```
