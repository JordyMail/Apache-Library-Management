

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- Database: `perpustakaan`

-- --------------------------------------------------------
-- Table structure for table `app_admin`

CREATE TABLE `app_admin` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `tanggal_daftar` varchar(200) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `app_admin`

INSERT INTO `app_admin` (`user_id`, `nama`, `username`, `tanggal_daftar`, `email`, `password`, `kontak`, `description`) VALUES
(1202181910, 'Razky Febriansyah', 'razky', '07/11/2019 18:44:13', 'razky@gmail.com', 'razky', '082223736565', NULL),
(1202181927, 'agus', 'agus', '23/11/2019 20:51:42', 'agus', 'agus', '088223738709', NULL),
(1202181928, 'budi', 'budi', '23/11/2019 20:52:39', 'budi', 'budi', '56789087678', NULL),
(1202181929, 'admin', 'admin', '23/11/2019 20:54:02', 'admin@univ.com', 'admin', '3454876545678', NULL),
(1202181930, 'Budiman Setiadi', 'budiman', '25/11/2019 19:09:24', 'budiman@gmail.com', '1usykurillah', '0889667688970', NULL),
(1202181931, 'Henry Augusta', 'henryaugusta', '25/11/2019 19:10:32', 'henryaugusta4@gmail.com', 'j8srtj@violet', '088223738709', NULL),
(1202181932, 'Andi Server', 'andis', '25/11/2019 19:56:45', 'andiserver@gmail.com', 'andis', '088276656787', NULL);

-- --------------------------------------------------------
-- Table structure for table `tb_buku`

