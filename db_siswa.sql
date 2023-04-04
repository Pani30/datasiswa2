-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Apr 2023 pada 09.45
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siswa`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `joinsiswa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `joinsiswa` (
`id` int(11)
,`nis` varchar(50)
,`foto` varchar(100)
,`nama` varchar(50)
,`angkatan` varchar(50)
,`id_jurusan` int(11)
,`jurusan` varchar(50)
,`email` varchar(50)
,`hp` varchar(50)
,`alamat` varchar(100)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `Id` int(11) NOT NULL,
  `Jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`Id`, `Jurusan`) VALUES
(5, 'RPL'),
(6, 'DKV'),
(7, 'TKJ'),
(8, 'TBSM'),
(9, 'PPLG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `Id` int(11) NOT NULL,
  `Nis` varchar(50) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Angkatan` varchar(50) NOT NULL,
  `Id_jurusan` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`Id`, `Nis`, `Foto`, `Nama`, `Angkatan`, `Id_jurusan`, `Email`, `hp`, `alamat`) VALUES
(1, '11223344', '2_jam.jpg', 'Pani Ramdani', '2020', 5, 'pani@pani.id', '089612764442', 'Pelang'),
(4, '11223345', 'aku.png', 'Pina Pan', '2021', 6, 'pina@pin.id', '089778899445', 'Planet Bumi'),
(5, '11223344', 'BOTOLL.jpg', 'Leli ramadani', '2022', 7, 'leli@lel.id', '089778899445', 'cidahu'),
(6, '11223345', 'images_(1).png', 'mutia', '2023', 9, 'mutia@mut.id', '089778899445', 'cipeusar'),
(7, '11223346', '20221109_143956_0000.png', 'dewi', '2024', 8, 'dewi@dew.id', '089778899445', 'cidahu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur untuk view `joinsiswa`
--
DROP TABLE IF EXISTS `joinsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `joinsiswa`  AS SELECT `a`.`Id` AS `id`, `a`.`Nis` AS `nis`, `a`.`Foto` AS `foto`, `a`.`Nama` AS `nama`, `a`.`Angkatan` AS `angkatan`, `a`.`Id_jurusan` AS `id_jurusan`, `b`.`Jurusan` AS `jurusan`, `a`.`Email` AS `email`, `a`.`hp` AS `hp`, `a`.`alamat` AS `alamat` FROM (`siswa` `a` join `jurusan` `b` on(`a`.`Id_jurusan` = `b`.`Id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
