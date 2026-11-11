<div align="center">

# 🖱️ mac-natural-scroll-toggle

**Natürliches Scrollen auf dem Mac per Knopfdruck ein- und ausschalten**
– perfekt für die Logitech MX Master 4 und ihre *Smart Actions*.

![macOS](https://img.shields.io/badge/macOS-Sonoma%20%7C%20Sequoia%20%7C%20Tahoe-000000?logo=apple&logoColor=white)
![AppleScript](https://img.shields.io/badge/AppleScript-✓-blue)
![Logitech](https://img.shields.io/badge/Logi%20Options%2B-Smart%20Actions-00B8FC?logo=logitech&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

</div>

---

<p align="center">
  <a href="#-das-problem">Problem</a> •
  <a href="#-die-lösung">Lösung</a> •
  <a href="#-installation">Installation</a> •
  <a href="#️-wie-es-funktioniert">Funktionsweise</a> •
  <a href="#️-troubleshooting">Troubleshooting</a>
</p>

## 💡 Das Problem

Am MacBook mit Trackpad fühlt sich **natürliches Scrollen** richtig an.
Sobald der Mac aber am Bildschirm mit Maus hängt, will man es **aus** haben –
und muss jedes Mal in die Systemeinstellungen.

## ✨ Die Lösung

Drei kleine AppleScripts, die man auf eine Maustaste legt – je nach Geschmack zwei Tasten (EIN/AUS) oder eine einzige (Toggle):

| Skript | Wirkung |
|---|---|
| [`Scroll AUS.applescript`](scripts/Scroll%20AUS.applescript) | 🖥️ Natürliches Scrollen **aus** – für Maus am Schreibtisch |
| [`Scroll EIN.applescript`](scripts/Scroll%20EIN.applescript) | 💻 Natürliches Scrollen **ein** – fürs Trackpad unterwegs |
| [`Scroll Toggle.applescript`](scripts/Scroll%20Toggle.applescript) | 🔁 **Umschalten** – eine Taste für beides |

EIN/AUS prüfen zuerst den aktuellen Zustand – nochmal drücken schadet also nie.

## 🚀 Installation

1. **Skript öffnen** – Datei per Doppelklick im *Skript-Editor* öffnen und mit ▶︎ testen.
2. **Als App exportieren** – `Ablage → Exportieren… → Dateiformat: Programm`
   (z. B. nach `~/Applications/Scroll AUS.app`). Für beide Skripte wiederholen.
3. **Auf die Maus legen** – in **Logi Options+** eine Taste wählen → *Smart Actions* → die App öffnen lassen.
4. **Berechtigung erteilen** – beim ersten Start unter
   `Systemeinstellungen → Datenschutz & Sicherheit → Bedienungshilfen`
   die App (und ggf. Logi Options+) erlauben.

## ⚙️ Wie es funktioniert

```text
öffnet Systemeinstellungen ▸ Trackpad
   └─ klickt Tab „Scrollen & Zoomen"
        └─ findet Checkbox „Natürliches Scrollen"
             └─ schaltet nur, wenn nötig ▸ schliesst Einstellungen
```

Die Skripte nutzen UI-Scripting über *System Events* und funktionieren mit
deutscher und englischer Systemsprache.

## 🧩 Alternative ohne Skript

Logi Options+ hat bei der MX Master unter **Zeigen & Scrollen → Scrollrichtung**
eine eigene Einstellung nur für die Maus. Damit kann das Trackpad „natürlich“
bleiben und die Maus scrollt trotzdem klassisch. Ebenfalls gut: die Gratis-App
[LinearMouse](https://linearmouse.app).

## 🛠️ Troubleshooting

| Problem | Lösung |
|---|---|
| Es passiert nichts | Bedienungshilfen-Berechtigung prüfen (Schritt 4) |
| Checkbox wird nicht gefunden | `delay`-Werte im Skript erhöhen (langsamer Mac) |
| Neue macOS-Version bricht das Skript | Issue eröffnen – Apple ändert die Systemeinstellungen gelegentlich |

## 📁 Struktur

```text
mac-natural-scroll-toggle/
├── scripts/
│   ├── Scroll AUS.applescript
│   ├── Scroll EIN.applescript
│   └── Scroll Toggle.applescript
├── LICENSE
└── README.md
```

## 🤝 Mitmachen

Bug gefunden oder Idee? Gerne ein [Issue](../../issues) eröffnen oder einen Pull Request schicken.
Wenn dir das Projekt hilft, freue ich mich über einen ⭐.

## 📄 Lizenz

[MIT](LICENSE) © Matteo Rotzer