CREATE TABLE `tb_buku` (
  `kode_buku` varchar(255) NOT NULL,
  `judul_buku` varchar(255) DEFAULT NULL,
  `tanggal_terbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `jenis_buku` varchar(255) DEFAULT NULL,
  `stok` int(255) NOT NULL,
  `dipinjam` int(255) DEFAULT NULL,
  `di_rak` int(255) DEFAULT NULL,
  `dipinjam_berapa_kali` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tb_buku`

INSERT INTO `tb_buku` (`kode_buku`, `judul_buku`, `tanggal_terbit`, `pengarang`, `jenis_buku`, `stok`, `dipinjam`, `di_rak`, `dipinjam_berapa_kali`) VALUES
('2411191', 'Hujan Bulan Juni', '24-08-2000', 'WS Rendra', 'Sastra', 10, 0, 10, 1),
('24111910', 'Komet Minor', '07-10-2015', 'Tere Liye', 'Novel', 31, 0, 31, 0),
('24111912', 'Pengenalan Bahasa Java', '08-09-2002', 'Budiawan Sudjana', 'Teknologi Informasi', 120, 0, 120, 0),
('24111913', 'Pengenalan Bahasa Java Lanjutan', '08-01-2003', 'Budiawan Sudjana', 'Teknologi Informasi', 120, 0, 120, 0),
('24111914', 'Struktur Data dan Algoritma', '18-11-2009', 'Budiawan Sudjana', 'Teknologi Informasi', 120, 0, 120, 0),
('24111915', 'Socrates dan Pemikirannya', '18-09-1995', 'Rocky Gerung', 'Filsafat', 8, 0, 8, 1),
('24111916', 'Pemrograman Orientasi Objek', '07-09-2012', 'Sudjana', 'Teknologi Informasi', 31, 0, 31, 0),
('24111918', 'Web Programming', '07-09-2019', 'Unpas', 'Teknologi Informasi', 31, 0, 31, 1),
('24111919', 'Sudimara ', '07-10-2019', 'Tere Liye', 'Novel', 29, 0, 29, 1),
('2411192', 'Langit Mendung Terus ( Kumpulan Puisi)', '14-02-2009', 'S Mattarima', 'Sastra', 12, 0, 12, 1),
('2411194', 'Shahih Bukhari', '01-01-2001', 'Ustadz Salman', 'Agama', 10, 0, 10, 0),
('2411195', 'Shahih Muslim', '01-01-2001', 'Ustadz Salman', 'Agama', 11, 0, 11, 0),
('2411196', 'Namanya Razky', '07-09-2012', 'Tere Liye', 'Novel', 30, 0, 30, 0),
('2411198', 'Bumi', '07-09-2014', 'Tere Liye', 'Novel', 29, 0, 29, 1),
('2411199', 'Bulan', '07-10-2014', 'Tere Liye', 'Novel', 31, 0, 31, 0),
('25111916', 'Bumi Manusia', '19-09-1965', 'Pramoedya Ananta Toer', 'Sastra', 2, 0, 2, 6),
('25111917', 'Statustika Inferensia', '29-08-2000', 'Budiman Sudjatmiko', 'Matematika', 1, 0, 1, 1),
('25111918', 'Majalah Kereta Api Edisi Januari 2019', '15-01-2019', 'Redaksi Majalah KA', 'Majalah', 10, 1, 9, 0);

-- --------------------------------------------------------
-- Table structure for table `tb_mahasiswa`

CREATE TABLE `tb_mahasiswa` (
  `no_mhs` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `tanggal_masuk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tb_mahasiswa`

INSERT INTO `tb_mahasiswa` (`no_mhs`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jurusan`, `tanggal_masuk`) VALUES
('141400002', 'Soni ', 'Flores', '06-02-1996', 'Sistem Informasi', '01-02-1993'),
('141400003', 'Henry Augusta Harsono', 'Bekasi', '24-08-00', 'Sistem Informasi', '07-07-2018'),
('141400006', 'Rayan', 'Bojong', '06-02-1996', 'Teknik Mesin', '01-02-1993'),
('141400010', 'Kevin Japriansyah', 'Tangerang Selatan', '01-04-1995', 'Teknik Industri', '29-06-2010'),
('141400011', 'Vannesa Agel', 'Lombok Barat', '01-04-2000', 'Teknik Telekomunikasi', '29-06-2018'),
('141400012', 'Annisa Aziza', 'Bandung', '11-05-2000', 'Desain Interior', '29-06-2018'),
('141400013', 'Joni Herianto', 'Pesisir Selatan', '01-05-1990', 'Sistem Informatika', '01-02-2016'),
('141400014', 'Sumarna', 'Karawang', '02-08-1995', 'Sistem Informasi', '01-02-2016'),
('141400015', 'Alfatih', 'Bekasi', '06-02-2000', 'Teknik Industri', '01-02-2019'),
('141400016', 'Budiman S', 'Jakarta Barat', '01-04-1996', 'Teknik Telekomunikasi', '29-06-2018'),
('141400017', 'Rully Kurniawan', 'Jonggol', '29-02-2002', 'D3 Manajemen ', '29-06-2019'),
('141400018', 'Susi Pudjia', 'Pangandaran', '29-08-2000', 'Desain Interior', '29-06-2019');

-- --------------------------------------------------------
-- Table structure for table `tb_peminjaman`

CREATE TABLE `tb_peminjaman` (
  `no_mhs` varchar(255) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jurusan` varchar(25) DEFAULT NULL,
  `kode_buku` varchar(15) DEFAULT NULL,
  `judul_buku` varchar(40) DEFAULT NULL,
  `pengarang` varchar(255) NOT NULL,
  `tanggal_terbit` varchar(255) DEFAULT NULL,
  `tanggal_pinjam` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_kembali` varchar(255) DEFAULT NULL,
  `idpeminjaman` varchar(255) NOT NULL,
  `tahun_kembali` varchar(255) DEFAULT NULL,
  `jam_kembali` varchar(255) DEFAULT NULL,
  `bulan_kembali` text DEFAULT NULL,
  `bulan_pinjam` varchar(255) NOT NULL,
  `tahun_pinjam` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tb_peminjaman`

INSERT INTO `tb_peminjaman` (`no_mhs`, `nama`, `jurusan`, `kode_buku`, `judul_buku`, `pengarang`, `tanggal_terbit`, `tanggal_pinjam`, `status`, `tanggal_kembali`, `idpeminjaman`, `tahun_kembali`, `jam_kembali`, `bulan_kembali`, `bulan_pinjam`, `tahun_pinjam`) VALUES
('141400012', 'Annisa Aziza', 'Desain Interior', '25111918', 'Majalah Kereta Api Edisi Januari 2019', 'Redaksi Majalah KA', '15-01-2019', '2019-11-25', 'Dipinjam', 'Belum Kembali', 'Annisa AzizaMajalah Kereta Api Edisi Januari 2019', '-', '-', '-', '11-2019', '2019'),
('141400016', 'Budiman S', 'Teknik Telekomunikasi', '2411192', 'Langit Mendung Terus ( Kumpulan Puisi)', 'S Mattarima', '14-02-2009', '2019-11-25', 'Dikembalikan', '25-11-2019', 'Budiman SLangit Mendung Terus ( Kumpulan Puisi)', '2019', '07:51:43', '11-2019', '11-2019', '2019'),
('141400017', 'Rully Kurniawan', 'D3 Manajemen ', '25111917', 'Statustika Inferensia', 'Budiman Sudjatmiko', '29-08-2000', '2019-11-25', 'Dikembalikan', '25-11-2019', 'Rully KurniawanStatustika Inferensia', '2019', '08:02:29', '11-2019', '11-2019', '2019'),
('141400018', 'Susi Pudjia', 'Desain Interior', '2411198', 'Bumi', 'Tere Liye', '07-09-2014', '2019-11-25', 'Dikembalikan', '25-11-2019', 'Susi PudjiaBumi', '2019', '08:02:26', '11-2019', '11-2019', '2019');


-- Indexes for table `app_admin`
ALTER TABLE `app_admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

-- Indexes for table `tb_buku`
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD UNIQUE KEY `judul_buku` (`judul_buku`);

-- Indexes for table `tb_mahasiswa`
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`no_mhs`);

-- Indexes for table `tb_peminjaman`

ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`idpeminjaman`);

-- AUTO_INCREMENT for table `app_admin`
ALTER TABLE `app_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202181933;
COMMIT;

