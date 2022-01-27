-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jan 2022 pada 07.05
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kode_artikel` char(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'gambar_default.png',
  `tanggal` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kode_artikel`, `judul_artikel`, `isi_artikel`, `gambar`, `tanggal`, `status`, `id_kategori`, `id_pengguna`) VALUES
(120, 'A0120', 'Pendakian Gunung Rinjani', 'ini adalah salah satu destinasi tempat wisata terbaik', 'IMG20180626074317.jpg', '2022-01-26 18:21:42', 1, 30, 0),
(121, 'A0121', 'Aik Kolam', 'memang tetu aik kolom no manteep', 'download (2).jpg', '2022-01-26 18:22:20', 1, 31, 0),
(122, 'A0122', 'Berkunjung k pantai', 'pantai memang bukannlah hal yang baru untuk kita', 'Wisata pantai terbaik.png', '2022-01-26 18:23:14', 1, 32, 0),
(123, 'A0123', 'Mandi di Air Alami', 'ini merupakan pemandian yang maik gati untuk kita datengi', 'download.jpg', '2022-01-26 18:24:01', 1, 33, 0),
(119, 'A0119', 'perternakan digunung', 'perternakan merupakan sebuah tradisi yang menguntungkan', 'Desain tanpa judul(9).png', '2022-01-26 11:03:11', 1, 29, 0),
(117, 'A0117', 'Wisata Gunung Segara Anak', 'ini adalah sebuah tempat yang maik untuk kita daki dan sangat  maik idap ngompal', 'gunungrinjanilombok30.jpg', '2022-01-26 18:13:45', 1, 26, 0),
(118, 'A0118', 'makanan', 'makanan adlah makanan yang sangat kita sukai dalam khidupan', 'fruit.png', '2022-01-26 10:53:02', 1, 28, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(200) NOT NULL DEFAULT 'gambar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(30, 'Wisata Pendakian', 'gunungrinjanilombok21.jpg'),
(31, 'Wisata Pemandian Kolam', 'Desain tanpa judul(10).png'),
(32, 'Wisata Pantai', 'background-lombok.png'),
(33, 'Wisata Pemandian Alami', 'download (1).jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_artikel`, `nama`, `email`, `isi_komentar`, `status_komentar`) VALUES
(7, 101, 'Setiawan Dimas', 'arimurti295.sd@gmail.com', 'Saya terkagum membaca artikel ini karena setelah membaca artikel ini pikiran saya menjadi terbuka. Saya sadar, selama ini saya terlalu tertutup dengan hal-hal yang baru dan merasa sudah tahu. Hal ini berimbas kepada saya yakni saya menjadi orang yang Sok Tahu', 1),
(8, 123, 'nama', 'masgul22@gmail.com', 'dkfjldsjfld', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `kode_pengguna` char(9) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `kode_pengguna`, `nama_pengguna`, `email`, `no_telp`, `username`, `password`, `status`) VALUES
(3, 'U030', 'masgul', 'masgul22@gmail.com', '082341504781', 'masgul', '8cb2237d0679ca88db6464eac60da96345513964', 1),
(21, 'U004', 'zik', 'zikrillah1922@gmail.com', '082jfdf', 'zik', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `nama_website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`nama_website`) VALUES
('Pariwisata');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `judul_artikel` (`judul_artikel`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
