-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2020 pada 11.28
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supernova`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id_about`, `isi`) VALUES
(1, '<p style=\"text-align: center;\"><span style=\"color: #333333; font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;\"><strong>Studio Supernova</strong> sudah berdiri sejak tahun 2009. Kami adalah studio musik yang menyediakan jasa penyewaan alat alat musik. Tempat kami juga cukup nyaman untuk anda bermain musik. Harga yang kami tawarkan cukup bersaing. Alat musik yang kami sewakan memilili kualitas yang cukup baik. Akses menuju tempat kami juga cukup mudah. Kami siap melayani dengan baik dan ramah.</span></p>'),
(2, '<p>Ketentuan Pakai Supernova :<code>asd</code></p>\r\n<p>&nbsp;</p>'),
(3, '08996372182');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `handphone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `handphone`) VALUES
(1, 'admin', 'admin', 'admin', '08993123123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `id_harga` int(11) NOT NULL,
  `waktu` varchar(40) NOT NULL,
  `harga` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id_harga`, `waktu`, `harga`) VALUES
(1, 'siang', '40000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id_hari` int(11) NOT NULL,
  `nama_hari` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id_hari`, `nama_hari`) VALUES
(1, 'senin'),
(2, 'selasa'),
(3, 'rabu'),
(4, 'kamis'),
(5, 'jumat'),
(6, 'sabtu'),
(7, 'minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `jam` time NOT NULL,
  `id_harga` int(11) NOT NULL,
  `jams` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `jam`, `id_harga`, `jams`) VALUES
(1, '10:00:00', 1, '10.00-11.00'),
(2, '11:00:00', 1, '11.00-12.00'),
(3, '12:00:00', 1, '12.00-13.00'),
(4, '13:00:00', 1, '13.00-14.00'),
(5, '14:00:00', 1, '14.00-15.00'),
(6, '15:00:00', 1, '15.00-16.00'),
(7, '16:00:00', 1, '16.00-17.00'),
(8, '17:00:00', 1, '17.00-18.00'),
(9, '18:00:00', 1, '18.00-19.00'),
(10, '19:00:00', 1, '19.00-20.00'),
(11, '20:00:00', 1, '20.00-21.00'),
(12, '21:00:00', 1, '21.00-22.00'),
(13, '22:00:00', 1, '22.00-23.00'),
(14, '23:00:00', 1, '23.00-24.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_user` varchar(7) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `handphone` varchar(14) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `dp` varchar(10) NOT NULL,
  `img` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_user`, `id_harga`, `id_jadwal`, `username`, `alamat`, `handphone`, `tanggal`, `jam`, `harga`, `dp`, `img`, `status`) VALUES
(1, '1', 1, 2, 'user', 'jakarta', '0989123', 'Kamis, 09 Januari 2020', '11.00-12.00', '40000', '10000', '', 'Disetujui'),
(2, '1', 1, 10, 'user', 'jakarta', '0989123', 'Kamis, 09 Januari 2020', '19.00-20.00', '40000', '10000', '', 'Disetujui'),
(3, '125', 1, 8, 'johan', 'Subang', '089631989899', 'Kamis, 09 Januari 2020', '17.00-18.00', '40000', '10000', '', 'Disetujui'),
(4, '1', 1, 6, 'user', 'jakarta', '0989123', 'Jumat, 10 Januari 2020', '15.00-16.00', '40000', 'dibayar', '', 'Disetujui'),
(5, '1', 1, 4, 'user', 'jakarta', '0989123', 'Jumat, 10 Januari 2020', '13.00-14.00', '40000', '', 'standbanner.jpeg', 'Tertunda'),
(6, '1', 1, 5, 'user', 'jakarta', '0989123', 'Jumat, 10 Januari 2020', '14.00-15.00', '40000', '', '', 'Tertunda'),
(7, '126', 1, 14, 'qonita_nada', 'Desa Ujungaris', '083824120644', 'Jumat, 10 Januari 2020', '23.00-24.00', '40000', '', '', 'Tertunda'),
(8, '1', 1, 5, 'user', 'jakarta', '0989123', 'Sabtu, 11 Januari 2020', '14.00-15.00', '40000', '', '', 'Disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `jam` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id_profile` int(11) NOT NULL,
  `nama_studio` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `handphone` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id_profile`, `nama_studio`, `alamat`, `kodepos`, `handphone`) VALUES
(1, 'Supernova', 'Indramayu', '45211', '123123123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_depan` varchar(20) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `handphone` varchar(14) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_depan`, `nama_belakang`, `handphone`, `alamat`, `username`, `password`) VALUES
(1, 'user', 'baru', '0989123', 'jakarta', 'user', 'user'),
(125, 'Johan', 'Anugrah', '089631989899', 'Subang', 'johan', '12345'),
(126, 'Nada Qonita', 'Amalia', '083824120644', 'Desa Ujungaris', 'qonita_nada', 'Kemudahan14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id_harga`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`jam`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `harga`
--
ALTER TABLE `harga`
  MODIFY `id_harga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id_hari` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
