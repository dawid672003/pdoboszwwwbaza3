SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `warzywniak` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `warzywniak`;

CREATE TABLE `adres` (
  `id_adres` int(11) NOT NULL,
  `miejscowosc` varchar(30) NOT NULL,
  `kod pocztowy` varchar(6) NOT NULL,
  `numer` varchar(9) NOT NULL,
  `ulica` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `adres` (`id_adres`, `miejscowosc`, `kod pocztowy`, `numer`, `ulica`) VALUES
(1, 'Częstochowa', '42-200', '23', 'głowna'),
(2, 'Częstochowa', '42-200', '24', 'głowna'),
(3, 'Częstochowa', '42-200', '25', 'głowna');

CREATE TABLE `konto` (
  `id_konto` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `e-mail` varchar(40) NOT NULL,
  `haslo` varchar(30) NOT NULL,
  `id_adres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `konto` (`id_konto`, `login`, `e-mail`, `haslo`, `id_adres`) VALUES
(1, 'admin', 'admin@admin.pl', 'admin', 1);

CREATE TABLE `magazyn` (
  `id_magazyn` int(11) NOT NULL,
  `id_adres` int(11) NOT NULL,
  `nazwa magazynu` varchar(30) NOT NULL,
  `aktywny` set('tak','nie') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `magazyn` (`id_magazyn`, `id_adres`, `nazwa magazynu`, `aktywny`) VALUES
(1, 2, 'MagazynOwoców', 'tak'),
(2, 3, 'MagazynWarzyw', '');

CREATE TABLE `produkty` (
  `id_produkt` int(11) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `cena` int(11) NOT NULL,
  `zdjecie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `produkty` (`id_produkt`, `nazwa`, `cena`, `zdjecie`) VALUES
(4, 'Por', 1, 'img/por2.png'),
(5, 'Jabłko', 3, 'img/jablko2.png'),
(6, 'Maliny', 6, 'img/malina.jpg'),
(7, 'Papryka', 5, 'img/papr.jpg'),
(8, 'Pomarańcze', 10, 'img/pom.jpg'),
(9, 'Poziomki', 13, 'img/poziomka.jpg'),
(10, 'Truskawki', 14, 'img/trusk.jpg'),
(11, 'Ziemniaki', 5, 'img/ziemniak.jpg');


ALTER TABLE `adres`
  ADD PRIMARY KEY (`id_adres`);

ALTER TABLE `konto`
  ADD PRIMARY KEY (`id_konto`),
  ADD KEY `fk_konto_adres` (`id_adres`);

ALTER TABLE `magazyn`
  ADD PRIMARY KEY (`id_magazyn`),
  ADD KEY `fk_magazyn_adres` (`id_adres`);

ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produkt`);


ALTER TABLE `adres`
  MODIFY `id_adres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `konto`
  MODIFY `id_konto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `magazyn`
  MODIFY `id_magazyn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `produkty`
  MODIFY `id_produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `konto`
  ADD CONSTRAINT `fk_konto_adres` FOREIGN KEY (`id_adres`) REFERENCES `adres` (`id_adres`);

ALTER TABLE `magazyn`
  ADD CONSTRAINT `fk_magazyn_adres` FOREIGN KEY (`id_adres`) REFERENCES `adres` (`id_adres`);
COMMIT;
