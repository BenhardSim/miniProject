-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Sep 2022 pada 12.32
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_statistikpenduduk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `NIP` varchar(10) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_admin` (`NIP`, `Nama`, `Email`, `Password`) VALUES
(1271112210020001, 'Kelompok PBP', 'kelpbp@gmail.com', 'kelpbp123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kota`
--

CREATE TABLE `tb_kota` (
  `Kode_Kota` varchar(5) NOT NULL,
  `Nama_Kota` varchar(30) NOT NULL,
  `Asal_Provinsi` varchar(30) NOT NULL,
  `Jumlah_Penduduk` int(11) NOT NULL,
  `Walikota` varchar(100) NOT NULL,
  `Wakil_Walikota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kota`
--

INSERT INTO `tb_kota` (`Kode_Kota`, `Nama_Kota`, `Asal_Provinsi`, `Jumlah_Penduduk`, `Walikota`, `Wakil_Walikota`) VALUES
('BAB', 'Bangka Barat', '19', 189621, 'H. Sukirman, S.H.', 'Bong Ming Ming, S.E.'),
('BAC', 'Banda Aceh', '11', 252899, 'Dr. (Cand) H. Bakri Siddiq, SE, M.Si', 'Dr. (Cand) H. Bakri Siddiq, SE, M.Si'),
('BAN', 'Bangka', '19', 312460, 'Mulkan', 'Syahbudin'),
('BAS', 'Bangka Selatan', '19', 168341, 'Riza Herdavid, S.T., M.Tr.IP.', 'Debby Vita Dewi, S.E.'),
('BAT', 'Bangka Tengah', '19', 175064, 'Algafry Rahman, S.T.', 'Herry Erfian, S.T.'),
('BBA', 'Bandung Barat', '32', 1788336, 'Hengki Kurniawan', '-'),
('BDG', 'Bandung', '32', 3623790, 'H. Dadang Supriatna, S.I.P., M.Si.', 'H. Sahrul Gunawan, S.E.'),
('BEL', 'Belitung', '19', 159349, 'Sahani Saleh', 'Isyak Meirobie'),
('BGI', 'Banggai', '72', 376808, 'Amirudin Tamoreka', 'Furqanuddin Masulili'),
('BGL', 'Banggai Laut', '72', 70435, 'Sofyan Kaepa', 'Ablit H Ilyas'),
('BGP', 'Banggai Kepulauan', '72', 117526, 'Ihsan Basir', 'Salim J Tanasa'),
('BIT', 'Bitung', '71', 221209, 'Maurits Mantiri', 'Hengky Honandar'),
('BJB', 'Banjarbaru', '63', 253442, 'Aditya Mufti Ariffin', 'Wartono'),
('BJM', 'Banjarmasin', '63', 657663, 'Ibnu Sina', 'Ariffin Noor'),
('BJR', 'Banjar', '63', 565635, 'Saidi Mansyur', 'Said Idrus Al Habsyi'),
('BKL', 'Bengkalis', '21', 565569, 'Kasmarni, S.Sos, M.MP.', 'Bagus Santoso'),
('BKS', 'Bekasi', '32', 3113071, 'Dani Ramdan', '-'),
('BKT', 'Bukittinggi', '13', 121028, 'H. Erman Safar, S.H.', 'H. Marfendi'),
('BLG', 'Balangan', '63', 130355, 'Abdul Hadi', 'Supiani'),
('BLM', 'Bolaang Mongondow', '71', 246282, 'Limi Mokodompit', 'Limi Mokodompit'),
('BLO', 'Blora', '33', 884333, 'Arief Rohman', 'Tri Yuli Setyowati'),
('BLP', 'Balikpapan', '64', 619983, 'Rahmad Mas\'ud', 'Rahmad Mas\'ud'),
('BMA', 'Bima', '52', 141294, 'Muhammad Lutfi', 'Feri Sofiyan'),
('BMS', 'Bolaang Mongondow Selatan', '71', 66474, 'Iskandar Kamaru', 'Deddy Abdul Hamid'),
('BMT', 'Bolaang Mongondow Timur', '71', 84440, 'Sam Sachrul Mamonto', 'Oskar Manoppo'),
('BMU', 'Bolaang Mongondow Utara', '71', 87881, 'Depri Pontoh', 'Amin Lasena'),
('BNJ', 'Banjarnegara', '33', 1017767, 'Syamsudin', 'Indarto'),
('BNK', 'Bengkulu', '16', 364604, 'H. Helmi Hasan, S.E.', 'Dedy Wahyudi, S.E., M.M.'),
('BNY', 'Banyumas', '33', 1776918, 'Ir. H. Achmad Husein', '-'),
('BOG', 'Bogor', '32', 5427068, 'Iwan Setiawan', 'Burhanudin'),
('BOT', 'Botang', '64', 174292, 'Basri Rase', 'Basri Rase'),
('BOY', 'Boyolali', '33', 1062713, 'Mochammad Said Hidayat', 'Wahyu Irawan'),
('BRK', 'Barito Kuala', '63', 313021, 'Noormiliyani', 'Rahmadian Noor'),
('BRU', 'Berau', '64', 219263, 'Sri Juniarsih Mas', 'Gamalis'),
('BTG', 'Batang', '33', 801718, 'Lani Dwi Rejeki', '-'),
('BTL', 'Bantul', '34', 985770, 'Abdul Halim Muslih', 'Joko B. Purnomo'),
('BTU', 'Batu', '35', 213046, 'Dewanti Rumpoko', 'Punjul Santoso'),
('BUL', 'Bulungan', '65', 151800, 'Syarwani', 'Ingkong Ala'),
('BUO', 'Buol', '72', 145254, 'Amirudin Rauf', 'Abdullah Batalipu'),
('CGN', 'Cilegon', '36', 434896, 'Helldy Agustian', 'Sanuji Pentamarta'),
('CMS', 'Ciamis', '32', 1229069, 'Herdiat Sunarya', 'Yana D. Putra'),
('DGL', 'Donggala', '72', 304110, 'Kasman Lassa', 'Moh.Yasin'),
('DMI', 'Dumai', '14', 316782, 'H. Paisal, SKM,MARS', 'H. Paisal, SKM,MARS'),
('DPS', 'Denpasar', '51', 638548, 'I Gusti Ngurah Jaya Negara', 'Kadek Agus Arya Wibawa'),
('GKL', 'Gunungkidul', '34', 747161, 'H. Sunaryanta', 'Heri Susanto'),
('GNT', 'Gunungsitoli', '12', 136017, 'Ir. Lakhömizaro Zebua', 'Sowaa Laoli, SE'),
('HSS', 'Hulu Sungai Selatan', '63', 228006, 'Achmad Fikry', 'Syamsuri Arsyad'),
('HST', 'Hulu Sungai Tengah', '63', 258721, 'Aulia Oktafiandi', 'Mansyah Sabri'),
('HSU', 'Hulu Sungai Utara', '63', 226727, 'Husairi Abdi', 'Husairi Abdi'),
('IHI', 'Kabupaten Indragiri Hilir', '21', 654909, 'Muhammad Wardan', 'Syamsuddin Uti'),
('IHU', 'Indragiri Hulu', '21', 444548, 'Rezita Meylani', 'Junaidi Rachmat'),
('JAB', 'Jakarta Barat', '31', 2434511, 'Yani Wahyu Purwoko', '-'),
('JAP', 'Jakarta Pusat', '31', 1056896, 'Dhany Sukma', 'Irwandi'),
('JAS', 'Jakarta Selatan', '31', 2226812, 'Munjirin', 'Isnawa Adji'),
('JAT', 'Jakarta Timur', '31', 3037139, 'Muhammad Anwar', 'Hendra Hidayat'),
('JMB', 'Jambi', '15', 609620, 'Dr. H. Syarif Fasha, S.E., M.E.', 'Maulana'),
('KAB', 'Kota Baru', '63', 325622, 'Sayed Jafar Alaydrus', 'Andi Rudi Latif'),
('KAL', 'Kabupaten Alor', '53', 211872, 'Amon Djobo', 'Imran Duru'),
('KAM', 'Kampar', '21', 841332, 'Dr. H. Kamsol, M.M.', '-'),
('KBL', 'Kabupaten Belu', '53', 217973, 'Agustinus Taolin', 'Aloysius Haleserens'),
('KBT', 'Kabupaten Barito Timur', '62', 113229, 'Ampera A.Y. Mebas', 'Suriansyah'),
('KDR', 'Kediri', '35', 286796, 'Abdullah Abu Bakar', 'Lilik Muhibbah'),
('KEP', 'Kepulauan Seribu', '31', 27749, 'Junaedi', 'Muhammad Fadjar Churniawan'),
('KGM', 'Kabupaten Gunung Mas', '62', 135373, 'Jaya Samaya Monong', 'Efrensia L.P. Umbing'),
('KIB', 'Kutai Barat', '64', 158560, 'F.X. Yapan', 'Edyanto Arkan'),
('KJB', 'Kabupaten Jembrana', '51', 323211, 'I Nengah Tamba', 'I Gede Ngurah Patriana Krisna'),
('KKL', 'Kabupaten Klungkung', '51', 215852, 'I Nyoman Suwirta', 'I Made Kasta'),
('KKP', 'Kabupaten Kapuas', '62', 410446, 'Ben Brahim S. Bahat', 'Nafiah Ibnor'),
('KKR', 'Kabupaten Karangasem', '51', 545389, 'I Gede Dana', 'I Wayan Artha Dipa'),
('KKT', 'Kutai Kartanegara', '64', 670458, 'Edi Damansyah', 'Rendi Solihin'),
('KLU', 'Kabupaten Lombok Utara', '52', 233691, 'Djohan Sjamsu', 'Danny Karter Febrianto Ridawan'),
('KMH', 'Kabupaten Mempawah', '61', 301715, 'Erlina', 'Muhammad Pagi'),
('KMP', 'Kampar', '14', 841332, 'Dr. H. Kamsol, M.M. (Pj.)', 'Dr. H. Kamsol, M.M. (Pj.)'),
('KPD', 'Kabupaten Pandeglang', '36', 1272687, 'Irna Narulita', 'Tanto Warsono Arban'),
('KPG', 'Kupang', '53', 442758, 'George M. Hadjoh', 'Hermanus Man'),
('KPH', 'Kepahiang', '16', 147677, 'Dr. Ir. Hidayatullah Sjahid, M.M.IPU', 'Dr. Ir. Hidayatullah Sjahid, M.M.IPU'),
('KPS', 'Kepulauan Sangihe', '71', 141950, 'Rinny Tamuntuan', 'Rinny Tamuntuan'),
('KPT', 'Kepulauan Talaud', '71', 100753, 'Elly Engelbert Lasut', 'Moktar Arunde Parapaga'),
('KRC', 'Kerinci', '15', 235735, 'Dr. Drs. H. Adirozal, M.Si. ', 'Ir. H. Ami Taher'),
('KSB', 'Kabupaten Sumbawa Barat', '52', 135031, 'W. Musyafirin', 'Fud Syaifuddin'),
('KSG', 'Kabupaten Sanggau', '61', 482500, 'Paolus Hadi', 'Yohanes Ontot'),
('KSI', 'Kabupaten Sintang', '61', 403095, 'Jarot Winarno', 'Melkianus'),
('KSJ', 'Kabupaten Sabu Raijua', '53', 89327, 'Nikodemus Nithanel Rihi Heke', 'Yohanis Uly Kale'),
('KSM', 'Kabupaten Sumbawa', '52', 509234, 'Mahmud Abdullah', 'Dewi Noviany'),
('KSR', 'Kabupaten Sumba Timur', '53', 244820, 'Khristofel Praing', 'David Melo Wadu'),
('KST', 'Kepulauan Siau Tagulandang Bia', '71', 72203, 'Evangeline Sasingen', 'John Hiet Palandung'),
('KSY', 'Kabupaten Seruyan', '62', 162906, 'Yulhaidir', 'Iswanti'),
('KTB', 'Kotamobagu', '71', 122308, 'Tatong Bara', 'Nayodo Koerniawan'),
('KTM', 'Kutai Timur', '64', 416800, 'Ardiansyah Sulaiman', 'Kasmidi Bulang'),
('KTN', 'Kabupaten Tabanan', '51', 466647, 'I Komang Gede Sanjaya', 'I Made Edi Wirawan'),
('KUL', 'Kulon Progo', '34', 436935, 'Drs. H. Sutedjo', 'Fajar Gegana'),
('LBA', 'Lampung Barat', '18', 301131, 'Parosil Mabsus', 'Mad Hasnurin'),
('LBG', 'Lebong', '16', 113677, 'Kopli Ansori', 'Kopli Ansori'),
('LGA', 'Langsa', '11', 185971, 'Said Mahmum', 'Said Mahmum'),
('LSE', 'Lampung Selatan', '18', 1269262, 'H. Nanang Ermanto', 'Pandu Kesuma Dewangsa'),
('LTE', 'Lampung Tengah', '18', 1468875, 'H. Musa Ahmad, S.Sos.', 'Ardito Wijaya'),
('LTI', 'Lampung Timur', '18', 1113976, 'M. Dawam Rahardjo', 'Azwar Hadi'),
('LUT', 'Lampung Utara', '18', 885591, 'H. Budi Utomo, S.E., M.M.', 'Ardian Saputra Abung, S.H'),
('MDN', 'Medan', '12', 2435252, 'Muhammad Bobby Afif Nasution, S.E., M.M.', 'H. Aulia Rachman, S.E.'),
('MDU', 'Madiun', '35', 195175, 'Maidi', 'Inda Raya A.M.'),
('MER', 'Kepulauan Meranti', '21', 206116, 'Muhammad Adil', 'Asmar'),
('MHL', 'Mahakam Ulu', '64', 258721, 'Bonifasius Belawan Geh', 'Yohanes Avun'),
('MHS', 'Minahasa Selatan', '71', 234365, 'Franky Donny Wongkar', 'Petra Yani Rembang'),
('MHT', 'Minahasa Tenggara', '71', 116375, 'James Sumendap', 'Jesaja Jocke Legi'),
('MHU', 'Minahasa Utara', '71', 217660, 'Joune Ganda', 'Kevin W, Lotulung'),
('MKM', 'Mukoko', '16', 174742, 'H. Sapuan, S.E., MM, Ak., C.A., P.A.', 'H. Sapuan, S.E., MM, Ak., C.A., P.A.'),
('MLG', 'Malang', '35', 843810, 'Sutiaji', 'Sofyan Edi Jarwoko'),
('MND', 'Manado', '71', 466176, 'Andrei Angouw', 'Richard Sualang'),
('MNH', 'Minahasa', '71', 336015, 'Royke Octavian Roring', 'Robby Dondokambey'),
('MNL', 'Manilau', '65', 82500, 'Wempi Wellem Mawa', 'Jakaria'),
('MRG', 'Merangin', '15', 333669, 'H. Mashuri, S.Pd. M.M.', 'Nilwan Yahya, S.E.'),
('MRU', 'Morowali Utara', '72', 128323, 'Delis Julkarson Hehi', 'Djira K'),
('MRW', 'Morowali', '72', 162098, 'Taslim', 'Najamuddin'),
('MTR', 'Mataram', '52', 419506, 'Mohan Roliskana', 'Mujiburrahman'),
('NNK', 'Nunukan', '65', 199090, 'Asmin Laura', 'Hanafiah'),
('PDG', 'Padang', '13', 909040, 'Hendri Septa, B.Bus. (Acc), MIB.', 'Hendri Septa, B.Bus. (Acc), MIB.'),
('PKB', 'Pekanbaru', '14', 983356, 'Muflihun', 'Muflihun'),
('PKR', 'Palangka Raya', '62', 293457, 'Fairid Naparin', 'Umi Mastikah'),
('PLL', 'Pelalawan', '14', 390046, 'H. Zukri', 'Nasarudin'),
('PLU', 'Palu', '72', 372113, 'Hadianto Rasyid', 'Hadianto Rasyid'),
('PMO', 'Parigi Moutong', '72', 443170, 'Samsurizal Tombolotutu', 'Badrun Nggai'),
('PPU', 'Penajam Paser Utara', '64', 166554, 'Hamdam Pongrewa', 'Hamdam Pongrewa'),
('PRM', 'Pariaman', '13', 94224, 'Dr. H. Genius Umar, S.Sos., M.Si. ', 'Drs. Mardison Mahyuddin, M.M.'),
('PSO', 'Poso', '72', 248345, 'Verna Inkiriwang', 'Yasin Mangun'),
('PSR', 'Paser', '64', 254503, 'Fahmi Fadli', 'Syarifah Masitah Assegaf'),
('PTK', 'Pontianak', '61', 655572, 'Edi Rusdi Kamtono', '	Bahasan'),
('PTS', 'Pematangsiantar', '12', 268254, 'dr. Hj. Susanti Dewayani, Sp.A.', 'dr. Hj. Susanti Dewayani, Sp.A.'),
('PYK', 'Payakumbuh', '13', 139576, 'H. Riza Falepi, S.T., M.T. ', 'H. Erwin Yunaz, S.E., M.M.'),
('SBG', 'Sabang', '11', 41197, 'Nazaruddin', 'Suradji Junus'),
('SBL', 'Subulussalam', '11', 90751, 'Drs. Salmaza Kombih, M.AP.', 'Drs. Salmaza Kombih, M.AP.'),
('SBO', 'Sibolga', '12', 89584, 'Nazaruddin', 'Suradji Junus'),
('SBY', 'Surabaya', '35', 2870000, 'Eri Cahyadi', 'Armuji'),
('SGI', 'Sigi', '72', 239421, 'Mohamad Irwan Lapatta', 'Samuel Yansen Pongi'),
('SIA', 'Siak', '14', 457940, 'Drs. H. Alfedri, M.Si. ', 'H. Husni Merza, BBA, MM'),
('SKW', 'Singkawang', '61', 232993, 'Tjhai Chui Mie', 'Irwan'),
('SLE', 'Sleman', '34', 1125804, 'Dra. Hj. Kustini Sri Purnomo', 'Danang Maharsa'),
('SLG', 'Sarolangun', '15', 313373, 'Henrizal (Pj.)', 'Henrizal (Pj.)'),
('SLK', 'Solok', '13', 92865, 'H. Zul Elfian, S.H., M.Si. ', 'Dr. Ramadhani Kirana Putra, S.E., M.M.'),
('SLM', 'Seluma', '16', 207587, 'Erwin Octavian, SE', 'Drs. Gustianto'),
('SML', 'Simeulue', '11', 92865, 'Erli Hasim, S.H., S.Ag., M.I.Kom.', 'Hj. Afridawati'),
('SMR', 'Samarinda', '64', 766015, 'Andi Harun', 'Rusmadi'),
('SRN', 'Serang', '36', 692101, 'Syafrudin Syafei', 'Subadri Ushuludin'),
('TBL', 'Tabalong', '63', 253305, 'Anang Syakhfiani', 'Mawardi'),
('TBO', 'Tebo', '15', 327669, 'Aspan (Pj.)', 'Aspan (Pj.)'),
('TGR', 'Tangerang', '36', 1895486, 'Arief Rachadiono Wismansyah', 'Sachrudin'),
('TGS', 'Tangerang Selatan', '36', 1354350, 'Benyamin Davnie', 'Pilar Saga Ichsan'),
('TJB', 'Tanjungbalai', '12', 176027, 'H. Waris Thalib, S.Ag., M.M.', 'H. Waris Thalib, S.Ag., M.M.'),
('TMH', 'Tomohon', '71', 98013, 'Caroll Senduk', 'Wenny Lumentut'),
('TNB', 'Tanah Bumbu', '63', 322646, 'Zairullah Azhar', 'Muhammad Rusli'),
('TNL', 'Tanah Laut', '63', 348966, 'Sukamta', 'Abdi Rahman'),
('TPN', 'Tapin', '63', 189475, 'Arifin Arpan', 'Syafrudin Noor'),
('TRK', 'Tarakan', '65', 242800, 'Khairul', 'Effendhi Djuprianto'),
('TTD', 'Tana Tidung', '65', 25600, 'Ibrahim Ali', 'Hendrik'),
('TTL', 'Tolitoli', '72', 226794, 'Amran H. Yahya', 'Mohammad Besar Bantilan'),
('TUU', 'Tojo Una-Una', '72', 165574, 'Mohammad Lahay', 'Admin A.S. Lasimpala'),
('YOG', 'Yogyakarta', '34', 373589, 'Sumadi', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penduduk`
--

CREATE TABLE `tb_penduduk` (
  `NIK` char(18) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jenis_Kelamin` varchar(9) NOT NULL,
  `Kota` varchar(30) NOT NULL,
  `Provinsi` varchar(50) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Status` varchar(13) NOT NULL,
  `Agama` varchar(20) NOT NULL,
  `Pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penduduk`
--

INSERT INTO `tb_penduduk` (`NIK`, `Nama`, `Jenis_Kelamin`, `Kota`, `Provinsi`, `Tanggal_Lahir`, `Status`, `Agama`, `Pekerjaan`) VALUES
('100299111165482', 'Daron Yoder', 'pria', 'KST', '71', '2001-09-11', 'blm kawin', 'katolik', 'Statistician'),
('101227164096067', 'Mauricio Thorpe', 'pria', 'LGA', '11', '2000-09-11', 'blm kawin', 'islam', 'Educator'),
('1057457576398439', 'Raul Hoang', 'pria', 'BLG', '63', '2006-09-11', 'blm kawin', 'katolik', 'Massage Therapist'),
('1078606835618272', 'Jabari Ngo', 'pria', 'SBL', '11', '2008-09-11', 'blm kawin', 'hindu', 'Farmer'),
('110694196157072', 'Damaris Luu', 'pria', 'BAC', '11', '2016-09-11', 'blm kawin', 'hindu', 'Mathematician'),
('112974546305317', 'Hayley Montgomery', 'wanita', 'MDN', '12', '2003-09-11', 'blm kawin', 'katolik', 'Housekeeper'),
('114740580906329', 'Yolanda Palacios', 'pria', 'BKT', '13', '2012-09-11', 'blm kawin', 'islam', 'Massage Therapist'),
('1164350728456231', 'Jaylin Goodson', 'wanita', 'BKT', '13', '2004-09-11', 'blm kawin', 'budha', 'Market Research Analyst'),
('1248504947948219', 'Enoch Ruffin', 'pria', 'TRK', '65', '2016-09-11', 'blm kawin', 'budha', 'Statistician'),
('1299593032840869', 'Angeles Lemons', 'pria', 'TTD', '65', '2014-09-11', 'blm kawin', 'kristen', 'Mathematician'),
('1317569547701826', 'Destini Schuster', 'wanita', 'HSS', '63', '2011-09-11', 'blm kawin', 'budha', 'Massage Therapist'),
('1327985703599454', 'Zander Castillo', 'wanita', 'LBG', '16', '2010-09-11', 'blm kawin', 'hindu', 'Mathematician'),
('1408985715825723', 'Tristen Perez', 'wanita', 'BLM', '71', '2011-09-11', 'blm kawin', 'katolik', 'Housekeeper'),
('1441349493781507', 'Arman Chamberlin', 'pria', 'BMS', '71', '2000-09-11', 'blm kawin', 'budha', 'Massage Therapist'),
('1482686742333454', 'Holden Cuellar', 'wanita', 'KRC', '15', '2002-09-11', 'blm kawin', 'kristen', 'Computer Support Specialist'),
('1614607895003708', 'Bishop Haase', 'wanita', 'TTD', '65', '2005-09-11', 'blm kawin', 'hindu', 'Physical Therapist'),
('1641858845723371', 'Richard Haller', 'wanita', 'KPS', '71', '2014-09-11', 'blm kawin', 'katolik', 'Computer Support Specialist'),
('1670536422065702', 'Gissell Gunn', 'wanita', 'MDN', '12', '2017-09-11', 'blm kawin', 'kristen', 'Physical Therapist'),
('1755064215364592', 'Milo Coughlin', 'wanita', 'KRC', '15', '2009-09-11', 'blm kawin', 'kristen', 'Farmer'),
('1800660268506575', 'Sidney McCain', 'wanita', 'SBG', '11', '2011-09-11', 'blm kawin', 'hindu', 'Marketing Manager'),
('1839722324604382', 'Ania Ayers', 'wanita', 'BKT', '13', '2004-09-11', 'blm kawin', 'budha', 'Educator'),
('1908524289165911', 'Tianna Vargas', 'wanita', 'SBO', '12', '2011-09-11', 'blm kawin', 'hindu', 'Physical Therapist'),
('1924229532357997', 'Efren Walton', 'wanita', 'TJB', '12', '2004-09-11', 'blm kawin', 'kristen', 'Computer Support Specialist'),
('2001263114007068', 'Anjelica Meyers', 'wanita', 'TRK', '65', '2017-09-11', 'blm kawin', 'kristen', 'Budget analyst'),
('2016983395656422', 'Jesus Little', 'pria', 'LGA', '11', '2015-09-11', 'blm kawin', 'hindu', 'Statistician'),
('2017340632312059', 'Vincenzo Peebles', 'wanita', 'KST', '71', '2002-09-11', 'blm kawin', 'hindu', 'Budget analyst'),
('2020634055440948', 'Gonzalo Gaither', 'wanita', 'JMB', '15', '2001-09-11', 'blm kawin', 'islam', 'Market Research Analyst'),
('2054887321600638', 'Gunner Allison', 'pria', 'SML', '11', '2011-09-11', 'blm kawin', 'kristen', 'Designer'),
('2061945469279138', 'Madelyn Harmon', 'wanita', 'MRG', '15', '2001-09-11', 'blm kawin', 'budha', 'Mathematician'),
('2066823819410608', 'Geovanni Light', 'pria', 'HST', '63', '2008-09-11', 'blm kawin', 'islam', 'Physical Therapist'),
('207840808715216', 'Gunnar Foy', 'pria', 'BMS', '71', '2006-09-11', 'blm kawin', 'kristen', 'Massage Therapist'),
('2091595564467874', 'Bruno Cheng', 'wanita', 'KTM', '64', '2008-09-11', 'blm kawin', 'islam', 'Radiologic Technologist'),
('2093527520293501', 'Abagail Sage', 'pria', 'KKT', '64', '2000-09-11', 'blm kawin', 'katolik', 'Computer Support Specialist'),
('2184774605015813', 'Tracy Quinn', 'wanita', 'KKT', '64', '2006-09-11', 'blm kawin', 'budha', 'HR Specialist'),
('2204334089909629', 'Abriana Grigsby', 'pria', 'KIB', '64', '2002-09-11', 'blm kawin', 'islam', 'Mathematician'),
('2231474428205411', 'Shane Shanks', 'wanita', 'MDN', '12', '2018-09-11', 'blm kawin', 'hindu', 'Budget analyst'),
('2272539443718233', 'Bishop Conte', 'wanita', 'PKB', '14', '2019-09-11', 'blm kawin', 'budha', 'Budget analyst'),
('2396813952145342', 'Jessenia Trejo', 'wanita', 'PRM', '13', '2013-09-11', 'blm kawin', 'kristen', 'Housekeeper'),
('2401403068237930', 'Bill Kinney', 'wanita', 'KTM', '64', '2002-09-11', 'blm kawin', 'islam', 'Statistician'),
('2412828206856701', 'Luther Pyle', 'wanita', 'MHL', '64', '2013-09-11', 'blm kawin', 'hindu', 'Physical Therapist'),
('2501207771490752', 'Carl Blevins', 'wanita', 'SLM', '16', '2004-09-11', 'blm kawin', 'katolik', 'Compliance Officer'),
('2511683699184004', 'Brea Jordan', 'pria', 'MKM', '16', '2009-09-11', 'blm kawin', 'kristen', 'Patrol Officer'),
('25142751708679', 'Carina Carrera', 'wanita', 'LGA', '11', '2014-09-11', 'blm kawin', 'hindu', 'Patrol Officer'),
('2585243306986227', 'Allyson Hawley', 'wanita', 'MNL', '65', '2019-09-11', 'blm kawin', 'kristen', 'Radiologic Technologist'),
('2658351759807320', 'Hasan Forte', 'wanita', 'KPS', '71', '2019-09-11', 'blm kawin', 'katolik', 'Radiologic Technologist'),
('2727227011981823', 'Kolten Calabrese', 'wanita', 'SLG', '15', '2003-09-11', 'blm kawin', 'budha', 'Designer'),
('2731711027416008', 'Tia Quinn', 'wanita', 'KPH', '16', '2009-09-11', 'blm kawin', 'kristen', 'Recreational Therapist'),
('2753296254803468', 'Brielle Medrano', 'wanita', 'BUL', '65', '2005-09-11', 'blm kawin', 'hindu', 'Physical Therapist'),
('2758009090497841', 'Dezmond Anglin', 'pria', 'KIB', '64', '2000-09-11', 'blm kawin', 'katolik', 'Photographer'),
('2774478365659076', 'August Ramey', 'wanita', 'SLK', '13', '2003-09-11', 'blm kawin', 'katolik', 'Recreational Therapist'),
('2810632651752229', 'Miracle Gagne', 'wanita', 'KRC', '15', '2011-09-11', 'blm kawin', 'islam', 'Educator'),
('290630152443571', 'Tyson Stephenson', 'wanita', 'KPH', '16', '2019-09-11', 'blm kawin', 'hindu', 'HR Specialist'),
('2936680793811730', 'Dorien Crespo', 'wanita', 'HST', '63', '2000-09-11', 'blm kawin', 'hindu', 'Radiologic Technologist'),
('2963862012596716', 'Oliver Shelby', 'wanita', 'PKB', '14', '2012-09-11', 'blm kawin', 'islam', 'Statistician'),
('3015272554499011', 'Elias Navarro', 'pria', 'LGA', '11', '2008-09-11', 'blm kawin', 'islam', 'Housekeeper'),
('304006808538681', 'Roderick Griggs', 'pria', 'BNK', '16', '2018-09-11', 'blm kawin', 'islam', 'Physical Therapist'),
('3058857780411617', 'Niko Cash', 'pria', 'KIB', '64', '2000-09-11', 'blm kawin', 'islam', 'Marketing Manager'),
('3065859626620706', 'Tania Hogue', 'pria', 'PTS', '12', '2013-09-11', 'blm kawin', 'hindu', 'Recreational Therapist'),
('314393536057342', 'Gregorio Neumann', 'wanita', 'MNL', '65', '2018-09-11', 'blm kawin', 'hindu', 'Patrol Officer'),
('3191191731019718', 'Yadira Kendrick', 'wanita', 'SLK', '13', '2018-09-11', 'blm kawin', 'kristen', 'Marketing Manager'),
('3236550923257024', 'Tommy Drummond', 'pria', 'DMI', '14', '2011-09-11', 'blm kawin', 'hindu', 'Compliance Officer'),
('325357171742639', 'Sheridan Mathias', 'wanita', 'KTM', '64', '2015-09-11', 'blm kawin', 'islam', 'Marketing Manager'),
('3279470062087166', 'Jocelyn Goad', 'wanita', 'GNT', '12', '2016-09-11', 'blm kawin', 'katolik', 'Recreational Therapist'),
('3286026415787479', 'Chad Manuel', 'wanita', 'KMP', '14', '2015-09-11', 'blm kawin', 'budha', 'Substance Abuse Counselor'),
('3294450820124834', 'Cecelia Schwarz', 'pria', 'MHL', '64', '2019-09-11', 'blm kawin', 'budha', 'Police Officer'),
('3368583522839270', 'Kya Purdy', 'pria', 'SIA', '14', '2002-09-11', 'blm kawin', 'hindu', 'HR Specialist'),
('3370756656939526', 'Eleazar Greer', 'pria', 'MKM', '16', '2000-09-11', 'blm kawin', 'hindu', 'Mathematician'),
('3376651678404880', 'Carlos Peralta', 'wanita', 'BUL', '65', '2019-09-11', 'blm kawin', 'katolik', 'Farmer'),
('341704197390919', 'Clayton Dykes', 'wanita', 'BAC', '11', '2000-09-11', 'blm kawin', 'islam', 'Computer Support Specialist'),
('3447168729206844', 'Alexandro Harper', 'pria', 'SIA', '14', '2011-09-11', 'blm kawin', 'budha', 'Compliance Officer'),
('3453957793998732', 'Keyshawn Barbour', 'pria', 'TBO', '15', '2017-09-11', 'blm kawin', 'islam', 'HR Specialist'),
('3559452074752716', 'Aron Herman', 'wanita', 'SML', '11', '2018-09-11', 'blm kawin', 'budha', 'Massage Therapist'),
('3705921614819698', 'Ayden Caraballo', 'pria', 'SBG', '11', '2008-09-11', 'blm kawin', 'katolik', 'Marketing Manager'),
('3740211787707148', 'Ean Kramer', 'wanita', 'PRM', '13', '2015-09-11', 'blm kawin', 'katolik', 'Patrol Officer'),
('3825433770807231', 'Dale Roach', 'wanita', 'BRU', '64', '2006-09-11', 'blm kawin', 'budha', 'Statistician'),
('3864628015671514', 'Vance Shearer', 'wanita', 'KMP', '14', '2010-09-11', 'blm kawin', 'katolik', 'Physical Therapist'),
('3879212789231903', 'Karissa Bryan', 'wanita', 'SLM', '16', '2006-09-11', 'blm kawin', 'katolik', 'Budget analyst'),
('3929969565184197', 'Connor Jaime', 'pria', 'BMT', '71', '2004-09-11', 'blm kawin', 'islam', 'Budget analyst'),
('3984881386092651', 'Susanna Tejeda', 'wanita', 'KST', '71', '2010-09-11', 'blm kawin', 'kristen', 'Radiologic Technologist'),
('4012835260443190', 'Lucia Nadeau', 'wanita', 'KMP', '14', '2015-09-11', 'blm kawin', 'islam', 'Farmer'),
('4041125818438376', 'Billie Portillo', 'pria', 'MRG', '15', '2017-09-11', 'blm kawin', 'budha', 'Marketing Manager'),
('4074793413346558', 'Jayde Mcfarlane', 'wanita', 'BAC', '11', '2005-09-11', 'blm kawin', 'budha', 'HR Specialist'),
('4102018244502106', 'Alexzander Maguire', 'wanita', 'LBG', '16', '2019-09-11', 'blm kawin', 'hindu', 'Substance Abuse Counselor'),
('4115832826586507', 'Eboni Dubose', 'wanita', 'SLG', '15', '2019-09-11', 'blm kawin', 'kristen', 'Educator'),
('4141586538752599', 'Kaitlyn Meade', 'pria', 'KRC', '15', '2014-09-11', 'blm kawin', 'kristen', 'HR Specialist'),
('4147509903001645', 'Kristen Katz', 'wanita', 'HSS', '63', '2014-09-11', 'blm kawin', 'kristen', 'Massage Therapist'),
('4158050943170632', 'Eugene Carman', 'pria', 'MKM', '16', '2014-09-11', 'blm kawin', 'kristen', 'Radiologic Technologist'),
('4215220111206381', 'Rocco Gibbons', 'pria', 'SIA', '14', '2002-09-11', 'blm kawin', 'hindu', 'Police Officer'),
('4278953191173511', 'Acacia Wynne', 'pria', 'KKT', '64', '2017-09-11', 'blm kawin', 'hindu', 'Substance Abuse Counselor'),
('4305966889917738', 'Antony McGowan', 'wanita', 'BNK', '16', '2016-09-11', 'blm kawin', 'islam', 'Substance Abuse Counselor'),
('4327074749327528', 'Selah Willett', 'wanita', 'BMS', '71', '2001-09-11', 'blm kawin', 'hindu', 'Budget analyst'),
('4338072633380887', 'Brea Sawyer', 'pria', 'TBO', '15', '2016-09-11', 'blm kawin', 'budha', 'Market Research Analyst'),
('4362450321705031', 'Kenan Britt', 'pria', 'BNK', '16', '2012-09-11', 'blm kawin', 'hindu', 'Educator'),
('442889325392581', 'Cathryn Hurley', 'pria', 'BRU', '64', '2009-09-11', 'blm kawin', 'budha', 'Budget analyst'),
('4431344785562296', 'Nasir Clay', 'wanita', 'PKB', '14', '2002-09-11', 'blm kawin', 'hindu', 'Market Research Analyst'),
('4514554637805444', 'Keeley Bowden', 'pria', 'SBL', '11', '2010-09-11', 'blm kawin', 'budha', 'Physical Therapist'),
('4522648108507328', 'Madison Thomason', 'wanita', 'GNT', '12', '2007-09-11', 'blm kawin', 'katolik', 'Radiologic Technologist'),
('4554702931073207', 'Hailee Roberson', 'pria', 'KST', '71', '2019-09-11', 'blm kawin', 'hindu', 'HR Specialist'),
('4584280197482768', 'Obed Allen', 'pria', 'BRK', '63', '2005-09-11', 'blm kawin', 'hindu', 'Computer Support Specialist'),
('4615890057585184', 'Jordan Rivas', 'wanita', 'GNT', '12', '2016-09-11', 'blm kawin', 'hindu', 'Educator'),
('4626348830687321', 'Jeff Heaton', 'wanita', 'PKB', '14', '2007-09-11', 'blm kawin', 'kristen', 'Educator'),
('4649087955495708', 'Melvin Singleton', 'wanita', 'BRK', '63', '2019-09-11', 'blm kawin', 'hindu', 'HR Specialist'),
('4668470595808714', 'Kelly Sanford', 'pria', 'KPS', '71', '2004-09-11', 'blm kawin', 'kristen', 'Photographer'),
('4789089469694707', 'Erica Clapp', 'wanita', 'PLL', '14', '2004-09-11', 'blm kawin', 'budha', 'Marketing Manager'),
('4791439721255830', 'Omari Waugh', 'pria', 'BLG', '63', '2003-09-11', 'blm kawin', 'islam', 'Educator'),
('4794544830054690', 'Lance Alonzo', 'pria', 'SLG', '15', '2005-09-11', 'blm kawin', 'kristen', 'Designer'),
('4802163118079585', 'Payton Harley', 'wanita', 'KIB', '64', '2014-09-11', 'blm kawin', 'kristen', 'Massage Therapist'),
('4803404715559902', 'Caylin Hassan', 'wanita', 'MHL', '64', '2016-09-11', 'blm kawin', 'kristen', 'HR Specialist'),
('481363383094950', 'Asia Chavis', 'pria', 'TBO', '15', '2013-09-11', 'blm kawin', 'kristen', 'Budget analyst'),
('4832274151321232', 'Shea Isom', 'wanita', 'BAC', '11', '2005-09-11', 'blm kawin', 'budha', 'Farmer'),
('4910782109158871', 'Presley Robert', 'wanita', 'BMS', '71', '2007-09-11', 'blm kawin', 'islam', 'Patrol Officer'),
('4983548648036948', 'Santana Hamlin', 'pria', 'TRK', '65', '2005-09-11', 'blm kawin', 'katolik', 'Radiologic Technologist'),
('4987036304365329', 'Nelson Potts', 'pria', 'TBO', '15', '2000-09-11', 'blm kawin', 'islam', 'Computer Support Specialist'),
('5010569905085607', 'Austen Levy', 'wanita', 'PLL', '14', '2007-09-11', 'blm kawin', 'katolik', 'Compliance Officer'),
('5081603898673839', 'Fletcher Kimble', 'wanita', 'NNK', '65', '2011-09-11', 'blm kawin', 'islam', 'HR Specialist'),
('5117701893379314', 'Rylie Mathis', 'pria', 'BRK', '63', '2017-09-11', 'blm kawin', 'kristen', 'Patrol Officer'),
('5122225223076937', 'Jaiden Crisp', 'pria', 'BMT', '71', '2000-09-11', 'blm kawin', 'hindu', 'Housekeeper'),
('5137224943809544', 'Dana Venegas', 'wanita', 'KKT', '64', '2005-09-11', 'blm kawin', 'budha', 'Educator'),
('5229247942404440', 'Elvin Aquino', 'wanita', 'TBO', '15', '2005-09-11', 'blm kawin', 'katolik', 'Housekeeper'),
('5265933800085889', 'Clayton Cramer', 'wanita', 'PLL', '14', '2015-09-11', 'blm kawin', 'hindu', 'Budget analyst'),
('5280714627576257', 'Sophia Kruse', 'pria', 'HST', '63', '2007-09-11', 'blm kawin', 'islam', 'Substance Abuse Counselor'),
('5287017295711571', 'Zoie Stein', 'pria', 'PKB', '14', '2004-09-11', 'blm kawin', 'budha', 'Recreational Therapist'),
('5306970701007583', 'Clark Sabo', 'pria', 'BJR', '63', '2005-09-11', 'blm kawin', 'islam', 'Designer'),
('533194981409326', 'Lilia Baltazar', 'wanita', 'PYK', '13', '2016-09-11', 'blm kawin', 'hindu', 'Housekeeper'),
('5356690478059942', 'Jeffrey Mize', 'pria', 'MNL', '65', '2013-09-11', 'blm kawin', 'hindu', 'Marketing Manager'),
('5372305073100030', 'Mathew Walsh', 'pria', 'BAC', '11', '2004-09-11', 'blm kawin', 'kristen', 'Substance Abuse Counselor'),
('543197022370052', 'Luis Bustos', 'pria', 'TJB', '12', '2014-09-11', 'blm kawin', 'kristen', 'Mathematician'),
('5474533733441458', 'Diamond Varney', 'pria', 'MHL', '64', '2011-09-11', 'blm kawin', 'katolik', 'Massage Therapist'),
('5509487233909909', 'Alize Shepard', 'wanita', 'PTS', '12', '2015-09-11', 'blm kawin', 'islam', 'Radiologic Technologist'),
('5559740308804331', 'Calvin Isaac', 'wanita', 'BRK', '63', '2009-09-11', 'blm kawin', 'kristen', 'Patrol Officer'),
('5565690342623628', 'Rory Bonner', 'wanita', 'KPH', '16', '2015-09-11', 'blm kawin', 'islam', 'Statistician'),
('5670488998978813', 'Jaylen Henriquez', 'pria', 'PYK', '13', '2017-09-11', 'blm kawin', 'hindu', 'Designer'),
('5799818342798571', 'Sarah Sharma', 'pria', 'SBG', '11', '2019-09-11', 'blm kawin', 'hindu', 'Market Research Analyst'),
('580788944975159', 'Mckenna Boucher', 'pria', 'BMS', '71', '2019-09-11', 'blm kawin', 'islam', 'Housekeeper'),
('5942640905827314', 'Kamron Salinas', 'wanita', 'BRU', '64', '2016-09-11', 'blm kawin', 'islam', 'Statistician'),
('5949562499597427', 'Angelica Street', 'pria', 'MRG', '15', '2019-09-11', 'blm kawin', 'budha', 'Radiologic Technologist'),
('5955603918075913', 'Keyla Brady', 'wanita', 'MRG', '15', '2004-09-11', 'blm kawin', 'kristen', 'Massage Therapist'),
('5967595819764255', 'Brandan Lane', 'pria', 'BJR', '63', '2008-09-11', 'blm kawin', 'hindu', 'Radiologic Technologist'),
('6029461527381357', 'Magali Ketchum', 'wanita', 'BLM', '71', '2008-09-11', 'blm kawin', 'hindu', 'Photographer'),
('6209481504453755', 'Ryleigh McCabe', 'wanita', 'NNK', '65', '2005-09-11', 'blm kawin', 'katolik', 'Patrol Officer'),
('621308012757799', 'Brennen Washington', 'pria', 'MNL', '65', '2013-09-11', 'blm kawin', 'islam', 'Budget analyst'),
('6226839186092046', 'Rivka Barron', 'wanita', 'BLM', '71', '2007-09-11', 'blm kawin', 'hindu', 'Police Officer'),
('6232583405734917', 'Leonel Skipper', 'wanita', 'SML', '11', '2018-09-11', 'blm kawin', 'budha', 'Photographer'),
('6241236490466229', 'Ashlin Ruth', 'pria', 'PYK', '13', '2004-09-11', 'blm kawin', 'islam', 'Budget analyst'),
('6273937556522868', 'Axel Beatty', 'wanita', 'DMI', '14', '2004-09-11', 'blm kawin', 'budha', 'Massage Therapist'),
('6285379900526962', 'Agustin Corral', 'wanita', 'SBO', '12', '2002-09-11', 'blm kawin', 'islam', 'Statistician'),
('6289492567692854', 'Luna Nunez', 'wanita', 'SIA', '14', '2016-09-11', 'blm kawin', 'hindu', 'Designer'),
('6378954611517282', 'Bryan Rivers', 'pria', 'KPS', '71', '2013-09-11', 'blm kawin', 'katolik', 'Photographer'),
('6393700882003388', 'Elise Smalls', 'pria', 'MDN', '12', '2013-09-11', 'blm kawin', 'kristen', 'Computer Support Specialist'),
('6406533939360448', 'Yazmine Floyd', 'pria', 'HSS', '63', '2016-09-11', 'blm kawin', 'islam', 'Radiologic Technologist'),
('641347185375325', 'Lacie Wright', 'pria', 'TJB', '12', '2019-09-11', 'blm kawin', 'budha', 'Computer Support Specialist'),
('6505671285658390', 'Stephen Heim', 'wanita', 'SBO', '12', '2000-09-11', 'blm kawin', 'budha', 'Budget analyst'),
('6546962246109305', 'Alyson Hutchison', 'wanita', 'BRU', '64', '2001-09-11', 'blm kawin', 'katolik', 'Massage Therapist'),
('6609250347156146', 'Jacinda Peacock', 'pria', 'BMT', '71', '2002-09-11', 'blm kawin', 'kristen', 'Photographer'),
('6644478009262473', 'Maribel Felder', 'wanita', 'SLK', '13', '2003-09-11', 'blm kawin', 'kristen', 'Statistician'),
('6697009503532698', 'Sebastien Bundy', 'pria', 'BJR', '63', '2004-09-11', 'blm kawin', 'islam', 'Educator'),
('6700034908915433', 'Tyron Brinson', 'pria', 'NNK', '65', '2015-09-11', 'blm kawin', 'katolik', 'Farmer'),
('674832188631822', 'Siena Rangel', 'pria', 'DMI', '14', '2009-09-11', 'blm kawin', 'budha', 'Market Research Analyst'),
('6764866007651353', 'Armand Cagle', 'pria', 'PDG', '13', '2018-09-11', 'blm kawin', 'hindu', 'HR Specialist'),
('6808139713018262', 'Shirley Angulo', 'pria', 'SBL', '11', '2011-09-11', 'blm kawin', 'kristen', 'Massage Therapist'),
('6808981607287123', 'Carolina Moreland', 'pria', 'SBG', '11', '2011-09-11', 'blm kawin', 'kristen', 'Photographer'),
('6849749212433338', 'Diamond Way', 'pria', 'KMP', '14', '2007-09-11', 'blm kawin', 'katolik', 'Statistician'),
('6854876416725959', 'Kent Eastman', 'wanita', 'PTS', '12', '2001-09-11', 'blm kawin', 'kristen', 'Compliance Officer'),
('7000439746962384', 'Joanne Kiser', 'wanita', 'KTM', '64', '2017-09-11', 'blm kawin', 'islam', 'Police Officer'),
('7021570610494623', 'Loren Carlson', 'wanita', 'BMT', '71', '2011-09-11', 'blm kawin', 'budha', 'Budget analyst'),
('7057720777821885', 'Tyana Harlow', 'pria', 'TJB', '12', '2003-09-11', 'blm kawin', 'kristen', 'Radiologic Technologist'),
('7182892892861235', 'Dylon Hickey', 'pria', 'SBO', '12', '2002-09-11', 'blm kawin', 'katolik', 'Physical Therapist'),
('7210897958418587', 'Brittani Connor', 'pria', 'LGA', '11', '2001-09-11', 'blm kawin', 'budha', 'Physical Therapist'),
('7241544810403608', 'Meg Gruber', 'wanita', 'SBO', '12', '2016-09-11', 'blm kawin', 'kristen', 'Recreational Therapist'),
('7248939952157600', 'Jocelyn Squires', 'wanita', 'KRC', '15', '2015-09-11', 'blm kawin', 'kristen', 'Substance Abuse Counselor'),
('7260383099065215', 'Aidan Wheaton', 'wanita', 'MNL', '65', '2000-09-11', 'blm kawin', 'islam', 'Physical Therapist'),
('7312137639716385', 'Charisma Cooney', 'pria', 'HST', '63', '2015-09-11', 'blm kawin', 'hindu', 'Radiologic Technologist'),
('7312925462816489', 'Pablo Gardiner', 'pria', 'GNT', '12', '2015-09-11', 'blm kawin', 'katolik', 'Police Officer'),
('7357025381929694', 'Madalyn Angeles', 'wanita', 'PLL', '14', '2004-09-11', 'blm kawin', 'kristen', 'HR Specialist'),
('7364646539119168', 'Octavio Singletary', 'pria', 'KMP', '14', '2007-09-11', 'blm kawin', 'islam', 'HR Specialist'),
('7449525054458399', 'Benton Chapman', 'pria', 'HSS', '63', '2007-09-11', 'blm kawin', 'kristen', 'Farmer'),
('7479593735138166', 'Alice Counts', 'wanita', 'PDG', '13', '2000-09-11', 'blm kawin', 'katolik', 'Radiologic Technologist'),
('7497026661460098', 'Corbin Mcafee', 'wanita', 'PRM', '13', '2015-09-11', 'blm kawin', 'hindu', 'Educator'),
('7507597630327572', 'Luisa Bonner', 'wanita', 'PDG', '13', '2004-09-11', 'blm kawin', 'hindu', 'Market Research Analyst'),
('7636099319408165', 'Elian Schulte', 'wanita', 'BLG', '63', '2010-09-11', 'blm kawin', 'islam', 'Educator'),
('7719048184792716', 'Erik Bratton', 'wanita', 'SBL', '11', '2015-09-11', 'blm kawin', 'katolik', 'Patrol Officer'),
('7754013359348328', 'Jayce Thornton', 'pria', 'BLM', '71', '2014-09-11', 'blm kawin', 'budha', 'Substance Abuse Counselor'),
('7796581281429114', 'Kevin Tompkins', 'wanita', 'KST', '71', '2018-09-11', 'blm kawin', 'islam', 'Farmer'),
('7829520644079930', 'Omar Schmidt', 'pria', 'JMB', '15', '2001-09-11', 'blm kawin', 'islam', 'Mathematician'),
('7856615924622750', 'Hayden Cardona', 'pria', 'DMI', '14', '2011-09-11', 'blm kawin', 'kristen', 'Computer Support Specialist'),
('7861422061226360', 'Lucero Whalen', 'pria', 'JMB', '15', '2016-09-11', 'blm kawin', 'islam', 'Substance Abuse Counselor'),
('7866794792113196', 'Stacy Homan', 'pria', 'MDN', '12', '2010-09-11', 'blm kawin', 'katolik', 'Compliance Officer'),
('789132539865884', 'Shianne March', 'pria', 'BNK', '16', '2006-09-11', 'blm kawin', 'budha', 'Budget analyst'),
('7899177704740727', 'Keanna Simonson', 'wanita', 'TJB', '12', '2001-09-11', 'blm kawin', 'islam', 'Substance Abuse Counselor'),
('7900387429979567', 'Long Ellis', 'wanita', 'GNT', '12', '2002-09-11', 'blm kawin', 'katolik', 'Patrol Officer'),
('7956456363575724', 'Vance Combs', 'pria', 'SLG', '15', '2000-09-11', 'blm kawin', 'budha', 'Computer Support Specialist'),
('7956689844012745', 'Cornelius Norwood', 'pria', 'KKT', '64', '2019-09-11', 'blm kawin', 'katolik', 'Police Officer'),
('7987518984964759', 'Jeremiah Atwell', 'pria', 'BLG', '63', '2019-09-11', 'blm kawin', 'hindu', 'Mathematician'),
('7991912182027499', 'Saira Dubois', 'wanita', 'KPH', '16', '2010-09-11', 'blm kawin', 'kristen', 'Compliance Officer'),
('8010837913800113', 'Bryce Singh', 'pria', 'BRK', '63', '2019-09-11', 'blm kawin', 'islam', 'Market Research Analyst'),
('804159505362471', 'Estefany Klein', 'pria', 'LBG', '16', '2013-09-11', 'blm kawin', 'kristen', 'Statistician'),
('8057654273030308', 'Joanna Trammell', 'wanita', 'BUL', '65', '2000-09-11', 'blm kawin', 'kristen', 'Photographer'),
('8105659137304693', 'Blair Carranza', 'pria', 'PRM', '13', '2009-09-11', 'blm kawin', 'hindu', 'Substance Abuse Counselor'),
('8190417314358445', 'Sydni Halverson', 'pria', 'BJR', '63', '2008-09-11', 'blm kawin', 'katolik', 'Patrol Officer'),
('8212466606221709', 'Silvia Keller', 'wanita', 'PLL', '14', '2009-09-11', 'blm kawin', 'katolik', 'Budget analyst'),
('8310945061434938', 'Cristina Hooker', 'wanita', 'TTD', '65', '2019-09-11', 'blm kawin', 'hindu', 'Mathematician'),
('8451854807453361', 'Jensen Royal', 'wanita', 'SLM', '16', '2014-09-11', 'blm kawin', 'budha', 'Statistician'),
('8518358811132913', 'America Whitlock', 'wanita', 'BMT', '71', '2003-09-11', 'blm kawin', 'budha', 'Farmer'),
('8531552418612083', 'Abby Ahmed', 'pria', 'PYK', '13', '2008-09-11', 'blm kawin', 'budha', 'Educator'),
('8538302655127021', 'Randy Needham', 'pria', 'MKM', '16', '2009-09-11', 'blm kawin', 'hindu', 'Patrol Officer'),
('8578185595801642', 'Destini Worrell', 'wanita', 'BNK', '16', '2013-09-11', 'blm kawin', 'budha', 'HR Specialist'),
('860024456413344', 'Nolan Ham', 'wanita', 'PRM', '13', '2014-09-11', 'blm kawin', 'kristen', 'Photographer'),
('8604839450843584', 'Luna Mayes', 'pria', 'SBL', '11', '2005-09-11', 'blm kawin', 'katolik', 'Statistician'),
('8620850761328442', 'Reina Chamberlin', 'wanita', 'PTS', '12', '2007-09-11', 'blm kawin', 'katolik', 'Mathematician'),
('8640714495902080', 'Joan Grey', 'pria', 'PYK', '13', '2000-09-11', 'blm kawin', 'katolik', 'Farmer'),
('8641003989788856', 'Selena Cormier', 'wanita', 'TTD', '65', '2013-09-11', 'blm kawin', 'kristen', 'Educator'),
('8693788535010072', 'Brody Griffin', 'wanita', 'SIA', '14', '2009-09-11', 'blm kawin', 'kristen', 'Marketing Manager'),
('8714345991032257', 'Eden McClain', 'wanita', 'HST', '63', '2019-09-11', 'blm kawin', 'hindu', 'Patrol Officer'),
('8728495571499317', 'Breana Goetz', 'pria', 'TRK', '65', '2000-09-11', 'blm kawin', 'katolik', 'Market Research Analyst'),
('8792004879471906', 'Miranda Demarco', 'pria', 'TRK', '65', '2007-09-11', 'blm kawin', 'budha', 'Designer'),
('8819030480790415', 'Ricardo Hedrick', 'wanita', 'SLK', '13', '2016-09-11', 'blm kawin', 'hindu', 'Designer'),
('8829924417866590', 'Alyse Jolley', 'pria', 'PTS', '12', '2012-09-11', 'blm kawin', 'katolik', 'Physical Therapist'),
('8836807575838428', 'Harold Gallegos', 'wanita', 'BLG', '63', '2011-09-11', 'blm kawin', 'kristen', 'Compliance Officer'),
('8846775727464327', 'Hugh Washington', 'wanita', 'LBG', '16', '2011-09-11', 'blm kawin', 'budha', 'Recreational Therapist'),
('8905231247982432', 'Damion Carman', 'pria', 'SBG', '11', '2000-09-11', 'blm kawin', 'islam', 'Recreational Therapist'),
('8908807670588896', 'Jaida Elizondo', 'pria', 'SLG', '15', '2005-09-11', 'blm kawin', 'budha', 'Budget analyst'),
('8935661222104232', 'Judith Yeager', 'pria', 'SML', '11', '2017-09-11', 'blm kawin', 'katolik', 'Photographer'),
('8940305006523341', 'Jamari Hannah', 'wanita', 'TTD', '65', '2018-09-11', 'blm kawin', 'katolik', 'Massage Therapist'),
('8973372351475999', 'Josue Jacobs', 'pria', 'BUL', '65', '2000-09-11', 'blm kawin', 'kristen', 'Mathematician'),
('9090767984073184', 'Dixie Best', 'wanita', 'MKM', '16', '2018-09-11', 'blm kawin', 'kristen', 'Farmer'),
('9128608020155746', 'Ian Newton', 'wanita', 'SLM', '16', '2011-09-11', 'blm kawin', 'kristen', 'Designer'),
('9150502465585220', 'Skyler Israel', 'pria', 'LBG', '16', '2003-09-11', 'blm kawin', 'budha', 'Market Research Analyst'),
('9165328580492936', 'Anisha Puckett', 'wanita', 'NNK', '65', '2003-09-11', 'blm kawin', 'katolik', 'Market Research Analyst'),
('9178564292623524', 'Elsie Hite', 'wanita', 'NNK', '65', '2013-09-11', 'blm kawin', 'budha', 'Market Research Analyst'),
('9181845792707138', 'Chandler Zimmer', 'pria', 'JMB', '15', '2011-09-11', 'blm kawin', 'islam', 'Physical Therapist'),
('9218280931606116', 'Astrid Lafferty', 'wanita', 'MHL', '64', '2012-09-11', 'blm kawin', 'kristen', 'Police Officer'),
('9261496064097432', 'Adolfo Navarrete', 'wanita', 'JMB', '15', '2006-09-11', 'blm kawin', 'budha', 'Farmer'),
('928779911956434', 'Ronan Smiley', 'pria', 'BLM', '71', '2005-09-11', 'blm kawin', 'hindu', 'Radiologic Technologist'),
('9288965072601976', 'Lloyd Trujillo', 'wanita', 'SML', '11', '2014-09-11', 'blm kawin', 'kristen', 'Mathematician'),
('9293723767760156', 'Payton Baron', 'wanita', 'BJR', '63', '2017-09-11', 'blm kawin', 'katolik', 'Substance Abuse Counselor'),
('9329883102981022', 'Roberto Prince', 'pria', 'PDG', '13', '2007-09-11', 'blm kawin', 'kristen', 'Marketing Manager'),
('9366436952730352', 'Adrien Burch', 'wanita', 'SLK', '13', '2019-09-11', 'blm kawin', 'kristen', 'Compliance Officer'),
('9496385176265538', 'Karleigh Haase', 'pria', 'BKT', '13', '2011-09-11', 'blm kawin', 'budha', 'Statistician'),
('9526296637409128', 'Terra Everett', 'wanita', 'BRU', '64', '2010-09-11', 'blm kawin', 'kristen', 'Compliance Officer'),
('9531087248697466', 'Jordon Gibbs', 'wanita', 'DMI', '14', '2005-09-11', 'blm kawin', 'katolik', 'Radiologic Technologist'),
('9678943453162368', 'Santiago Turley', 'wanita', 'MRG', '15', '2005-09-11', 'blm kawin', 'budha', 'Computer Support Specialist'),
('9682099270979572', 'Hamza Jay', 'pria', 'PDG', '13', '2006-09-11', 'blm kawin', 'hindu', 'Mathematician'),
('9691211169171738', 'Juliann Pardo', 'wanita', 'BKT', '13', '2004-09-11', 'blm kawin', 'hindu', 'Educator'),
('973228649275086', 'Yareli Reno', 'pria', 'KIB', '64', '2012-09-11', 'blm kawin', 'katolik', 'Physical Therapist'),
('9735749198873554', 'Corrine Overton', 'wanita', 'SLM', '16', '2005-09-11', 'blm kawin', 'hindu', 'Compliance Officer'),
('9748659022119946', 'Troy Carroll', 'wanita', 'KPS', '71', '2015-09-11', 'blm kawin', 'islam', 'Computer Support Specialist'),
('9760936798309666', 'Messiah Tierney', 'pria', 'BUL', '65', '2003-09-11', 'blm kawin', 'katolik', 'Radiologic Technologist'),
('9894977276301696', 'Magali Green', 'wanita', 'KPH', '16', '2009-09-11', 'blm kawin', 'katolik', 'Educator'),
('9931766630752534', 'Shamar Means', 'wanita', 'HSS', '63', '2003-09-11', 'blm kawin', 'hindu', 'Patrol Officer'),
('9938810243001930', 'Cloe Cintron', 'pria', 'KTM', '64', '2010-09-11', 'blm kawin', 'katolik', 'Recreational Therapist');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_provinsi`
--

CREATE TABLE `tb_provinsi` (
  `Kode_Provinsi` varchar(5) NOT NULL,
  `Nama_Provinsi` varchar(30) NOT NULL,
  `Jumlah_Penduduk` int(11) NOT NULL,
  `Gubernur` varchar(100) NOT NULL,
  `Wakil_Gubernur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`Kode_Provinsi`, `Nama_Provinsi`, `Jumlah_Penduduk`, `Gubernur`, `Wakil_Gubernur`) VALUES
('11', 'ACEH', 5388000, 'Achmad Marzuki', 'Achmad Marzuki'),
('12', 'SUMATERA UTARA', 14798000, 'Edy Rahmayadi', 'Musa Rajekshah'),
('13', 'SUMATERA BARAT', 5545000, 'Mahyeldi', 'Audy Joinaldy'),
('14', 'RIAU', 6951000, 'Syamsuar', 'Edy Nasution'),
('15', 'JAMBI', 3604000, 'Al Haris', 'Abdullah Sani'),
('16', 'SUMATERA SELATAN', 8600000, 'Herman Deru', 'Mawardi Yahya'),
('17', 'BENGKULU', 1994000, 'Rohidin Mersyah', 'Rosjonsyah'),
('18', 'LAMPUNG', 8534000, 'Arinal Djunaidi', 'Chusnunia Chalim'),
('19', 'KEPULAUAN BANGKA BELITUNG', 1469000, 'Ridwan Djamaluddin', 'Ridwan Djamaluddin'),
('21', 'KEPULAUAN RIAU', 2309000, 'Ansar Ahmad', 'Marlin Agustina'),
('31', 'DKI JAKARTA', 10576000, 'Anies Rasyid Baswedan', 'Ahmad Riza Patria'),
('32', 'JAWA BARAT', 49565000, 'Ridwan Kamil', 'Uu Ruzhanul Ulum'),
('33', 'JAWA TENGAH', 34738000, 'Ganjar Pranowo', 'Taj Yasin Maimoen'),
('34', 'DI YOGYAKARTA', 3919000, 'Hamengkubawana X', 'Paku Alam X'),
('35', 'JAWA TIMUR', 39955000, 'Khofifah Indar Parawansa', 'Emil Dardak'),
('36', 'BANTEN', 12895000, 'Al Muktabar', 'Al Muktabar'),
('51', 'BALI', 4414000, 'I Wayan Koster', 'Tjokorda Oka Artha Ardana Sukawati'),
('52', 'NUSA TENGGARA BARAT', 5225000, 'Zulkieflimansyah', 'Sitti Rohmi Djalilah'),
('53', 'NUSA TENGGARA TIMUR', 5513000, 'Viktor Laiskodat', 'Josef Nae Soi'),
('61', 'KALIMANTAN BARAT', 5104000, 'Sutarmidji', 'Ria Norsan'),
('62', 'KALIMANTAN TENGAH', 2686000, 'Sugianto Sabran', 'Edy Pratowo'),
('63', 'KALIMANTAN SELATAN', 4268000, 'Sahbirin Noor', 'Muhidin'),
('64', 'KALIMANTAN TIMUR', 3664000, 'Isran Noor', 'Hadi Mulyadi'),
('65', 'KALIMANTAN UTARA', 708000, 'Zainal Arifin Paliwang', 'Yansen Tipa Padan'),
('71', 'SULAWESI UTARA', 2512000, 'Olly Dondokambey', 'Steven Kandouw'),
('72', 'SULAWESI TENGAH', 3081000, 'Rusdy Mastura', 'Mamun Amir'),
('73', 'SULAWESI SELATAN', 8888000, 'Andi Sudirman Sulaiman', 'Andi Sudirman Sulaiman'),
('74', 'SULAWESI TENGGARA', 2703000, 'Ali Mazi', 'Lukman Abunawas'),
('75', 'GORONTALO', 1186000, 'Hamka Hendra Noer', 'Hamka Hendra Noer'),
('76', 'SULAWESI BARAT', 1378000, 'Akmal Malik', 'Akmal Malik'),
('81', 'MALUKU', 1787000, 'Murad Ismail', 'Barnabas Orno'),
('82', 'MALUKU UTARA', 1252000, 'Abdul Ghani Kasuba', 'Al Yasin Ali'),
('91', 'PAPUA BARAT', 986000, 'Paulus Waterpauw', 'Paulus Waterpauw'),
('94', 'PAPUA', 3393000, 'Lukas Enembe', 'Lukas Enembe');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD PRIMARY KEY (`Kode_Kota`),
  ADD KEY `Asal_Provinsi` (`Asal_Provinsi`);

--
-- Indeks untuk tabel `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `Kota` (`Kota`);

--
-- Indeks untuk tabel `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  ADD PRIMARY KEY (`Kode_Provinsi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD CONSTRAINT `tb_kota_ibfk_1` FOREIGN KEY (`Asal_Provinsi`) REFERENCES `tb_provinsi` (`Kode_Provinsi`);

--
-- Ketidakleluasaan untuk tabel `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  ADD CONSTRAINT `tb_penduduk_ibfk_1` FOREIGN KEY (`Kota`) REFERENCES `tb_kota` (`Kode_Kota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
