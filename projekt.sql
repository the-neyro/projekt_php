-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 16. Apr 2026 um 11:14
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `projekt`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `aktivitaeten`
--

CREATE TABLE `aktivitaeten` (
  `aktiv_id` int(11) NOT NULL,
  `beschreibung` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `aktivitaeten`
--

INSERT INTO `aktivitaeten` (`aktiv_id`, `beschreibung`) VALUES
(1, 'meditation'),
(2, 'sport zu hause'),
(3, 'mehr lesen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `benutzer_auswahl`
--

CREATE TABLE `benutzer_auswahl` (
  `aktiv_nr` int(11) NOT NULL,
  `user_nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `benutzer_auswahl`
--

INSERT INTO `benutzer_auswahl` (`aktiv_nr`, `user_nr`) VALUES
(1, 15),
(1, 16),
(1, 18),
(1, 19),
(1, 24),
(1, 25),
(2, 16),
(2, 19),
(3, 13),
(3, 15),
(3, 19);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `meditation_bd`
--

CREATE TABLE `meditation_bd` (
  `uebung_id` int(11) NOT NULL,
  `aktiv_nr` int(11) NOT NULL,
  `titel` varchar(120) NOT NULL,
  `beschreibung` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `meditation_bd`
--

INSERT INTO `meditation_bd` (`uebung_id`, `aktiv_nr`, `titel`, `beschreibung`) VALUES
(1, 1, '10-Minuten-Meditation für Ruhe & Klarheit', '<br>1.Vorbereitung (1 Minute)\n<br>\n<br>Such dir einen ruhigen Ort (Zimmer, Sofa, Bett oder Boden).\n<br>Setz dich bequem hin oder leg dich hin.\n<br>Handy auf lautlos.\n<br>Schließe sanft die Augen.\n<br>\n<br>Wichtig: Es geht nicht darum, „nichts zu denken“, sondern wahrzunehmen.\n<br>\n<br>2.Atemfokus (3 Minuten)\n<br>\n<br>Atme durch die Nase ein (4 Sekunden).\n<br>Halte den Atem kurz (1–2 Sekunden).\n<br>Atme langsam durch den Mund aus (6 Sekunden).\n<br>Denk innerlich:\n<br>Einatmen: „Ich komme zur Ruhe“\n<br>Ausatmen: „Ich lasse los“\n<br>Wenn Gedanken kommen → nicht bewerten, einfach zum Atem zurückkehren.\n<br>\n<br>3.Körper-Scan (4 Minuten)\n<br>\n<br>Lenke deine Aufmerksamkeit langsam durch den Körper:\n<br>\n<br>Füße → Beine → Becken\n<br>Bauch → Brust → Schultern\n<br>Arme → Hände\n<br>Nacken → Gesicht → Stirn\n<br>Bei jeder Stelle:\n<br>„Ist hier Spannung? Wenn ja, lasse ich sie mit dem Ausatmen los.“\n<br>\n<br>Stell dir vor, wie Wärme oder Licht den Bereich entspannt.\n<br>\n<br>4.Abschluss (2 Minuten)\n<br>\n<br>Spüre deinen Körper als Ganzes.\n<br>Nimm wahr, wie ruhig dein Atem jetzt ist.\n<br>Sag innerlich:\n<br>„Im Moment ist alles in Ordnung.“\n<br>Öffne langsam die Augen.'),
(2, 1, 'Erdungs-Meditation (8–12 Minuten)', '<br>1.Ankommen (1–2 Minuten)\n<br>\n<br>Setz dich bequem hin (Stuhl, Sofa oder Boden).\n<br>Füße flach auf dem Boden (wichtig für die Erdung).\n<br>Hände locker auf den Oberschenkeln.\n<br>Augen schließen.\n<br>Atme 2–3 Mal ruhig durch die Nase ein und durch den Mund aus.\n<br>\n<br>2.Verbindung zur Erde (4–5 Minuten)\n<br>\n<br>Stell dir nun Folgendes vor:\n<br>\n<br>Aus deinen Füßen wachsen Wurzeln.\n<br>Langsam, schwer, stabil.\n<br>\n<br>Sie gehen durch den Boden\ndurch Beton, Erde, Stein\nimmer tiefer in die Erde hinein\n<br>Mit jedem Ausatmen:\n<br>fließt Stress\n<br>Unruhe\n<br>Druck\n<br>über diese Wurzeln nach unten weg\n<br>\n<br>Innerlich:\n<br>\n<br>„Ich bin getragen.“\n<br>„Ich bin sicher.“\n<br>\n<br>3.Energie zurückholen (3–4 Minuten)\n<br>\n<br>Jetzt stell dir vor:\n<br>\n<br>\n<br>Aus der Erde steigt ruhige, stabile Energie über die Wurzeln nach oben.\n<br>\n<br>in die Füße\n<br>Beine\n<br>Bauch\n<br>Brust\n<br>Schultern\n<br>Kopf\n<br>Diese Energie ist:\n<br>ruhig\n<br>schwer\n<br>stabil\n<br>schützend\n<br>\n<br>Mit jedem Einatmen füllt sie dich mehr.\n<br>\n<br>4.Abschluss (1 Minute)\n<br>\n<br>Spüre dein Gewicht.\n<br>Spüre den Kontakt zum Boden.\n<br>Bewege leicht Finger und Zehen.\n<br>Öffne langsam die Augen.\n<br>Sag innerlich:\n<br>\n<br>„Ich bin hier. Ich bin stabil.“\n'),
(3, 1, 'Gedanken-loslassen-Meditation (8–10 Minuten)', '<br>1.Vorbereitung (1 Minute)\n<br>\n<br>Setz dich bequem hin oder leg dich hin.\n<br>Augen schließen.\n<br>Hände locker ablegen.\n<br>Atme 2–3 Mal ruhig ein und aus.\n<br>\n<br>Sag innerlich:\n<br>\n<br>„Ich muss nichts tun.“\n<br>\n<br>2.Beobachter-Modus (3–4 Minuten)\n<br>\n<br>Stell dir vor:\n<br>Deine Gedanken sind Wolken am Himmel \n<br>\n<br>Manche sind hell\n<br>manche dunkel\n<br>manche ziehen schnell\n<br>manche bleiben kurz stehen\n<br>\n<br>Wichtig:\n<br>Du bist nicht die Wolken – du bist der Himmel, der sie beobachtet.\n<br>\n<br>Wenn ein Gedanke kommt:\n<br>\n<br>nicht festhalten\n<br>nicht analysieren\n<br>nur wahrnehmen\n<br>und weiterziehen lassen\n<br>\n<br>Innerlich:\n<br>\n<br>„Gedanke – und weiter.“\n<br>\n<br>3.Atem als Anker (3 Minuten)\n<br>\n<br>Jetzt verbinde das Beobachten mit dem Atem:\n<br>Einatmen → „Ich bin da“\n<br>Ausatmen → „Ich lasse los“\n<br>Jeder Gedanke darf kommen\n<br>aber muss nicht bleiben.\n<br>\n<br>4.Stille & Abschluss (1–2 Minuten)\n<br>\n<br>Lass auch die Technik los.\n<br>Bleib einfach da.\n<br>Spüre die Ruhe zwischen den Gedanken.\n<br>Zum Abschluss:\n<br>\n<br>„Ich darf Pausen haben.“\n<br>\n<br>Augen langsam öffnen.'),
(4, 1, '5-4-3-2-1-Meditation (Sinnes-Achtsamkeit)', '<br>Dauer: 5–8 Minuten\n<br>Ideal bei: Nervosität, Panik, Überforderung, Gedankenkreisen\n<br>Holt dich sofort ins Hier und Jetzt\n<br>\n<br>1.Ankommen (30 Sekunden)\n<br>\n<br>Setz dich bequem hin.\n<br>Füße auf dem Boden.\n<br>Atme einmal tief ein und langsam aus.\n<br>Sag innerlich:\n<br>„Ich bin jetzt hier.“\n<br>\n<br>2. Sehen – 5 Dinge \n<br>\n<br>Öffne die Augen (oder stell es dir vor) und nimm 5 Dinge wahr, die du sehen kannst.\n<br>Farben\n<br>Formen\n<br>Licht / Schatten\n <br>Nicht bewerten. Nur benennen.\n<br>z. B.: Tisch, Wand, Licht, Pflanze, Boden\n<br>\n<br>3. Fühlen – 4 Dinge \n<br>\n<br>Spüre 4 Dinge, die du körperlich wahrnimmst:\n<br>Kontakt der Füße zum Boden\n<br>Kleidung auf der Haut\n<br>Rückenlehne\n<br>Luft auf der Haut\n<br>Atme ruhig weiter.\n<br>\n<br>4. Hören – 3 Dinge \n<br>\n<br>Höre auf 3 Geräusche:\n<br>nah\n<br>mittel\n<br>weit entfernt\n<br>Auch Stille zählt.\n<br>\n<br>5. Riechen – 2 Dinge \n<br>\n<br>Nimm 2 Gerüche wahr:\n<br>bewusst riechen\n<br>oder\n<br>neutrale Raumluft\n<br>Wenn du nichts riechst:\n<br> einfach die frische Luft wahrnehmen.\n<br>\n<br>6.Schmecken – 1 Sache \n<br>\n<br>Geschmack im Mund\n<br>oder\n<br>Schluck Wasser / Tee\n<br>Ganz bewusst.\n<br>\n<br>7.Abschluss (30–60 Sekunden)\n<br>\n<br>Atme noch einmal tief ein und aus.\n<br>Spüre deinen Körper.\n<br>Sag innerlich:\n<br>\n<br>„Ich bin sicher. Der Moment ist ruhig.“'),
(5, 1, 'Metta-Meditation (Meditation der Freundlichkeit)', '<br>Dauer: 8–12 Minuten\n<br>Wirkung: beruhigt, öffnet, stabilisiert emotional\n<br>\n<br>1.Ankommen (1–2 Minuten)\n<br>\n<br>Setz dich bequem hin oder leg dich hin.\n<br>Eine Hand auf die Brust, eine auf den Bauch.\n<br>Augen schließen.\n<br>\n<br>Atme ruhig ein und aus.\n<br>\n<br>Spüre die Wärme deiner Hände.\n<br>\n<br>2. Freundlichkeit zu dir selbst (3–4 Minuten)\n<br>\n<br>Sprich innerlich – langsam und ehrlich – diese Sätze\n(du kannst sie anpassen, wichtig ist die Absicht, nicht Perfektion):\n<br>\n<br>Möge ich ruhig sein.\n<br>Möge ich sicher sein.\n<br>Möge ich gesund sein.\n<br>Möge ich freundlich mit mir sein.\n<br>\n<br>Wenn Gefühle kommen (auch Widerstand):\n <br>alles darf da sein\n<br>\n<br>3. Freundlichkeit nach außen (3–4 Minuten)\n<br>\n<br>Jetzt stell dir nacheinander vor:\n<br>\n<br>eine neutrale Person\n<br>\n<br>eine nahestehende Person\n<br>\n<br>(optional) dich selbst noch einmal\n<br>\n<br>Und sage innerlich:\n<br>\n<br>Mögest du ruhig sein.\n<br>Mögest du sicher sein.\n<br>Mögest du gesund sein.\n<br>Mögest du in Frieden sein.\n<br>\n<br>Du musst nichts fühlen erzwingen.\n<br>Gedanke reicht.\n<br>\n<br>4. Abschluss (1–2 Minuten)\n<br>\n<br>Kehre mit der Aufmerksamkeit zu deinem Herzen zurück.\n<br>\n<br>Spüre deinen Atem.\n<br>\n<br>Lass alle Sätze los.\n<br>\n<br>Zum Abschluss:\n<br>\n<br>„Ich darf sanft sein.“\n<br>\n<br>Augen langsam öffnen.'),
(6, 1, 'Atem-Zähl-Meditation (6–10 Minuten)', '<br>1.Vorbereitung (1 Minute)\n<br>\n<br>Setz dich bequem hin oder leg dich hin.\n<br>\n<br>Augen schließen.\n<br>\n<br>Schultern locker.\n<br>\n<br>Atme einmal tief ein und langsam aus.\n<br>\n<br>Sag innerlich:\n<br>\n<br>„Jetzt ist Pause.“\n<br>\n<br>2. Zählen mit dem Atem (4–8 Minuten)\n<br>\n<br>Atme nur durch die Nase (wenn möglich).\n<br>\n<br>Einatmen → zähle 1\n<br>\n<br>Ausatmen → zähle 2\n<br>\n<br>Einatmen → 3\n<br>\n<br>Ausatmen → 4\n<br>\n<br>Zähle ruhig weiter bis 10\n<br>Dann beginne wieder bei 1.\n<br> Wichtig:\n<br>Wenn du dich verzählst oder abschweifst → sanft zurück zu 1.\n<br>Kein Ärgern. Das Zurückkommen ist die Übung.\n<br>\n<br>3.Abschluss (1 Minute)\n<br>\n<br>Lass das Zählen los.\n<br>\n<br>Atme frei.\n<br>\n<br>Spüre die Ruhe.\n<br>\n<br>Sag innerlich:\n<br>\n<br>„Ich darf nichts tun.“\n<br>\n<br>Öffne langsam die Augen\n<br>oder bleib liegen, wenn du einschlafen willst.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `meditation_umsetzung`
--

CREATE TABLE `meditation_umsetzung` (
  `aktiv_nr` int(11) NOT NULL,
  `user_nr` int(11) NOT NULL,
  `uebung_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `meditation_umsetzung`
--

INSERT INTO `meditation_umsetzung` (`aktiv_nr`, `user_nr`, `uebung_id`) VALUES
(1, 19, 4),
(1, 19, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mehrlesen_bd`
--

CREATE TABLE `mehrlesen_bd` (
  `uebung_id` int(11) NOT NULL,
  `aktiv_nr` int(11) NOT NULL,
  `titel` varchar(120) NOT NULL,
  `beschreibung` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `mehrlesen_bd`
--

INSERT INTO `mehrlesen_bd` (`uebung_id`, `aktiv_nr`, `titel`, `beschreibung`) VALUES
(1, 3, '2-Minuten-Regel', '<br>Idee:\n<br>Nicht „viel lesen“, sondern <br>anfangen.\n<br>\n<br>Wie es funktioniert:\n<br>	•	Setz dir das <br>Ziel: nur 2 Minuten lesen\n<br>	•	Kein Kapitel, <br>keine Seitenzahl\n<br>\n<br>Warum es wirkt:\n<br>	•	Das Gehirn wehrt sich gegen „große Aufgaben“\n<br>	•	2 Minuten fühlen sich harmlos an\n<br>	•	Meist liest man dann automatisch länger\n<br>\n<br>Ziel: Einstieg, nicht Leistung'),
(2, 3, 'Feste Lese-Trigger', '<br>Idee:\n<br>Lesen wird an eine bestehende Gewohnheit gekoppelt.\n<br>\n<br>Beispiele:\n<br>	•	Nach dem Frühstück → 5 Minuten lesen\n<br>	•	Vor dem Schlafen → 3 Seiten\n<br>	•	In der Bahn → 1 Abschnitt\n<br>\n<br>Warum es wirkt:\n<br>	•	Keine Entscheidung nötig\n<br>	•	Gleiche Zeit + gleicher Ort = Automatismus\n<br>\n<br>Lesen passiert „nebenbei“'),
(3, 3, 'Immer ein Buch griffbereit', '<br>Idee:\n<br>Lesen muss friktionslos sein.\n<br>\n<br>Umsetzung:\n<br>	•	Ein Buch:\n<br>	•	auf dem Nachttisch\n<br>	•	im Rucksack\n<br>	•	oder auf dem Handy (E-Book)\n<br>\n<br>Warum es wirkt:\n<br>	•	Kein Suchen\n<br>	•	Keine Vorbereitung\n<br>	•	Jede freie Minute wird Leseminute'),
(4, 3, 'Lesen ohne Ziel', '<br>Idee:\n<br>Kein Zwang, kein „Ich MUSS fertig werden“.\n<br>\n<br>Regel:\n<br>	•	Du darfst:\n<br>	•	Seiten überspringen\n<br>	•	ein Buch abbrechen\n<br>	•	querlesen\n<br>\n<br>Warum es wirkt:\n<br>	•	Druck tötet Motivation\n<br>	•	Freiheit macht Lesen angenehm\n<br>\n<br>Lesen = Genuss, nicht Pflicht'),
(5, 3, 'Lesedauer statt Seiten', '<br>Idee:\n<br>Zeit ist besser als Seitenzahlen.\n<br>\n<br>Beispiel:\n<br>	•	Nicht „20 Seiten lesen“\n<br>	•	Sondern „10 Minuten lesen“\n<br>\n<br>Warum es wirkt:\n<br>	•	Seiten sind unterschiedlich schwer\n<br>	•	Zeit ist konstant\n<br>	•	Erfolg ist klar messbar'),
(6, 3, 'Nur interessante Bücher', '<br>Idee:\n<br>Nicht „wichtig“, sondern spannend.\n<br>\n<br>Erlaubt ist:\n<br>	•	Romane\n<br>	•	Fantasy\n<br>	•	Thriller\n<br>	•	leichte Sprache\n<br>	•	Comics / Manga\n<br>\n<br>Warum es wirkt:\n<br>	•	Lesen trainiert man durch Freude\n<br>	•	Schwierige Bücher kommen später'),
(7, 3, 'Mini-Erfolg sichtbar machen', '<br>Idee:\n<br>Das Gehirn liebt Fortschritt.\n<br>\n<br>Umsetzung:\n<br>	•	Häkchen im Kalender\n<br>	•	Liste: „Heute gelesen“\n<br>	•	App oder Notiz\n<br>\n<br>Warum es wirkt:\n<br>	•	Sichtbarer Fortschritt = Motivation\n<br>	•	Kleine Siege summieren sich'),
(8, 3, 'Lesen statt Scrollen (Tausch-Technik)', '<br>Idee:\n<br>Nicht „weniger Handy“, sondern ersetzen.\n<br>\n<br>Regel:\n<br>	•	Wenn du zum Handy greifst →\n<br>erst 1 Seite lesen\n<br>\n<br>Warum es wirkt:\n<br>	•	Kein Verbot\n<br>	•	Lesen gewinnt langsam Raum');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mehrlesen_umsetzung`
--

CREATE TABLE `mehrlesen_umsetzung` (
  `uebung_id` int(11) NOT NULL,
  `aktiv_nr` int(11) NOT NULL,
  `user_nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `mehrlesen_umsetzung`
--

INSERT INTO `mehrlesen_umsetzung` (`uebung_id`, `aktiv_nr`, `user_nr`) VALUES
(2, 3, 15),
(8, 3, 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `notizen`
--

CREATE TABLE `notizen` (
  `notiz_id` int(11) NOT NULL,
  `user_nr` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `zeit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `notizen`
--

INSERT INTO `notizen` (`notiz_id`, `user_nr`, `text`, `zeit`) VALUES
(15, 16, 'Ich bin Ripon', '2026-01-07 11:55:13'),
(23, 19, 'Moooooin\r\n', '2026-01-12 15:02:38'),
(28, 15, 'hi', '2026-01-19 10:00:32'),
(34, 15, 'yo yo yo', '2026-04-16 09:52:38');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rauchen_frei`
--

CREATE TABLE `rauchen_frei` (
  `id` int(11) NOT NULL,
  `user_nr` int(11) NOT NULL,
  `aufhoeren_zeit` datetime DEFAULT NULL,
  `zigaretten_pro_tag` int(11) DEFAULT NULL,
  `packung_kostet` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `rauchen_frei`
--

INSERT INTO `rauchen_frei` (`id`, `user_nr`, `aufhoeren_zeit`, `zigaretten_pro_tag`, `packung_kostet`) VALUES
(1, 15, '2025-08-14 00:00:00', 12, 5),
(11, 23, '2026-01-01 00:00:00', 13, 9),
(13, 13, '2022-06-01 00:00:00', 3, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sportzuhause_bd`
--

CREATE TABLE `sportzuhause_bd` (
  `uebung_id` int(11) NOT NULL,
  `aktiv_nr` int(11) NOT NULL,
  `titel` varchar(120) NOT NULL,
  `beschreibung` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `sportzuhause_bd`
--

INSERT INTO `sportzuhause_bd` (`uebung_id`, `aktiv_nr`, `titel`, `beschreibung`) VALUES
(1, 2, 'Übung 1 – Ganzkörper-Basis (ohne Geräte)', '<br>Dauer: 10–15 Minuten\n<br>Ausrüstung: keine\n<br>Ort: Zuhause, wenig Platz\n<br>\n<br>⸻\n<br>\n<br>1.Vorbereitung (2 Minuten)\n<br>	•	Zieh bequeme Kleidung an\n<br>	•	Stell dich aufrecht hin\n<br>	•	Atme 3-mal tief ein und aus\n<br>\n<br> Ziel: Körper „aufwecken“, nicht sofort Gas geben.\n<br>\n<br>⸻\n<br>\n<br>- Hauptteil – 3 einfache Übungen\n<br>\n<br>1. Kniebeugen (Squats)\n<br>Wiederholungen: 10–15\n<br>\n<br>Ausführung:\n<br>	•	Füße schulterbreit\n<br>	•	Rücken gerade\n<br>	•	Knie gehen nach unten, als würdest du <br>dich setzen\n<br>	•	Gewicht auf den Fersen\n<br>\n<br>Wirkung:\n<br>	•	Beine\n<br>	•	Po\n<br>	•	Grundkraft\n<br>\n<br>⸻\n<br>\n<br>2. Liegestütze (Push-ups)\n<br>Wiederholungen: 5–10\n<br>(oder auf Knien, wenn es zu schwer ist)\n<br>\n<br>Ausführung:\n<br>	•	Hände unter den Schultern\n<br>	•	Körper gerade (kein Durchhängen)\n<br>	•	Langsam runter, kontrolliert hoch\n<br>\n<br>Wirkung:\n<br>	•	Brust\n<br>	•	Arme\n<br>	•	Schultern\n<br>	•	Core\n<br>\n<br>⸻\n<br>\n<br>3. Unterarmstütz (Plank)\n<br>Zeit: 20–40 Sekunden\n<br>\n<br>Ausführung:\n<br>	•	Unterarme am Boden\n<br>	•	Körper gerade wie ein Brett\n<br>	•	Bauch anspannen\n<br>	•	ruhig atmen\n<br>\n<br>Wirkung:\n<br>	•	Bauchmuskeln\n<br>	•	Rücken\n<br>	•	Stabilität\n<br>\n<br>⸻\n<br>\n<br> Alle 3 Übungen hintereinander = 1 Runde\n<br>- 2–3 Runden, je nach Kraft\n<br>\n<br>⸻\n<br>\n<br>- Pause\n<br>	•	30–60 Sekunden zwischen den Runden\n<br>	•	ruhig atmen\n<br>	•	Schultern locker lassen\n<br>\n<br>⸻\n<br>\n<br>- Abschluss (2 Minuten)\n<br>	•	Locker gehen oder stehen\n<br>	•	Arme, Beine leicht ausschütteln\n<br>	•	Tief ein- und ausatmen\n<br>\n<br>Sag innerlich:\n<br>\n<br>„Gut gemacht. Ich habe etwas für mich getan.“'),
(2, 2, 'Übung 2 – Sanftes Cardio zu Hause (ohne Springen)', '<br>Ziel:\n	<br>•	Kreislauf aktivieren\n	<br>•	Fettverbrennung anstoßen\n	<br>•	Bewegung ohne Überforderung\n<br>\n<br>Dauer: 8–12 Minuten\n<br>Ausrüstung: keine\n<br>Geeignet für: Anfänger, wenig Platz, Nachbarn unter dir \n<br>\n<br>⸻\n<br>\n<br>- Vorbereitung (1–2 Minuten)\n	<br>•	Aufrecht hinstellen\n	<br>•	Schultern locker\n	<br>•	3 tiefe Atemzüge\n	<br>•	Arme und Beine kurz ausschütteln\n<br>\n<br>- Ziel: Puls langsam erhöhen, nicht stressen.\n<br>\n<br>⸻\n<br>\n<br>- Hauptteil – 4 Cardio-Übungen\n<br>\n<br>1. Marchieren auf der Stelle\n<br>Zeit: 60 Sekunden\n<br>\n<br>Ausführung:\n	<br>•	Knie abwechselnd anheben\n	<br>•	Arme locker mitschwingen\n	<br>•	Tempo moderat\n<br>\n<br>Wirkung:\n	<br>•	Kreislauf\n	<br>•	Beine\n	<br>•	Einstieg ins Training\n<br>\n<br>⸻\n<br>\n<br>2. Seitliche Schritte + Arme\n<br>Zeit: 60 Sekunden\n<br>\n<br>Ausführung:\n<br>	•	Schritt nach rechts → Arme öffnen\n<br>	•	Schritt nach links → Arme schließen\n<br>	•	Gleichmäßiger Rhythmus\n<br>\n<br>Wirkung:\n<br>	•	Koordination\n<br>	•	Schultern\n<br>	•	Herz-Kreislauf-System\n<br>\n<br>⸻\n<br>\n<br>3. Knie anheben + Spannung\n<br>Zeit: 30–45 Sekunden\n<br>\n<br>Ausführung:\n<br>	•	Knie hochziehen\n<br>	•	Bauch leicht anspannen\n<br>	•	Oberkörper aufrecht\n<br>\n<br>Wirkung:\n<br>	•	Bauch\n<br>	•	Hüfte\n<br>	•	Ausdauer\n<br>\n<br>⸻\n<br>\n<br>4. Boxbewegung ohne Kraft\n<br>Zeit: 45–60 Sekunden\n<br>\n<br>Ausführung:\n<br>	•	Leichte Fauststöße nach vorne\n<br>	•	Kein Tempo-Zwang\n<br>	•	Locker aus den Schultern\n<br>\n<br>Wirkung:\n<br>	•	Arme\n<br>	•	Oberkörper\n<br>	•	Stressabbau\n<br>\n<br>⸻\n<br>\n<br>- Alle 4 Übungen = 1 Runde\n<br>- 2 Runden (Anfänger)\n<br>- 3 Runden (wenn du dich gut fühlst)\n<br>\n<br>⸻\n<br>\n<br>- Pausen\n<br>	•	30–60 Sekunden zwischen den Runden\n<br>	•	ruhig atmen\n<br>	•	Puls runterkommen lassen\n<br>\n<br>⸻\n<br>\n<br>- Abschluss (1–2 Minuten)\n<br>	•	Langsames Gehen auf der Stelle\n<br>	•	Tief einatmen → Arme hoch\n<br>	•	Ausatmen → Arme senken\n<br>\n<br>Sag innerlich:\n<br>\n<br>„Bewegung ist gut für mich.“'),
(3, 2, 'Übung 3 – Bauch & Core (stabil & ruhig)', '<br>Ziel:\n<br>	•	Bauchmuskeln stärken\n<br>	•	Rücken stabilisieren\n<br>	•	bessere Haltung im Alltag\n<br>\n<br>Dauer: 8–12 Minuten\n<br>Ausrüstung: Matte oder Teppich\n<br>Geeignet für: Anfänger & Fortgeschrittene (Tempo anpassbar)\n<br>\n<br>⸻\n<br>\n<br>- Vorbereitung (1–2 Minuten)\n<br>	•	Leg dich auf den Rücken\n<br>	•	Knie angewinkelt, Füße am Boden\n<br>	•	Hände auf den Bauch\n<br>	•	3–4 ruhige Atemzüge\n<br>\n<br>- Ziel: Core aktivieren, nicht hetzen.\n<br>\n<br>⸻\n<br>\n<br>- Hauptteil – 3 Core-Übungen\n<br>\n<br>1. Dead Bug (Bauchspannung im Liegen)\n<br>Wiederholungen: 6–10 pro Seite\n<br>\n<br>Ausführung:\n<br>	•	Rücken liegt flach am Boden\n<br>	•	Arme nach oben, Knie angewinkelt\n<br>	•	Rechter Arm + linkes Bein langsam strecken\n<br>	•	Zurück zur Mitte\n<br>	•	Seiten wechseln\n<br>\n<br>Wichtig:\n<br>	•	Bauch bleibt angespannt\n<br>	•	Rücken hebt sich nicht ab\n<br>\n<br>Wirkung:\n<br>	•	tiefe Bauchmuskulatur\n<br>	•	Koordination\n<br>	•	Rückenschutz\n<br>\n<br>⸻\n<br>\n<br>2. Crunches (sanft)\n<br>Wiederholungen: 10–15\n<br>\n<br>Ausführung:\n<br>	•	Hände locker an den Oberschenkeln oder hinter den <br>Ohren\n<br>	•	Kopf und Schultern leicht anheben\n<br>	•	Blick zur Decke\n<br>	•	Langsam ablegen\n<br>\n<br>Wichtig:\n<br>	•	kein Ziehen am Nacken\n<br>	•	Bewegung klein, kontrolliert\n<br>\n<br>Wirkung:\n<br>	•	gerade Bauchmuskeln\n<br>	•	Körpermitte\n<br>\n<br>⸻\n<br>\n<br>3. Seitstütz (Side Plank)\n<br>Zeit: 15–30 Sekunden pro Seite\n<br>(Anfänger: Knie am Boden)\n<br>\n<br>Ausführung:\n<br>	•	Unterarm unter der Schulter\n<br>	•	Körper seitlich gerade\n<br>	•	Hüfte nicht absinken lassen\n<br>	•	ruhig atmen\n<br>\n<br>Wirkung:\n<br>	•	schräge Bauchmuskeln\n<br>	•	Rumpfstabilität\n<br>	•	Rücken\n<br>\n<br>⸻\n<br>\n<br>- Alle 3 Übungen = 1 Runde\n<br>- 2 Runden (Anfänger)\n<br>- 3 Runden (wenn Kraft da ist)\n<br>\n<br>⸻\n<br>\n<br>- Pause\n<br>	•	30–60 Sekunden\n<br>	•	ruhig atmen\n<br>	•	Bauch locker lassen\n<br>\n<br>⸻\n<br>\n<br>- Abschluss (1–2 Minuten)\n<br>	•	Auf den Rücken legen\n<br>	•	Knie zur Brust ziehen\n<br>	•	Sanft hin- und herrollen\n<br>\n<br>Sag innerlich:\n<br>\n<br>„Mein Körper wird stärker.“'),
(4, 2, 'Übung 4 – Beine & Po (stark & stabil)', '<br>Ziel:\r\n<br>	•	Beinmuskulatur stärken\r\n<br>	•	Po aktivieren\r\n<br>	•	Stabilität für Alltag & Haltung\r\n<br>\r\n<br>Dauer: 10–15 Minuten\r\n<br>Ausrüstung: keine (Stuhl optional)\r\n<br>Geeignet für: Anfänger & Fortgeschrittene\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>- Vorbereitung (2 Minuten)\r\n<br>	•	Aufrecht hinstellen\r\n<br>	•	Füße hüft- bis schulterbreit\r\n<br>	•	Hüften, Knie und Fußgelenke kurz mobilisieren\r\n<br>	•	2–3 tiefe Atemzüge\r\n<br>\r\n<br>- Ziel: Gelenke vorbereiten, Verletzungen vermeiden.\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>- Hauptteil – 3 Kraftübungen\r\n<br>\r\n<br>1. Ausfallschritte (Lunges)\r\n<br>Wiederholungen: 8–12 pro Seite\r\n<br>\r\n<br>Ausführung:\r\n<br>	•	Großen Schritt nach vorne\r\n<br>	•	Hinteres Knie Richtung Boden\r\n<br>	•	Oberkörper aufrecht\r\n<br>	•	Druck über die vordere Ferse nach oben\r\n<br>\r\n<br>Anfänger:\r\n<br>	•	Halte dich an einem Stuhl oder der Wand fest\r\n<br>\r\n<br>Wirkung:\r\n<br>	•	Oberschenkel\r\n<br>	•	Po\r\n<br>	•	Gleichgewicht\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>2. Glute Bridge (Beckenheben)\r\n<br>Wiederholungen: 12–15\r\n<br>\r\n<br>Ausführung:\r\n<br>	•	Rückenlage\r\n<br>	•	Füße aufgestellt, nah am Po\r\n<br>	•	Becken langsam anheben\r\n<br>	•	Po oben kurz anspannen\r\n<br>	•	Langsam absenken\r\n<br>\r\n<br>Wirkung:\r\n<br>	•	Po\r\n<br>	•	hintere Oberschenkel\r\n<br>	•	unterer Rücken\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>3. Wandsitz (Wall Sit)\r\n<br>Zeit: 20–45 Sekunden\r\n<br>\r\n<br>Ausführung:\r\n<br>	•	Rücken an die Wand\r\n<br>	•	Knie ca. 90°\r\n<br>	•	Bauch anspannen\r\n<br>	•	ruhig weiteratmen\r\n<br>\r\n<br>Wirkung:\r\n<br>	•	Oberschenkel\r\n<br>	•	mentale Stärke\r\n<br>	•	Bein-Ausdauer\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br> Alle 3 Übungen = 1 Runde\r\n<br> 2–3 Runden, je nach Kraft\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>4. Pause\r\n<br>	•	45–60 Sekunden\r\n<br>	•	Beine ausschütteln\r\n<br>	•	tief atmen\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>5. Abschluss (2 Minuten)\r\n<br>	•	Leichtes Dehnen:\r\n<br>	•	Oberschenkel vorne\r\n<br>	•	Waden\r\n<br>	•	Ruhig atmen\r\n<br>\r\n<br>Sag innerlich:\r\n\r\n<br>„Ich werde Schritt für Schritt stärker.“'),
(5, 2, 'Übung 5 – Oberkörper & Arme (kräftigend)', '<br>Ziel:\n	<br>•	Arme stärken\n	<br>•	Schultern stabilisieren\n	<br>•	Oberkörperkraft aufbauen\n<br>\n<br>Dauer: 10–15 Minuten\n<br>Ausrüstung: keine\n<br>Geeignet für: Anfänger & Fortgeschrittene (Tempo anpassbar)\n<br>\n<br>⸻\n<br>\n<br>- Vorbereitung (2 Minuten)\n<br>	•	Schultern kreisen (vor/zurück)\n<br>	•	Arme locker ausschütteln\n<br>	•	3 tiefe Atemzüge\n<br>\n<br>- Ziel: Schultern vorbereiten, Verspannungen vermeiden.\n<br>\n<br>⸻\n<br>\n<br>- Hauptteil – 3 Oberkörper-Übungen\n<br>\n<br>1. Liegestütze (Push-ups)\n<br>Wiederholungen: 5–12\n<br>(Anfänger: auf Knien oder an der Wand)\n<br>\n<br>Ausführung:\n<br>	•	Hände unter den Schultern\n<br>	•	Körper gerade\n<br>	•	Ellenbogen leicht nach außen\n<br>	•	Kontrolliert runter und hoch\n\nWirkung:\n	•	Brust\n	•	Schultern\n	•	Trizeps\n	•	Core\n\n⸻\n\n2. Trizeps-Dips am Stuhl\nWiederholungen: 8–12\n\nAusführung:\n	•	Hände auf Stuhlkante\n	•	Beine angewinkelt\n	•	Ellenbogen nach hinten beugen\n	•	Körper absenken und hochdrücken\n\nAnfänger:\n	•	Füße näher zum Körper\n\nWirkung:\n	•	Trizeps\n	•	Schultern\n	•	Arme\n\n⸻\n\n3. Armheben & Halten\nZeit: 30–45 Sekunden\n\nAusführung:\n	•	Arme seitlich auf Schulterhöhe\n	•	Handflächen nach unten\n	•	Schultern bleiben locker\n	•	ruhig atmen\n\nWirkung:\n	•	Schultern\n	•	Arm-Ausdauer\n	•	Haltung\n\n⸻\n\n- Alle 3 Übungen = 1 Runde\n- 2–3 Runden, je nach Kraft\n\n⸻\n\n- Pause\n	•	45–60 Sekunden\n	•	Arme ausschütteln\n	•	Schultern locker machen\n\n⸻\n\n- Abschluss (2 Minuten)\n	•	Arme langsam über Kopf strecken\n	•	Schultern dehnen\n	•	Ruhig atmen\n\nSag innerlich:\n\n„Mein Oberkörper wird stärker.“'),
(6, 2, 'Übung 6 – Stretching & Regeneration (ruhig & erholsam)', '<br>Ziel:\r\n<br>	•	Muskeln entspannen\r\n<br>	•	Verspannungen lösen\r\n<br>	•	Regeneration fördern\r\n<br>	•	Verletzungen vorbeugen\r\n<br>\r\n<br>Dauer: 8–12 Minuten\r\n<br>Ausrüstung: Matte oder Teppich\r\n<br>Geeignet für: alle, besonders nach Training oder abends\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>- Vorbereitung (1 Minute)\r\n<br>	•	Ruhig hinstellen oder auf die Matte setzen\r\n<br>	•	Augen kurz schließen\r\n<br>	•	2–3 tiefe Atemzüge\r\n<br>\r\n<br> Ziel: vom „Tun“ ins Entspannen wechseln.\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>- Hauptteil – 4 Dehnübungen\r\n<br>\r\n<br>1. Nacken & Schultern\r\n<br>Zeit: 30–45 Sekunden pro Seite\r\n<br>\r\n<br>Ausführung:\r\n<br>	•	Kopf langsam zur Seite neigen\r\n<br>	•	Schultern bleiben locker\r\n<br>	•	Kein Ziehen erzwingen\r\n<br>\r\n<br>Wirkung:\r\n<br>	•	Nacken\r\n<br>	•	Schultern\r\n<br>	•	Stressabbau\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>2. Rücken-Stretch (Katze–Kuh)\r\n<br>Wiederholungen: 6–10 langsam\r\n<br>\r\n<br>Ausführung:\r\n<br>	•	Vierfüßlerstand\r\n<br>	•	Einatmen → Rücken leicht durchhängen\r\n<br>	•	Ausatmen → Rücken rund machen\r\n<br>\r\n<br>Wirkung:\r\n<br>	•	Wirbelsäule\r\n<br>	•	Rücken\r\n<br>	•	Atem + Bewegung\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>3. Beine & Hüfte\r\n<br>Zeit: 30–60 Sekunden pro Seite\r\n<br>\r\n<br>Ausführung:\r\n<br>	•	Im Sitzen ein Bein ausstrecken\r\n<br>	•	Oberkörper leicht nach vorne\r\n<br>	•	Rücken gerade\r\n<br>\r\n<br>Wirkung:\r\n<br>	•	hintere Oberschenkel\r\n<br>	•	Hüfte\r\n<br>	•	unterer Rücken\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>4. Ganzkörper-Dehnung im Liegen\r\n<br>Zeit: 60 Sekunden\r\n<br>\r\n<br>Ausführung:\r\n<br>	•	Rückenlage\r\n<br>	•	Arme über Kopf\r\n<br>	•	Beine lang ausstrecken\r\n<br>	•	Tief ein- und ausatmen\r\n<br>\r\n<br>Wirkung:\r\n<br>	•	gesamter Körper\r\n<br>	•	Nervensystem\r\n<br>	•	Entspannung\r\n<br>\r\n<br>⸻\r\n<br>\r\n<br>- Abschluss (2 Minuten)\r\n<br>	•	Auf dem Rücken liegen bleiben\r\n<br>	•	Hände auf den Bauch\r\n<br>	•	Ruhiger Atem\r\n<br>\r\n<br>Sag innerlich:\r\n<br>\r\n<br>„Mein Körper darf sich erholen.“');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sportzuhause_umsetzung`
--

CREATE TABLE `sportzuhause_umsetzung` (
  `uebung_id` int(11) NOT NULL,
  `aktiv_nr` int(11) NOT NULL,
  `user_nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `pass`, `username`) VALUES
(13, '$2y$10$ds5Lygn21F4BBOPsEaytf.WP6MDMHZ3djri7GCv8MbNgMWKCIfVFy', 'neyro1'),
(14, '$2y$10$hWUAs6WplAISrxBmWN2Z1uSBci5Dv3xzrhk6pxhyPz62UO209GjCe', 'neyro2'),
(15, '$2y$10$xWR3iuEhl.wO357bH7VUsuIosl53gDvZ7UlI7zAyYX0tWs5SqWl2m', 'neyro_test'),
(16, '$2y$10$PG/6k3DRuMKXTJrlr4FZDOuOmmZuIYSmpuh3DCDH11cLl5HBBD39e', 'ares100'),
(17, '$2y$10$qDF06qTeFybNvo.uQZFYkejXMjBvDP6fDWM5esHWOS7t3FV9Y25XO', 'tarik123'),
(18, '$2y$10$LnyO8dDwLRYwqNQ9NIJNzOFKeraKqZVmdaF0q3cHUw5u5iMXay0fq', 'shlem1998'),
(19, '$2y$10$4V/KM02nXgNDQlo1gidY1uOb7LKahk5OAEP7Ur2izj./NDeURiygy', 'new_user'),
(20, '$2y$10$YsGyzKu.N9FnkOZPxTXFzOeyjPX21JTTqi75llg5VkhZ1VS90ztoK', 'jo_jo_jo'),
(21, '$2y$10$TzOSZVJ4dxbiKmDOBH7Cw.8FanBlNQBqiV4/qvFySpm14KsxGr8aC', 'try_to_creat'),
(22, '$2y$10$c.yavrHhr8uW7hjrNJ0UI.K2IjQGpN49YMGVyLqlXVlq3ouC4LX22', 'jericho '),
(23, '$2y$10$fBNUuono31xmq55giG35r.ofjrxkSYHFfonwvoA1WFypftCMLsvkG', 'test_test'),
(24, '$2y$10$rIQLcvBHPe4c2/w6htgjhuoAa3bzkrz8sKoM3X7V58hccHlVDVJ2G', 'shlem1'),
(25, '$2y$10$aYfaOgdRzlHZiDMLNHoG2.vh26vtaNoML7.68Yg8VIeAW.Ui3Ukwa', 'ich_bin_alex');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `aktivitaeten`
--
ALTER TABLE `aktivitaeten`
  ADD PRIMARY KEY (`aktiv_id`);

--
-- Indizes für die Tabelle `benutzer_auswahl`
--
ALTER TABLE `benutzer_auswahl`
  ADD PRIMARY KEY (`aktiv_nr`,`user_nr`),
  ADD KEY `user_nr` (`user_nr`);

--
-- Indizes für die Tabelle `meditation_bd`
--
ALTER TABLE `meditation_bd`
  ADD PRIMARY KEY (`uebung_id`),
  ADD KEY `aktiv_nr` (`aktiv_nr`);

--
-- Indizes für die Tabelle `meditation_umsetzung`
--
ALTER TABLE `meditation_umsetzung`
  ADD PRIMARY KEY (`user_nr`,`uebung_id`),
  ADD KEY `aktiv_nr` (`aktiv_nr`);

--
-- Indizes für die Tabelle `mehrlesen_bd`
--
ALTER TABLE `mehrlesen_bd`
  ADD PRIMARY KEY (`uebung_id`),
  ADD KEY `aktiv_nr` (`aktiv_nr`);

--
-- Indizes für die Tabelle `mehrlesen_umsetzung`
--
ALTER TABLE `mehrlesen_umsetzung`
  ADD PRIMARY KEY (`uebung_id`,`user_nr`),
  ADD KEY `aktiv_nr` (`aktiv_nr`);

--
-- Indizes für die Tabelle `notizen`
--
ALTER TABLE `notizen`
  ADD PRIMARY KEY (`notiz_id`),
  ADD KEY `user_nr` (`user_nr`);

--
-- Indizes für die Tabelle `rauchen_frei`
--
ALTER TABLE `rauchen_frei`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_nr` (`user_nr`);

--
-- Indizes für die Tabelle `sportzuhause_bd`
--
ALTER TABLE `sportzuhause_bd`
  ADD PRIMARY KEY (`uebung_id`),
  ADD KEY `aktiv_nr` (`aktiv_nr`);

--
-- Indizes für die Tabelle `sportzuhause_umsetzung`
--
ALTER TABLE `sportzuhause_umsetzung`
  ADD PRIMARY KEY (`uebung_id`,`user_nr`),
  ADD KEY `aktiv_nr` (`aktiv_nr`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `aktivitaeten`
--
ALTER TABLE `aktivitaeten`
  MODIFY `aktiv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `meditation_bd`
--
ALTER TABLE `meditation_bd`
  MODIFY `uebung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `mehrlesen_bd`
--
ALTER TABLE `mehrlesen_bd`
  MODIFY `uebung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `mehrlesen_umsetzung`
--
ALTER TABLE `mehrlesen_umsetzung`
  MODIFY `uebung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `notizen`
--
ALTER TABLE `notizen`
  MODIFY `notiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT für Tabelle `rauchen_frei`
--
ALTER TABLE `rauchen_frei`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `sportzuhause_bd`
--
ALTER TABLE `sportzuhause_bd`
  MODIFY `uebung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `sportzuhause_umsetzung`
--
ALTER TABLE `sportzuhause_umsetzung`
  MODIFY `uebung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `benutzer_auswahl`
--
ALTER TABLE `benutzer_auswahl`
  ADD CONSTRAINT `benutzer_auswahl_ibfk_1` FOREIGN KEY (`user_nr`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `benutzer_auswahl_ibfk_2` FOREIGN KEY (`aktiv_nr`) REFERENCES `aktivitaeten` (`aktiv_id`);

--
-- Constraints der Tabelle `meditation_bd`
--
ALTER TABLE `meditation_bd`
  ADD CONSTRAINT `meditation_bd_ibfk_1` FOREIGN KEY (`aktiv_nr`) REFERENCES `aktivitaeten` (`aktiv_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `meditation_umsetzung`
--
ALTER TABLE `meditation_umsetzung`
  ADD CONSTRAINT `meditation_umsetzung_ibfk_1` FOREIGN KEY (`aktiv_nr`) REFERENCES `aktivitaeten` (`aktiv_id`);

--
-- Constraints der Tabelle `mehrlesen_bd`
--
ALTER TABLE `mehrlesen_bd`
  ADD CONSTRAINT `mehrlesen_bd_ibfk_1` FOREIGN KEY (`aktiv_nr`) REFERENCES `aktivitaeten` (`aktiv_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `mehrlesen_umsetzung`
--
ALTER TABLE `mehrlesen_umsetzung`
  ADD CONSTRAINT `mehrlesen_umsetzung_ibfk_1` FOREIGN KEY (`aktiv_nr`) REFERENCES `aktivitaeten` (`aktiv_id`);

--
-- Constraints der Tabelle `notizen`
--
ALTER TABLE `notizen`
  ADD CONSTRAINT `notizen_ibfk_1` FOREIGN KEY (`user_nr`) REFERENCES `user` (`user_id`);

--
-- Constraints der Tabelle `rauchen_frei`
--
ALTER TABLE `rauchen_frei`
  ADD CONSTRAINT `rauchen_frei_ibfk_1` FOREIGN KEY (`user_nr`) REFERENCES `user` (`user_id`);

--
-- Constraints der Tabelle `sportzuhause_bd`
--
ALTER TABLE `sportzuhause_bd`
  ADD CONSTRAINT `sportzuhause_bd_ibfk_1` FOREIGN KEY (`aktiv_nr`) REFERENCES `aktivitaeten` (`aktiv_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `sportzuhause_umsetzung`
--
ALTER TABLE `sportzuhause_umsetzung`
  ADD CONSTRAINT `sportzuhause_umsetzung_ibfk_1` FOREIGN KEY (`aktiv_nr`) REFERENCES `aktivitaeten` (`aktiv_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
