-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Cze 2021, 21:56
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dziennikszkolny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `biezacy_szablon_lekcji`
--

CREATE TABLE IF NOT EXISTS `biezacy_szablon_lekcji` (
  `dzien_w_tyg` varchar(20) NOT NULL,
  `nr_w_dniu` int(11) NOT NULL,
  PRIMARY KEY (`dzien_w_tyg`,`nr_w_dniu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `biezacy_szablon_lekcji`
--

INSERT INTO `biezacy_szablon_lekcji` (`dzien_w_tyg`, `nr_w_dniu`) VALUES
('Czwartek', 1),
('Czwartek', 2),
('Czwartek', 3),
('Czwartek', 4),
('Czwartek', 5),
('Czwartek', 6),
('Piatek', 1),
('Piatek', 2),
('Piatek', 3),
('Piatek', 4),
('Piatek', 5),
('Piatek', 6),
('Poniedzialek', 1),
('Poniedzialek', 2),
('Poniedzialek', 3),
('Poniedzialek', 4),
('Poniedzialek', 5),
('Poniedzialek', 6),
('Sobota', 1),
('Sroda', 1),
('Sroda', 2),
('Sroda', 3),
('Sroda', 4),
('Sroda', 5),
('Sroda', 6),
('Wtorek', 1),
('Wtorek', 2),
('Wtorek', 3),
('Wtorek', 4),
('Wtorek', 5),
('Wtorek', 6);

--
-- Wyzwalacze `biezacy_szablon_lekcji`
--
DELIMITER $$
CREATE TRIGGER `czyLekcjaNieJestWWeekend` BEFORE INSERT ON `biezacy_szablon_lekcji` FOR EACH ROW BEGIN
if new.dzien_w_tyg != ('Poniedzialek' or 'Wtorek' or 'Sroda' or 'Czwartek' or 'Piatek')
then signal sqlstate '02000' set message_text = 'Lekcja nie moze byc w weekend :D';
end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane_osobowe`
--

CREATE TABLE IF NOT EXISTS `dane_osobowe` (
  `Imie` varchar(20) NOT NULL,
  `Nazwisko` varchar(25) NOT NULL,
  PRIMARY KEY (`Imie`,`Nazwisko`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dane_osobowe`
--

INSERT INTO `dane_osobowe` (`Imie`, `Nazwisko`) VALUES
('Adam', 'Kowalski'),
('Adam ', 'Nowak'),
('Agnieszka', 'Frankowska'),
('Aldona', 'Rudnicka'),
('Aleksandra', 'Bialecka'),
('Aleksandra', 'Piatek'),
('Aleksandra', 'Stepien'),
('Anna', 'Nowak'),
('Anna', 'Rebkowiec'),
('Bartosz', 'Wojtarowicz'),
('Beata', 'Rozewicz'),
('Dagmara', 'Salicka'),
('Daria', 'Halicka'),
('Dominik ', 'Budzynski'),
('Dominika ', 'Pawlowska'),
('Dominika ', 'Sidorowska'),
('Eliza', 'Pawlicka'),
('Emilia', 'Brzozowska'),
('Ewa', 'Lasocka'),
('Ewelina', 'Stanowska'),
('Filip ', 'Klimek'),
('Grzegorz', 'Paluszkiewicz'),
('Hubert', 'Iwanski'),
('Iwona ', 'Klosowska'),
('Izabela', 'Grabowska'),
('Jacek ', 'Adamowicz'),
('Jakub', 'Lukomski'),
('Jan ', 'Kowalski'),
('Joanna', 'Sokolowska'),
('Jolanta', 'Boguszewska'),
('Julia', 'Pawlak'),
('Justyna', 'Flegel'),
('Kacper', 'Staszewski'),
('Kaja', 'Morawiecka'),
('Karolina', 'Adamiak'),
('Karolina', 'Jakubiak'),
('Katarzyna', 'Piotrowska'),
('Kinga', 'Dudek'),
('Klaudia', 'Michnik'),
('Konrad', 'Bachleda'),
('Krystian ', 'Jabłonski'),
('Krystyna', 'Drewnowska'),
('Lukasz', 'Liszcz'),
('Maciej', 'Łagowski'),
('Magdalena', 'Lipinska'),
('Marcelina', 'Sulikowska'),
('Maria', 'Popek'),
('Marta', 'Dudzinska'),
('Marzena', 'Terlecka'),
('Michał', 'Paczkowski'),
('Mikolaj', 'Lagowski'),
('Monika', 'Bogucka'),
('Nadia', 'Sochacka'),
('Olaf', 'Oborski'),
('Olga', 'Wojtowicz'),
('Oliwia', 'Bialas'),
('Pawel', 'Orlowski'),
('Pawel', 'Witkowski'),
('Przemyslaw', 'Fogiel'),
('qwe', 'qwe'),
('qwer', 'qwer'),
('qwerty', 'qwerty'),
('Rafal ', 'Borys'),
('Robert', 'Smokowski'),
('Ryszard', 'Kotowski'),
('Slawomir', 'Drewnowicz'),
('Sylwia', 'Sklodowska'),
('Szymon', 'Niezgoda'),
('Tomasz', 'Kot'),
('Tymoteusz', 'Dabrowski'),
('Urszula ', 'Lewandowska'),
('Weronika', 'Tabor'),
('Wieslaw', 'Klimek'),
('Wiktor', 'Kaminski'),
('Witold', 'Mazur'),
('Wojciech', 'Buczkowski'),
('Wojciech', 'Kowal'),
('Zuzanna', 'Baginska');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `frekwencja`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE IF NOT EXISTS `frekwencja` (
`nr_w_dzienniku` int(11)
,`dane_osobowe_Imie` varchar(20)
,`dane_osobowe_Nazwisko` varchar(25)
,`lekcja_data` date
,`lekcja_nr_w_dniu` int(11)
,`stan` varchar(15)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `informacje`
--

CREATE TABLE IF NOT EXISTS `informacje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tresc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `informacje`
--

INSERT INTO `informacje` (`id`, `tresc`) VALUES
(1, 'W dniu 23.04.2021 odbedzie sie sprawdzian z matematyki z dzialu geometria'),
(2, 'W dniu 27.04.2021 odbedzie sie sprawdzaian z jezyka z polskiego z lektury \"Krzyzacy\"'),
(3, 'W dniu 29.04.2021 odbedzie sie sprawdzian z jezyka angielskiego z czasu przeszlego'),
(4, 'qwerty'),
(5, 'Treść ogłoszenia.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE IF NOT EXISTS `klasa` (
  `oznaczenie` varchar(10) NOT NULL,
  `roczny_plan_lekcji_id` int(11) NOT NULL,
  `nauczyciel_id` int(11) NOT NULL,
  PRIMARY KEY (`oznaczenie`),
  KEY `fk_klasa_szablon_plan_lekcji1_idx` (`roczny_plan_lekcji_id`),
  KEY `fk_klasa_nauczyciel1_idx` (`nauczyciel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `klasa`
--

INSERT INTO `klasa` (`oznaczenie`, `roczny_plan_lekcji_id`, `nauczyciel_id`) VALUES
('1C', 1, 1),
('2B', 2, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekcja`
--

CREATE TABLE IF NOT EXISTS `lekcja` (
  `temat` varchar(45) NOT NULL,
  `data_dnia` date NOT NULL,
  `nauczyciel_id` int(11) NOT NULL,
  `roczny_plan_lekcji_id` int(11) NOT NULL,
  `przedmiot_nazwa` varchar(20) NOT NULL,
  `biezacy_szablon_lekcji_dzien_w_tyg` varchar(20) NOT NULL,
  `informacje_id` int(11) NOT NULL,
  `biezacy_szablon_lekcji_nr_w_dniu` int(11) NOT NULL,
  PRIMARY KEY (`data_dnia`,`biezacy_szablon_lekcji_nr_w_dniu`),
  KEY `fk_lekcja_nauczyciel1_idx` (`nauczyciel_id`),
  KEY `fk_lekcja_szablon plan lekcji1_idx` (`roczny_plan_lekcji_id`),
  KEY `fk_lekcja_przedmiot1_idx` (`przedmiot_nazwa`),
  KEY `fk_lekcja_biezacy szablon lekcji1_idx` (`biezacy_szablon_lekcji_dzien_w_tyg`,`biezacy_szablon_lekcji_nr_w_dniu`),
  KEY `fk_lekcja_informacje1_idx` (`informacje_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `lekcja`
--

INSERT INTO `lekcja` (`temat`, `data_dnia`, `nauczyciel_id`, `roczny_plan_lekcji_id`, `przedmiot_nazwa`, `biezacy_szablon_lekcji_dzien_w_tyg`, `informacje_id`, `biezacy_szablon_lekcji_nr_w_dniu`) VALUES
('Uklady rownan', '2021-04-26', 3, 1, 'Matematyka', 'Poniedzialek', 1, 1),
('Uklad pokarmowy', '2021-04-26', 3, 1, 'Biologia', 'Poniedzialek', 2, 2),
('Krzyzacy - omowienie lektury', '2021-04-26', 3, 1, 'Jezyk polski', 'Poniedzialek', 0, 4),
('1 zasada dynamiki Newtona', '2021-04-26', 4, 1, 'Fizyka', 'Poniedzialek', 3, 5),
('Rownania chemiczne', '2021-04-26', 3, 1, 'Chemia', 'Poniedzialek', 0, 6),
('biologia1', '2021-06-07', 5, 1, 'Biologia', 'Poniedzialek', 1, 1),
('Polska', '2021-06-09', 3, 1, 'Geografia', 'Sroda', 1, 2),
('Złamania otwarte', '2021-06-09', 3, 1, 'EDB', 'Sroda', 1, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE IF NOT EXISTS `nauczyciel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `czy_admin` tinyint(1) NOT NULL,
  `wiek` int(11) NOT NULL,
  `haslo` char(32) NOT NULL,
  `login` varchar(15) NOT NULL,
  `dane_osobowe_Imie` varchar(20) NOT NULL,
  `dane_osobowe_Nazwisko` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  KEY `wiek` (`wiek`),
  KEY `fk_nauczyciel_dane osobowe1_idx` (`dane_osobowe_Imie`,`dane_osobowe_Nazwisko`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `nauczyciel`
--

INSERT INTO `nauczyciel` (`id`, `czy_admin`, `wiek`, `haslo`, `login`, `dane_osobowe_Imie`, `dane_osobowe_Nazwisko`) VALUES
(1, 0, 43, '69f157f5a264958d01d15f9624eb82f3', 'FDcdTUsN', 'Adam', 'Nowak'),
(2, 0, 57, '5e2f1ce3ac84203cc1414e488345fd62', 'OktRbrSh', 'Jan', 'Kowalski'),
(3, 1, 32, '69f157f5a264958d01d15f9624eb82f3', 'vncWTzFe', 'Anna', 'Nowak'),
(4, 0, 39, '5e2f1ce3ac84203cc1414e488345fd62', 'opIfAgvZ', 'Katarzyna', 'Piotrowska'),
(5, 0, 60, '69f157f5a264958d01d15f9624eb82f3', 'kmxiAmYf', 'Pawel', 'Witkowski'),
(6, 0, 29, '5e2f1ce3ac84203cc1414e488345fd62', 'xobHMDtz', 'Szymon', 'Niezgoda'),
(7, 0, 30, '5e2f1ce3ac84203cc1414e488345fd62', 'BQjVcTLS', 'Joanna', 'Sokolowska');

--
-- Wyzwalacze `nauczyciel`
--
DELIMITER $$
CREATE TRIGGER `czyNauczycielJestAdminem` BEFORE INSERT ON `nauczyciel` FOR EACH ROW BEGIN
if  new.czy_admin = 1 then signal sqlstate '02000' set message_text = 'ta osoba jest administratorem';
end if;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `czyNauczycielJestAdminem1` BEFORE UPDATE ON `nauczyciel` FOR EACH ROW BEGIN
if  new.czy_admin = 1 then signal sqlstate '02000' set message_text = 'ta osoba jest administratorem';
end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel_moze_prowadzic_przedmiot`
--

CREATE TABLE IF NOT EXISTS `nauczyciel_moze_prowadzic_przedmiot` (
  `nauczyciel_id` int(11) NOT NULL,
  `przedmiot_nazwa` varchar(20) NOT NULL,
  PRIMARY KEY (`nauczyciel_id`,`przedmiot_nazwa`),
  KEY `fk_nauczyciel_has_przedmiot_przedmiot1_idx` (`przedmiot_nazwa`),
  KEY `fk_nauczyciel_has_przedmiot_nauczyciel1_idx` (`nauczyciel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `nauczyciel_moze_prowadzic_przedmiot`
--

INSERT INTO `nauczyciel_moze_prowadzic_przedmiot` (`nauczyciel_id`, `przedmiot_nazwa`) VALUES
(1, 'Jezyk angielski'),
(1, 'Jezyk niemiecki'),
(1, 'Jezyk polski'),
(2, 'Historia'),
(2, 'WF'),
(3, 'Biologia'),
(3, 'Chemia'),
(3, 'Geografia'),
(3, 'Jezyk polski'),
(3, 'Matematyka'),
(4, 'Fizyka'),
(5, 'Informatyka'),
(5, 'Religia'),
(6, 'Muzyka'),
(6, 'Plastyka'),
(7, 'EDB'),
(7, 'Technika'),
(7, 'WOS');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel_prowadzi_przedmiot`
--

CREATE TABLE IF NOT EXISTS `nauczyciel_prowadzi_przedmiot` (
  `nauczyciel_id` int(11) NOT NULL,
  `przedmiot_nazwa` varchar(20) NOT NULL,
  PRIMARY KEY (`nauczyciel_id`,`przedmiot_nazwa`),
  KEY `fk_nauczyciel_has_przedmiot1_przedmiot1_idx` (`przedmiot_nazwa`),
  KEY `fk_nauczyciel_has_przedmiot1_nauczyciel1_idx` (`nauczyciel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `nauczyciel_prowadzi_przedmiot`
--

INSERT INTO `nauczyciel_prowadzi_przedmiot` (`nauczyciel_id`, `przedmiot_nazwa`) VALUES
(1, 'Jezyk angielski'),
(1, 'Jezyk niemiecki'),
(2, 'Historia'),
(2, 'WF'),
(3, 'Biologia'),
(3, 'Chemia'),
(3, 'Geografia'),
(3, 'Jezyk polski'),
(3, 'Matematyka'),
(4, 'Fizyka'),
(5, 'Informatyka'),
(5, 'Religia'),
(6, 'Muzyka'),
(6, 'Plastyka'),
(7, 'EDB'),
(7, 'Technika'),
(7, 'WOS');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nieobecnosc`
--

CREATE TABLE IF NOT EXISTS `nieobecnosc` (
  `idnieobecnosc` int(11) NOT NULL AUTO_INCREMENT,
  `nauczyciel_id` int(11) NOT NULL,
  `lekcja_data` date NOT NULL,
  `lekcja_nr_w_dniu` int(11) NOT NULL,
  `stan` varchar(15) NOT NULL,
  `uczen_iducznia` int(11) NOT NULL,
  PRIMARY KEY (`idnieobecnosc`),
  KEY `fk_nieobecnosc_nauczyciel1_idx` (`nauczyciel_id`),
  KEY `fk_nieobecnosc_lekcja1_idx` (`lekcja_data`,`lekcja_nr_w_dniu`),
  KEY `fk_nieobecnosc_uczeń1_idx` (`uczen_iducznia`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `nieobecnosc`
--

INSERT INTO `nieobecnosc` (`idnieobecnosc`, `nauczyciel_id`, `lekcja_data`, `lekcja_nr_w_dniu`, `stan`, `uczen_iducznia`) VALUES
(1, 1, '2021-05-05', 1, 'nb', 1),
(2, 3, '2021-05-05', 3, 'nb', 3),
(3, 4, '2021-05-05', 4, 'nb', 4),
(4, 5, '2021-05-05', 5, 'nb', 5),
(5, 6, '2021-05-05', 5, 'nb', 6),
(6, 3, '2021-05-05', 4, 'nb', 7),
(7, 4, '2021-05-05', 3, 'nb', 2),
(8, 2, '2021-05-05', 2, 'nb', 3),
(9, 2, '2021-05-05', 1, 'nb', 14),
(10, 2, '2021-05-05', 2, 'nb', 13),
(11, 4, '2021-05-05', 3, 'nb', 15),
(12, 5, '2021-05-05', 4, 'u', 17),
(13, 6, '2021-05-05', 5, 'u', 13),
(14, 4, '2021-05-05', 6, 'u', 14),
(15, 2, '2021-05-05', 7, 'u', 12),
(16, 5, '2021-05-05', 5, 'u', 11),
(17, 4, '2021-05-05', 4, 'u', 15),
(18, 2, '2021-05-05', 2, 'u', 22),
(19, 2, '2021-05-05', 1, 'u', 21),
(20, 3, '2021-05-05', 2, 'u', 23),
(21, 5, '2021-04-26', 1, 'nb', 4),
(22, 5, '2021-04-26', 4, 'nb', 12),
(23, 3, '2021-04-26', 1, 'nb', 22),
(24, 3, '2021-06-07', 1, 'nb', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ocena`
--

CREATE TABLE IF NOT EXISTS `ocena` (
  `idocena` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `wartosc` float NOT NULL,
  `nauczyciel_id` int(11) NOT NULL,
  `przedmiot_nazwa` varchar(20) NOT NULL,
  `waga` int(11) NOT NULL,
  `opis` varchar(200) NOT NULL,
  `uczen_iducznia` int(11) NOT NULL,
  PRIMARY KEY (`idocena`),
  KEY `fk_ocena_nauczyciel1_idx` (`nauczyciel_id`),
  KEY `fk_ocena_przedmiot1_idx` (`przedmiot_nazwa`),
  KEY `waga_wartosc` (`wartosc`,`waga`),
  KEY `fk_ocena_uczen1_idx` (`uczen_iducznia`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ocena`
--

INSERT INTO `ocena` (`idocena`, `data`, `wartosc`, `nauczyciel_id`, `przedmiot_nazwa`, `waga`, `opis`, `uczen_iducznia`) VALUES
(1, '2021-04-05', 1, 1, 'Jezyk angielski', 1, 'wer', 1),
(2, '2021-04-05', 2, 3, 'Geografia', 2, 'wqe', 2),
(3, '2021-04-05', 3, 4, 'Fizyka', 3, 'r', 3),
(4, '2021-04-05', 4, 2, 'Historia', 4, 'wqe', 4),
(5, '2021-04-05', 5, 5, 'Religia', 5, 'e', 5),
(6, '2021-04-05', 1, 1, 'Jezyk angielski', 1, 'fwe', 4),
(7, '2021-04-05', 2, 6, 'Muzyka', 2, 'fesf', 4),
(8, '2021-04-05', 3, 3, 'Geografia', 3, 'se', 5),
(9, '2021-04-05', 4, 7, 'Technika', 4, 'es', 3),
(10, '2021-04-05', 5, 5, 'Religia', 5, 'fse', 2),
(11, '2021-04-05', 2.5, 6, 'Muzyka', 1, 'fse', 4),
(12, '2021-04-05', 3.5, 2, 'Historia', 1, 'sf', 3),
(13, '2021-04-05', 4.5, 4, 'Fizyka', 2, 'esf', 12),
(14, '2021-04-05', 5.5, 5, 'Religia', 2, 'sf', 13),
(15, '2021-04-05', 2, 6, 'Muzyka', 3, 'se', 15),
(16, '2021-04-05', 3, 7, 'Technika', 4, 'efw', 17),
(17, '2021-04-05', 4, 2, 'Historia', 5, 'aed', 15),
(18, '2021-04-05', 5, 3, 'Geografia', 4, 'ewq', 13),
(19, '2021-04-05', 2, 4, 'Fizyka', 3, 'q', 14),
(20, '2021-04-05', 3, 5, 'Religia', 2, 'efw', 14),
(21, '2021-04-05', 2, 2, 'Historia', 1, 'esf', 25),
(22, '2021-04-05', 4, 4, 'Fizyka', 2, 'qew', 24),
(23, '2021-04-05', 1, 1, 'Jezyk angielski', 3, 'fef', 21),
(24, '2021-04-05', 3, 2, 'Historia', 4, 'wf', 23),
(25, '2021-04-05', 4, 3, 'Geografia', 4, 'f', 1),
(26, '2021-06-07', 5, 5, 'Chemia', 1, 'Test', 14),
(27, '2021-06-07', 5, 5, 'Biologia', 1, 'qwerty', 13),
(28, '2021-06-08', 5, 3, 'Biologia', 2, 'sprawdzian', 1),
(29, '2021-06-09', 3, 3, 'Język niemiecki', 3, 'qwerty', 1),
(30, '2021-06-09', 3, 3, 'Fizyka', 2, 'Ocena', 1);

--
-- Wyzwalacze `ocena`
--
DELIMITER $$
CREATE TRIGGER `czyWartoscOcenyJestPrawidlowa` BEFORE INSERT ON `ocena` FOR EACH ROW BEGIN
if new.wartosc > 6 then signal sqlstate '02000' set message_text = 'nieprawidlowa wartosc oceny';
end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE IF NOT EXISTS `przedmiot` (
  `nazwa` varchar(20) NOT NULL,
  PRIMARY KEY (`nazwa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`nazwa`) VALUES
('Biologia'),
('Chemia'),
('EDB'),
('Fizyka'),
('Geografia'),
('Historia'),
('Informatyka'),
('Język angielski'),
('Język niemiecki'),
('Język polski'),
('Matematyka'),
('Muzyka'),
('Plastyka'),
('Religia'),
('Technika'),
('WF'),
('WOS');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roczny_plan_lekcji`
--

CREATE TABLE IF NOT EXISTS `roczny_plan_lekcji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `roczny_plan_lekcji`
--

INSERT INTO `roczny_plan_lekcji` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roczny_plan_lekcji_has_biezacy_szablon_lekcji`
--

CREATE TABLE IF NOT EXISTS `roczny_plan_lekcji_has_biezacy_szablon_lekcji` (
  `roczny_plan_lekcji_id` int(11) NOT NULL,
  `biezacy_szablon_lekcji_dzien_w_tyg` varchar(20) NOT NULL,
  `biezacy_szablon_lekcji_nr_w_dniu` int(11) NOT NULL,
  PRIMARY KEY (`roczny_plan_lekcji_id`,`biezacy_szablon_lekcji_dzien_w_tyg`,`biezacy_szablon_lekcji_nr_w_dniu`),
  KEY `fk_roczny_plan_lekcji_has_biezacy_szablon_lekcji_biezacy_idx` (`biezacy_szablon_lekcji_dzien_w_tyg`,`biezacy_szablon_lekcji_nr_w_dniu`),
  KEY `fk_roczny_plan_lekcji_has_biezacy_szablon_lekcji_roczny_pl_idx` (`roczny_plan_lekcji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `roczny_plan_lekcji_has_biezacy_szablon_lekcji`
--

INSERT INTO `roczny_plan_lekcji_has_biezacy_szablon_lekcji` (`roczny_plan_lekcji_id`, `biezacy_szablon_lekcji_dzien_w_tyg`, `biezacy_szablon_lekcji_nr_w_dniu`) VALUES
(1, 'Czwartek', 1),
(1, 'Czwartek', 2),
(1, 'Czwartek', 3),
(1, 'Czwartek', 4),
(1, 'Czwartek', 5),
(1, 'Czwartek', 6),
(1, 'Piatek', 1),
(1, 'Piatek', 2),
(1, 'Piatek', 3),
(1, 'Piatek', 4),
(1, 'Piatek', 5),
(1, 'Piatek', 6),
(1, 'Poniedzialek', 1),
(1, 'Poniedzialek', 2),
(1, 'Poniedzialek', 3),
(1, 'Poniedzialek', 4),
(1, 'Poniedzialek', 5),
(1, 'Poniedzialek', 6),
(1, 'Sroda', 1),
(1, 'Sroda', 2),
(1, 'Sroda', 3),
(1, 'Sroda', 4),
(1, 'Sroda', 5),
(1, 'Sroda', 6),
(1, 'Wtorek', 1),
(1, 'Wtorek', 2),
(1, 'Wtorek', 3),
(1, 'Wtorek', 4),
(1, 'Wtorek', 5),
(1, 'Wtorek', 6),
(2, 'Czwartek', 1),
(2, 'Czwartek', 2),
(2, 'Czwartek', 3),
(2, 'Czwartek', 4),
(2, 'Czwartek', 5),
(2, 'Czwartek', 6),
(2, 'Piatek', 1),
(2, 'Piatek', 2),
(2, 'Piatek', 3),
(2, 'Piatek', 4),
(2, 'Piatek', 5),
(2, 'Piatek', 6),
(2, 'Poniedzialek', 1),
(2, 'Poniedzialek', 2),
(2, 'Poniedzialek', 3),
(2, 'Poniedzialek', 4),
(2, 'Poniedzialek', 5),
(2, 'Poniedzialek', 6),
(2, 'Sroda', 1),
(2, 'Sroda', 2),
(2, 'Sroda', 3),
(2, 'Sroda', 4),
(2, 'Sroda', 5),
(2, 'Sroda', 6),
(2, 'Wtorek', 1),
(2, 'Wtorek', 2),
(2, 'Wtorek', 3),
(2, 'Wtorek', 4),
(2, 'Wtorek', 5),
(2, 'Wtorek', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzic`
--

CREATE TABLE IF NOT EXISTS `rodzic` (
  `idrodzic` int(11) NOT NULL AUTO_INCREMENT,
  `nazwisko` varchar(25) NOT NULL,
  `login` varchar(15) NOT NULL,
  `haslo` char(32) NOT NULL,
  PRIMARY KEY (`idrodzic`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `rodzic`
--

INSERT INTO `rodzic` (`idrodzic`, `nazwisko`, `login`, `haslo`) VALUES
(1, 'Kowal', 'TlKFnGAG', '69f157f5a264958d01d15f9624eb82f3'),
(2, 'Kaminski', 'dWDTRamI', '5e2f1ce3ac84203cc1414e488345fd62'),
(3, 'Bachleda', 'gNisQUMn', '5e2f1ce3ac84203cc1414e488345fd62'),
(4, 'Adamowicz', 'cWFZtDDq', '5e2f1ce3ac84203cc1414e488345fd62'),
(5, 'Adamiak', 'MPyTiszX', '5e2f1ce3ac84203cc1414e488345fd62'),
(6, 'Pawlowska', 'vZPnlGEC', '5e2f1ce3ac84203cc1414e488345fd62'),
(7, 'Bialecka', 'SCOhatSL', '5e2f1ce3ac84203cc1414e488345fd62'),
(8, 'Tabor', 'GVplwdjo', '5e2f1ce3ac84203cc1414e488345fd62'),
(9, 'Bialas', 'nWFtgZOu', '5e2f1ce3ac84203cc1414e488345fd62'),
(10, 'Baginska', 'qoAsNnmb', '5e2f1ce3ac84203cc1414e488345fd62'),
(11, 'Lewandowska', 'fsqkYFbm', '69f157f5a264958d01d15f9624eb82f3'),
(12, 'Piatek', 'OFUJfLKG', '5e2f1ce3ac84203cc1414e488345fd62'),
(13, 'Budzynski', 'iKrpiRxZ', '5e2f1ce3ac84203cc1414e488345fd62'),
(14, 'Jakubiak', 'DvtfpARw', '5e2f1ce3ac84203cc1414e488345fd62'),
(15, 'Borys', 'CgZhvMeA', '5e2f1ce3ac84203cc1414e488345fd62'),
(16, 'Brzozowska', 'DtoKHPzf', '5e2f1ce3ac84203cc1414e488345fd62'),
(17, 'Smokowski', 'ZpfrTRHj', '5e2f1ce3ac84203cc1414e488345fd62'),
(18, 'Stanowska', 'oPaQghgP', '5e2f1ce3ac84203cc1414e488345fd62'),
(19, 'Bogucka', 'PXZglYxM', '5e2f1ce3ac84203cc1414e488345fd62'),
(20, 'Boguszewska', 'JVGaAVuq', '5e2f1ce3ac84203cc1414e488345fd62'),
(21, 'Dabrowski', 'WtQZqUya', '5e2f1ce3ac84203cc1414e488345fd62'),
(22, 'Dudzinska', 'zRCpVUvO', '5e2f1ce3ac84203cc1414e488345fd62'),
(23, 'Popek', 'TbVqEQHc', '5e2f1ce3ac84203cc1414e488345fd62'),
(24, 'Drewnowicz', 'pdDGjWJP', '5e2f1ce3ac84203cc1414e488345fd62'),
(25, 'Drewnowska', 'zQzcqqNl', '5e2f1ce3ac84203cc1414e488345fd62');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `srednia`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE IF NOT EXISTS `srednia` (
`nr_w_dzienniku` int(11)
,`dane_osobowe_Imie` varchar(20)
,`dane_osobowe_Nazwisko` varchar(25)
,`przedmiot_nazwa` varchar(20)
,`wartosc` float
,`waga` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `terminarz`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE IF NOT EXISTS `terminarz` (
`oznaczenie` varchar(10)
,`id` int(11)
,`data_dnia` date
,`biezacy_szablon_lekcji_nr_w_dniu` int(11)
,`przedmiot_nazwa` varchar(20)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE IF NOT EXISTS `uczen` (
  `nr_w_dzienniku` int(11) NOT NULL,
  `plec` tinytext NOT NULL,
  `haslo` char(32) NOT NULL,
  `login` varchar(15) NOT NULL,
  `dataUrodzenia` date NOT NULL,
  `rodzic_idrodzic` int(11) NOT NULL,
  `klasa_oznaczenie` varchar(10) NOT NULL,
  `dane_osobowe_Imie` varchar(20) NOT NULL,
  `dane_osobowe_Nazwisko` varchar(25) NOT NULL,
  `iducznia` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`iducznia`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `uczenzklasy` (`nr_w_dzienniku`,`klasa_oznaczenie`) COMMENT='do jednoznacznej identyfikacji',
  KEY `fk_uczen_rodzic1_idx` (`rodzic_idrodzic`),
  KEY `fk_uczen_klasa1_idx` (`klasa_oznaczenie`),
  KEY `plecklasa` (`login`,`klasa_oznaczenie`) COMMENT='na wf',
  KEY `fk_uczen_dane osobowe1_idx` (`dane_osobowe_Imie`,`dane_osobowe_Nazwisko`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`nr_w_dzienniku`, `plec`, `haslo`, `login`, `dataUrodzenia`, `rodzic_idrodzic`, `klasa_oznaczenie`, `dane_osobowe_Imie`, `dane_osobowe_Nazwisko`, `iducznia`) VALUES
(1, 'M', '69f157f5a264958d01d15f9624eb82f3', 'vEPzNYCB', '2000-01-01', 1, '1C', 'Wojciech', 'Kowal', 1),
(2, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'JHONYiBP', '2000-01-02', 2, '1C', 'Wiktor', 'Kaminski', 2),
(3, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'ftBiscwq', '2000-01-03', 3, '1C', 'Konrad', 'Bachleda', 3),
(4, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'HjpLqqZn', '2000-01-04', 4, '1C', 'Jacek ', 'Adamowicz', 4),
(5, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'dUbMaOEF', '2000-01-05', 5, '1C', 'Karolina', 'Adamiak', 5),
(6, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'vaHpbtDS', '2000-01-06', 6, '1C', 'Dominika ', 'Pawlowska', 6),
(7, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'kXcuhOvx', '2000-01-07', 7, '1C', 'Aleksandra', 'Bialecka', 7),
(8, 'K', '69f157f5a264958d01d15f9624eb82f3', 'rEnYVrlt', '2000-01-08', 8, '1C', 'Weronika', 'Tabor', 8),
(9, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'IPnEFTPf', '2000-01-09', 9, '1C', 'Oliwia', 'Bialas', 9),
(10, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'FELzSRYH', '2000-01-10', 10, '1C', 'Zuzanna', 'Baginska', 10),
(11, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'umHMklIB', '2000-01-11', 11, '1C', 'Urszula ', 'Lewandowska', 11),
(12, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'kfylJwBm', '2000-01-12', 12, '1C', 'Aleksandra', 'Piatek', 12),
(1, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'qGZkuTwd', '2000-01-13', 13, '2B', 'Dominik ', 'Budzynski', 13),
(2, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'ZLwlYTYyg', '2000-01-14', 14, '2B', 'Karolina', 'Jakubiak', 14),
(3, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'gDHmUzTz', '2000-01-15', 15, '2B', 'Rafal ', 'Borys', 15),
(4, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'dgKyNtcU', '2000-01-16', 16, '2B', 'Emilia', 'Brzozowska', 16),
(5, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'TWupKqSM', '2000-01-17', 17, '2B', 'Robert', 'Smokowski', 17),
(6, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'jYinqigq', '2000-01-18', 18, '2B', 'Ewelina', 'Stanowska', 18),
(7, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'wqyynIaP', '2000-01-19', 19, '2B', 'Monika', 'Bogucka', 19),
(8, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'jJXmdHsA', '2000-01-20', 20, '2B', 'Jolanta', 'Boguszewska', 20),
(9, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'xxvEorOb', '2000-01-21', 21, '2B', 'Tymoteusz', 'Dabrowski', 21),
(10, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'GRBvfWlF', '2000-01-22', 22, '2B', 'Marta', 'Dudzinska', 22),
(11, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'SgkCSpfU', '2000-01-23', 23, '2B', 'Maria', 'Popek', 23),
(12, 'M', '5e2f1ce3ac84203cc1414e488345fd62', 'YkQtpnJi', '2000-01-24', 24, '2B', 'Slawomir', 'Drewnowicz', 24),
(13, 'K', '5e2f1ce3ac84203cc1414e488345fd62', 'IoAhmGGk', '2000-01-25', 25, '2B', 'Krystyna', 'Drewnowska', 25);

--
-- Wyzwalacze `uczen`
--
DELIMITER $$
CREATE TRIGGER `unikalnyLoginUcz` BEFORE INSERT ON `uczen` FOR EACH ROW begin
if new.login = u.login then signal sqlstate '02000' set message_text = 'login juz istnieje';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uwagi`
--

CREATE TABLE IF NOT EXISTS `uwagi` (
  `iduwagi` int(11) NOT NULL AUTO_INCREMENT,
  `tresc` varchar(500) NOT NULL,
  `data_uwagi` date NOT NULL,
  `uczen_iducznia` int(11) NOT NULL,
  `nauczyciel_id` int(11) NOT NULL,
  PRIMARY KEY (`iduwagi`),
  KEY `data` (`data_uwagi`),
  KEY `fk_uwagi_uczen1_idx` (`uczen_iducznia`),
  KEY `fk_uwagi_nauczyciel1_idx` (`nauczyciel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uwagi`
--

INSERT INTO `uwagi` (`iduwagi`, `tresc`, `data_uwagi`, `uczen_iducznia`, `nauczyciel_id`) VALUES
(1, 'Uczen wyzywal kolege ', '2021-04-26', 0, 0),
(2, 'Uczen uniemozliwial przeprowadzenie lekcji', '2021-04-06', 0, 0),
(3, 'Uczen uniemozliwial przeprowadzenie lekcji', '2021-04-07', 0, 0),
(4, 'Uwaga', '2021-06-07', 1, 3),
(5, 'Uwaga', '2021-06-07', 16, 5),
(6, 'UwagaUwagaUwagaUwagaUwagaUwaga', '2021-06-07', 16, 5),
(7, 'Nowa uwaga', '2021-06-09', 13, 3);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `uwagiuczniow`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE IF NOT EXISTS `uwagiuczniow` (
`nr_w_dzienniku` int(11)
,`ImieUcznia` varchar(20)
,`NazwiskoUcznia` varchar(25)
,`data_uwagi` date
,`tresc` varchar(500)
,`ImieNauczyciela` varchar(20)
,`NazwiskoNauczyciela` varchar(25)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `wychowawcy`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE IF NOT EXISTS `wychowawcy` (
`nauczyciel_id` int(11)
,`dane_osobowe_Imie` varchar(20)
,`dane_osobowe_Nazwisko` varchar(25)
);

-- --------------------------------------------------------

--
-- Struktura widoku `frekwencja`
--
DROP TABLE IF EXISTS `frekwencja`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dziennikszkolny`@`localhost` SQL SECURITY DEFINER VIEW `frekwencja`  AS SELECT `u`.`nr_w_dzienniku` AS `nr_w_dzienniku`, `u`.`dane_osobowe_Imie` AS `dane_osobowe_Imie`, `u`.`dane_osobowe_Nazwisko` AS `dane_osobowe_Nazwisko`, `n`.`lekcja_data` AS `lekcja_data`, `n`.`lekcja_nr_w_dniu` AS `lekcja_nr_w_dniu`, `n`.`stan` AS `stan` FROM (`uczen` `u` join `nieobecnosc` `n`) WHERE `n`.`uczen_iducznia` = `u`.`iducznia` ORDER BY `u`.`dane_osobowe_Nazwisko` ASC ;

-- --------------------------------------------------------

--
-- Struktura widoku `srednia`
--
DROP TABLE IF EXISTS `srednia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dziennikszkolny`@`localhost` SQL SECURITY DEFINER VIEW `srednia`  AS SELECT `u`.`nr_w_dzienniku` AS `nr_w_dzienniku`, `u`.`dane_osobowe_Imie` AS `dane_osobowe_Imie`, `u`.`dane_osobowe_Nazwisko` AS `dane_osobowe_Nazwisko`, `o`.`przedmiot_nazwa` AS `przedmiot_nazwa`, `o`.`wartosc` AS `wartosc`, `o`.`waga` AS `waga` FROM (`uczen` `u` join `ocena` `o`) WHERE `u`.`iducznia` = `o`.`uczen_iducznia` ORDER BY `u`.`dane_osobowe_Nazwisko` ASC ;

-- --------------------------------------------------------

--
-- Struktura widoku `terminarz`
--
DROP TABLE IF EXISTS `terminarz`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dziennikszkolny`@`localhost` SQL SECURITY DEFINER VIEW `terminarz`  AS SELECT `k`.`oznaczenie` AS `oznaczenie`, `r`.`id` AS `id`, `l`.`data_dnia` AS `data_dnia`, `l`.`biezacy_szablon_lekcji_nr_w_dniu` AS `biezacy_szablon_lekcji_nr_w_dniu`, `l`.`przedmiot_nazwa` AS `przedmiot_nazwa` FROM ((`klasa` `k` join `roczny_plan_lekcji` `r` on(`k`.`roczny_plan_lekcji_id` = `r`.`id`)) join `lekcja` `l` on(`l`.`roczny_plan_lekcji_id` = `r`.`id`)) ORDER BY `k`.`oznaczenie` ASC ;

-- --------------------------------------------------------

--
-- Struktura widoku `uwagiuczniow`
--
DROP TABLE IF EXISTS `uwagiuczniow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dziennikszkolny`@`localhost` SQL SECURITY DEFINER VIEW `uwagiuczniow`  AS SELECT `u`.`nr_w_dzienniku` AS `nr_w_dzienniku`, `u`.`dane_osobowe_Imie` AS `ImieUcznia`, `u`.`dane_osobowe_Nazwisko` AS `NazwiskoUcznia`, `uw`.`data_uwagi` AS `data_uwagi`, `uw`.`tresc` AS `tresc`, `n`.`dane_osobowe_Imie` AS `ImieNauczyciela`, `n`.`dane_osobowe_Nazwisko` AS `NazwiskoNauczyciela` FROM ((`uczen` `u` join `uwagi` `uw` on(`uw`.`uczen_iducznia` = `u`.`iducznia`)) join `nauczyciel` `n` on(`n`.`id` = `uw`.`nauczyciel_id`)) ORDER BY `u`.`dane_osobowe_Nazwisko` ASC ;

-- --------------------------------------------------------

--
-- Struktura widoku `wychowawcy`
--
DROP TABLE IF EXISTS `wychowawcy`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dziennikszkolny`@`localhost` SQL SECURITY DEFINER VIEW `wychowawcy`  AS SELECT `k`.`nauczyciel_id` AS `nauczyciel_id`, `n`.`dane_osobowe_Imie` AS `dane_osobowe_Imie`, `n`.`dane_osobowe_Nazwisko` AS `dane_osobowe_Nazwisko` FROM (`nauczyciel` `n` join `klasa` `k`) WHERE `k`.`nauczyciel_id` = `n`.`id` ORDER BY `n`.`dane_osobowe_Nazwisko` ASC ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lekcja`
--
ALTER TABLE `lekcja` ADD FULLTEXT KEY `temat` (`temat`);

--
-- Indeksy dla tabeli `rodzic`
--
ALTER TABLE `rodzic` ADD FULLTEXT KEY `nazwisko` (`nazwisko`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD CONSTRAINT `fk_klasa_nauczyciel1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_klasa_szablon_plan_lekcji1` FOREIGN KEY (`roczny_plan_lekcji_id`) REFERENCES `roczny_plan_lekcji` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `lekcja`
--
ALTER TABLE `lekcja`
  ADD CONSTRAINT `fk_lekcja_biezacy_szablon_lekcji1` FOREIGN KEY (`biezacy_szablon_lekcji_dzien_w_tyg`,`biezacy_szablon_lekcji_nr_w_dniu`) REFERENCES `biezacy_szablon_lekcji` (`dzien_w_tyg`, `nr_w_dniu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lekcja_informacje1` FOREIGN KEY (`informacje_id`) REFERENCES `informacje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lekcja_nauczyciel1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lekcja_przedmiot1` FOREIGN KEY (`przedmiot_nazwa`) REFERENCES `przedmiot` (`nazwa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lekcja_szablon_plan_lekcji1` FOREIGN KEY (`roczny_plan_lekcji_id`) REFERENCES `roczny_plan_lekcji` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD CONSTRAINT `fk_nauczyciel_dane osobowe1` FOREIGN KEY (`dane_osobowe_Imie`,`dane_osobowe_Nazwisko`) REFERENCES `dane_osobowe` (`Imie`, `Nazwisko`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `nauczyciel_moze_prowadzic_przedmiot`
--
ALTER TABLE `nauczyciel_moze_prowadzic_przedmiot`
  ADD CONSTRAINT `fk_nauczyciel_has_przedmiot_nauczyciel1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nauczyciel_has_przedmiot_przedmiot1` FOREIGN KEY (`przedmiot_nazwa`) REFERENCES `przedmiot` (`nazwa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `nauczyciel_prowadzi_przedmiot`
--
ALTER TABLE `nauczyciel_prowadzi_przedmiot`
  ADD CONSTRAINT `fk_nauczyciel_has_przedmiot1_nauczyciel1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nauczyciel_has_przedmiot1_przedmiot1` FOREIGN KEY (`przedmiot_nazwa`) REFERENCES `przedmiot` (`nazwa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `nieobecnosc`
--
ALTER TABLE `nieobecnosc`
  ADD CONSTRAINT `fk_nieobecność_lekcja1` FOREIGN KEY (`lekcja_data`,`lekcja_nr_w_dniu`) REFERENCES `lekcja` (`data_dnia`, `biezacy_szablon_lekcji_nr_w_dniu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nieobecność_nauczyciel1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nieobecność_uczeń1` FOREIGN KEY (`uczen_iducznia`) REFERENCES `uczen` (`iducznia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `ocena`
--
ALTER TABLE `ocena`
  ADD CONSTRAINT `fk_ocena_nauczyciel1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ocena_przedmiot1` FOREIGN KEY (`przedmiot_nazwa`) REFERENCES `przedmiot` (`nazwa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ocena_uczeń1` FOREIGN KEY (`uczen_iducznia`) REFERENCES `uczen` (`iducznia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `roczny_plan_lekcji_has_biezacy_szablon_lekcji`
--
ALTER TABLE `roczny_plan_lekcji_has_biezacy_szablon_lekcji`
  ADD CONSTRAINT `fk_roczny plan lekcji_has_biezacy szablon lekcji_biezacy sz1` FOREIGN KEY (`biezacy_szablon_lekcji_dzien_w_tyg`,`biezacy_szablon_lekcji_nr_w_dniu`) REFERENCES `biezacy_szablon_lekcji` (`dzien_w_tyg`, `nr_w_dniu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_roczny plan lekcji_has_biezacy szablon lekcji_roczny plan1` FOREIGN KEY (`roczny_plan_lekcji_id`) REFERENCES `roczny_plan_lekcji` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD CONSTRAINT `fk_uczen_dane osobowe1` FOREIGN KEY (`dane_osobowe_Imie`,`dane_osobowe_Nazwisko`) REFERENCES `dane_osobowe` (`Imie`, `Nazwisko`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uczen_klasa1` FOREIGN KEY (`klasa_oznaczenie`) REFERENCES `klasa` (`oznaczenie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uczen_rodzic1` FOREIGN KEY (`rodzic_idrodzic`) REFERENCES `rodzic` (`idrodzic`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `uwagi`
--
ALTER TABLE `uwagi`
  ADD CONSTRAINT `fk_uwagi_nauczyciel1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uwagi_uczen1` FOREIGN KEY (`uczen_iducznia`) REFERENCES `uczen` (`iducznia`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
