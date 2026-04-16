# Simple

Ein persönlicher Wellness- und Habit-Tracker, entwickelt mit PHP und MySQL.

---

## Motivation

Viele Self-Development-Tools sind zu komplex, zu unübersichtlich oder lenken durch unnötige Features ab. Ziel war eine einfache Webanwendung, die genau das tut was sie soll – ohne Overhead.

---

## Funktionen

- **Registrierung & Login** – eigenes Benutzerkonto mit sicherer Authentifizierung
- **Aktivitäten** – Auswahl aus drei Bereichen: Meditation, Sport zu Hause, Mehr lesen
- **Übungen** – pro Aktivität können einzelne Übungen ausgewählt und gespeichert werden
- **Notizen** – persönliche Notizen erstellen, bearbeiten und löschen (CRUD)
- **Rauchfrei-Tracker** – experimentelles Feature: Tage ohne Rauchen und gespartes Geld werden automatisch berechnet

---

## Technologien

| Technologie | Verwendung |
|---|---|
| PHP 8 | Backend-Logik, Session-Verwaltung |
| MySQL | Datenbankstruktur, alle Nutzdaten |
| HTML/CSS | Frontend, eigenes minimalistisches Design |
| XAMPP | Lokale Entwicklungsumgebung |

---

## Sicherheit

- Passwörter werden mit `password_hash()` gehasht und nie im Klartext gespeichert
- Login-Überprüfung über `password_verify()`
- Alle Datenbankabfragen ausschließlich über **Prepared Statements** (kein SQL Injection möglich)
- Alle Nutzereingaben werden mit `htmlspecialchars()` ausgegeben (XSS-Schutz)
- Zugriffsschutz auf alle Seiten über Session-Check (`$_SESSION["user_id"]`)
- Besitzerprüfung bei Notizen: Bearbeiten und Löschen nur möglich wenn `user_nr` übereinstimmt

---

## Datenbankstruktur

11 Tabellen, benutzerzentriert aufgebaut:

```
user                  – Benutzerdaten (id, username, passwort-hash)
notizen               – persönliche Notizen pro User
aktivitaeten          – verfügbare Aktivitäten (statische Stammdaten)
benutzer_auswahl      – welche Aktivitäten ein User gewählt hat
meditation_bd         – Übungskatalog Meditation
meditation_umsetzung  – welche Übungen ein User gespeichert hat
sportzuhause_bd       – Übungskatalog Sport
sportzuhause_umsetzung
mehrlesen_bd          – Übungskatalog Lesen
mehrlesen_umsetzung
rauchen_frei          – Rauchfrei-Daten pro User
```

---

## Projektstruktur

```
/
├── index.html                    – Startseite
├── anmelden.php                  – Login
├── neu_acc.php                   – Registrierung
├── logout.php                    – Session beenden
├── dashboard.php                 – Hauptmenü
├── db.php                        – zentrale Datenbankverbindung
├── header.php / footer.php       – gemeinsame Layout-Komponenten
├── aktivitaeten.php              – Aktivitäten-Übersicht
├── meditation.php/praxis/benutzer – Meditation-Flow
├── sportzuhause.php/praxis/...   – Sport-Flow
├── mehrlesen.php/praxis/...      – Lesen-Flow
├── benutzer_auswahl.php          – gespeicherte Aktivitäten des Users
├── notizen.php                   – Notizen-Übersicht
├── notiz_bearbeiten.php          – Notiz bearbeiten
├── notiz_delete.php              – Notiz löschen
└── rauchen.php                   – Rauchfrei-Tracker
```

---

## Lokale Installation

1. XAMPP installieren und starten (Apache + MySQL)
2. Projekt in `/htdocs/php/projekt/projekt_php/` ablegen
3. Datenbank `projekt` in phpMyAdmin importieren
4. Aufrufen unter `http://localhost/php/projekt/projekt_php/`

---

## Ausblick

- Kalenderfunktion zur Visualisierung von Gewohnheiten
- Weitere Aktivitätskategorien
- Individuelle Personalisierung pro Nutzer
