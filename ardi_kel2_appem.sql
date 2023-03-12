-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2023 pada 08.35
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ardi_kel2_appem`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('32770102030487', 'Dede Husnul', 'dede', '123456', 2147483647),
('32770205060012', 'Wulan Ajijah', 'wulan', '12345', 2147483647),
('327702050603702', 'Septian Nugraha', 'septian', '123456', 2147483647),
('3277025062010987', 'Ardi Septian Nugraha', 'ardi', '123', 2147483647),
('3277025062014787', 'Alfin Hamdani', 'alfin', '12345', 2147483647),
('3277025062014890', 'Reyhan Elle', 'elle', '1123', 2147483647),
('327709080070654', 'Nugraha Ardi', 'nugraha', '1234567', 2147483647),
('327789652142742', 'Reiki Pratama', 'reiki', '1234567890', 2147483647),
('32778967542673', 'Supendi Dendi', 'dendi', '123456789', 2147483647),
('3277980907654', 'Imelda Putri', 'melda', '12345678', 2147483647),
('32779809765623', 'Septi Amalia', 'septi', '123456789', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(10) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(12, '2023-02-26', '3277025062010987', 'Di Padasukan Jln.kebon manggu RT08 RW14 Terjadi jalan berlubang yang mengakibatkan banyak pengendara motor terjatuh, mohon bantuannya untuk diperbaiki secepatnya', 'Jalan Berlubang1.jpg', 'selesai'),
(13, '2023-02-27', '3200025062018790', 'Di Cipongkor Sarinagen terjadi adanya banjir akibat banyaknya sampah yang menumpuk di selokan dan banyak rumah warga yang kebanjiran, mohon bantuannya', 'banjir sarinagen.jfif', 'selesai'),
(14, '2023-02-27', '3277025062010987', '', '', '0'),
(15, '2023-02-27', '3277025062010987', 'Di Padasukan jl.kebon manggu terjadi kericuhan geng motor yang menyebabkan warga menjadi terganggu, mohon bantuannya agar di tindaklanjuti', '', '0'),
(16, '2023-02-27', '3277025062010987', '', '', '0'),
(17, '2023-02-27', '3277025062010987', 'terjadinya kebakaran', '', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(16) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(8, 'Ardi Septian', 'Ardi', '123', '081387182342', 'admin'),
(9, 'Wulan Ajijah', 'Wulan', '123', '083820070175', 'petugas'),
(10, 'Alfin Hamdani', 'petugas', '123457', '089765246874', 'petugas'),
(11, 'Alfin Hamdani', 'Ardi', '123', '089603981296', 'petugas'),
(12, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(8, 12, '2023-02-26', '                Baik akan saya perbaiki secepatnya, Terima Kasih atas pengaduan nya', 8),
(9, 13, '2023-02-27', '                \r\n                Baik akan saya berikan bantuan untuk korban-korban dan akan ada kegiatan untuk pembersihan sampah-sampah, Terima Kasih atas pengaduannya', 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
