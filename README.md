# Typst Protocol Template

Dieses Repo enthält eine Typst-Vorlage für Protokolle (z. B. ITSI).

## Dateien

- `protocol-template.typ`: Die eigentliche Vorlage (exportiert `protocol(...)`).
- `main.typ`: Beispiel, wie man die Vorlage nutzt.
- `refs.bib`: File für die Literaturnachweise

## Typst verwenden

Siehe im main.typ file wie es beispielsweise ausschauen könnte.

Sonst ist hier die Dokumentation: <https://typst.app/docs/>

### Compiler Download

<https://typst.app/open-source/>

## Verwenden

1. Logo-Datei ins Projekt legen (z.B. `logo.png`) oder `logo_path` entsprechend setzen.
2. Inhalte schreiben oder über `#include "src/..."` einbinden.
3. Folgende Parameter für das Template:
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

Alle Werte haben Standardwerte Also muss nicht alles davon gesetzt werden.

## Build

```powershell
typst compile main.typ main.pdf
```
