-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2023 pada 08.02
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laporan_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_catatansiswa`
--

CREATE TABLE `data_catatansiswa` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `nama_walikelas` varchar(50) NOT NULL,
  `nama_ortu` varchar(50) NOT NULL,
  `nama_point` varchar(50) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  `total` varchar(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_catatansiswa`
--

INSERT INTO `data_catatansiswa` (`id`, `nama_siswa`, `kelas`, `nama_walikelas`, `nama_ortu`, `nama_point`, `keterangan`, `total`, `tanggal`) VALUES
(2, 'asdsadasd', 'asd u', 'asd', '1', '', 'asd', '1', '2023-07-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ortu`
--

CREATE TABLE `data_ortu` (
  `id` int(10) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `no_telpon` int(20) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_ortu`
--

INSERT INTO `data_ortu` (`id`, `nik`, `nama`, `jenis_kelamin`, `pendidikan`, `no_telpon`, `pekerjaan`, `alamat`) VALUES
(2, 12, 'ddd', 'Laki-Laki', 'adasdad', 22, 'sd', 'asd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_point`
--

CREATE TABLE `data_point` (
  `id` int(11) NOT NULL,
  `nama_point` varchar(100) NOT NULL,
  `total` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_point`
--

INSERT INTO `data_point` (`id`, `nama_point`, `total`, `keterangan`) VALUES
(1, 'asasdasd', '11', 'assdasdasdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(10) NOT NULL,
  `nisn` int(20) NOT NULL,
  `nis` int(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `nisn`, `nis`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `kelas`, `jurusan`, `wali_kelas`, `alamat`, `no_telpon`, `status`) VALUES
(7, 1, 2, 5, 'gggg', 'iiii', '2023-07-05', 'Perempuan', '', '', '111', '111', '05/07/2023', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_walikelas`
--

CREATE TABLE `data_walikelas` (
  `id` int(20) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `mata_pelajaran` varchar(20) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `no_telpon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_walikelas`
--

INSERT INTO `data_walikelas` (`id`, `nik`, `nama`, `jenis_kelamin`, `pendidikan`, `mata_pelajaran`, `kelas`, `jabatan`, `no_telpon`) VALUES
(1, '1', 'baga', 'Laki-Laki', 'asdasd', 'sdasd', 'asdd', 'sdasd', 'sdasd');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_catatansiswa`
--
ALTER TABLE `data_catatansiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_ortu`
--
ALTER TABLE `data_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_point`
--
ALTER TABLE `data_point`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_walikelas`
--
ALTER TABLE `data_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_catatansiswa`
--
ALTER TABLE `data_catatansiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_ortu`
--
ALTER TABLE `data_ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_point`
--
ALTER TABLE `data_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_walikelas`
--
ALTER TABLE `data_walikelas`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
