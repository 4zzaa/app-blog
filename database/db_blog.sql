-- Database Dump for db_blog
-- Generated on 2026-06-13 04:23:03

SET FOREIGN_KEY_CHECKS=0;

-- --------------------------------------------------------
-- Table structure for `artikel`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_penulis` int NOT NULL,
  `id_kategori` int NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari_tanggal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_artikel_penulis` (`id_penulis`),
  KEY `fk_artikel_kategori` (`id_kategori`),
  CONSTRAINT `fk_artikel_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_artikel_penulis` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `artikel`

INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`) VALUES ('5', '9', '7', 'Rupiah Jatuh ke Rp 18.200 dan IHSG Ambles 4,3 Persen', 'JAKARTA, KOMPAS.com - Di tengah narasi pemerintah soal fundamental ekonomi Indonesia masih solid, pasar menunjukkan sinyal berbeda. Nilai tukar rupiah terperosok hingga Rp 18.200 per dollar AS, sementara IHSG ambruk lebih dari 4 persen. Kondisi itu memunculkan pertanyaan: jika ekonomi masih kuat, mengapa aset-aset Indonesia justru terus ditinggalkan pasar? Pelemahan rupiah dan kejatuhan pasar saham terjadi secara bersamaan ketika investor global meningkatkan kewaspadaan terhadap prospek ekonomi Indonesia. Baca juga: IHSG Terkoreksi 253,056 Poin Jelang Penutupan Sesi 1, Imbas Rupiah Anjlok? Untuk diketahui, nilai tukar rupiah di pasar spot terus tertekan pada perdagangan Senin (8/6/2026). Hingga pukul 13.48 WIB, mata uang Rupiah terdepresiasi 165 poin atau 0,91 persen ke level Rp 18.201 per dollar AS. Kurs rupiah memang melemah sejak pembukaan perdagangan hari ini, sebelumnya makin terperosok lebih dalam, kurs rupiah sempat bertengger di posisi Rp 18.170 per dollar AS atau terkoreksi 134 poin, setara 0,75 persen.\r\n\r\nSumber: https://money.kompas.com/read/2026/06/08/153929926/rupiah-jatuh-ke-rp-18200-dan-ihsg-ambles-43-persen-ada-apa-dengan-pasar?page=all.\r\n\r\n\r\nMembership: https://kmp.im/plus6\r\nDownload aplikasi: https://kmp.im/app6', '6a28215a89ff5.png', 'Selasa, 9 Juni 2026 | 21:21');
INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`) VALUES ('6', '9', '3', 'Pelaku Curanmor di Mura Kecelakaan Berujung Dimassa Warga, 2 Buron  Baca artikel detiksumbagsel, \"Pelaku Curanmor di Mura Kecelakaan Berujung Dimassa Warga, 2 Buron\"', 'Pelaku pencurian sepeda motor (curanmor) di Musi Rawas, Sumatera Selatan, bernama Ucok Febri (26) dimassa warga. Saat berusaha kabur, kendaraannya kecelakaan. Saat ini polisi memburu dua rekan tersangka berinisial B dan U yang buron.\r\nKejadian tersebut terjadi di Desa Megang Sakti IV, Kecamatan Megang Sakti, Musi Rawas, Sumatera Selatan, pada Senin (8/6/2026) sekitar pukul 19.30 WIB. Korbannya adalah seorang warga bernama Lilis.\r\n\r\nKanit Reskrim Polsek Megang Sakti Ipda Novra Robialda mengatakan awalnya ketiga pelaku tersebut berada di SP3 Tran Subur, Desa Marga Baru, Kecamatan Muara Lakitan, Mura, hendak pulang ke Desa Tran Bukit Batu, Kecamatan Padang Ulak Tanding, Rejang Lebong menggunakan motor Suzuki Satria FU 150 tanpa nomor polisi.\r\n\"Setibanya di Desa Jajaran Baru I, Kecamatan Megang Sakti, Mura, tepatnya di rumah korban, ketiga pelaku melihat motor Honda BeAT warna hitam terparkir di teras rumah dengan kunci kontak masih berada di kontak motor. Akhirnya pelaku, Ucok Febri turun dan mengambil motor tersebut dan membawanya ke arah Megang Sakti, sedangkan dua rekannya mengikuti di belakang,\" katanya, Selasa (9/6/2026).', '6a28224121a84.jpeg', 'Selasa, 9 Juni 2026 | 21:25');
INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`) VALUES ('7', '9', '8', 'Telkom Rilis AIcosystem, Siap Garap Peluang AI di Berbagai Industri  Baca artikel CNN Indonesia \"Telkom Rilis AIcosystem, Siap Garap Peluang AI di Berbagai Industri\"', 'PT Telkom Indonesia (Persero) Tbk (Telkom) meluncurkan AIcosystem, yakni ekosistem artificial intelligence (AI) terpadu yang menyatukan kapabilitas AI di lingkungan TelkomGroup untuk mendukung pemanfaatan AI di berbagai sektor, serta menghadirkan solusi yang relevan bagi kebutuhan industri dan masyarakat pada Kamis (4/6).\r\nBertajuk \"Beyond Innovation, Impact for the Nation\", peluncuran AIcosystem diresmikan oleh Direktur Utama Telkom Dian Siswarini, Direktur IT Digital Telkom Faizal Rochmad Djoemadi, serta Utusan Khusus Presiden Bidang Pembinaan Generasi Muda dan Pekerja Seni (UKP Muda Seni) Raffi Ahmad di Jakarta.\r\n\r\nSeiring transformasi digital yang terus dijalankan TelkomGroup, kehadiran AIcosystem menegaskan posisi Telkom sebagai Indonesia\'s End-to-End AI Ecosystem Enabler melalui pengembangan kapabilitas AI yang menyeluruh, mulai dari infrastruktur, platform, hingga solusi dan aplikasi.\r\n\r\nDirektur Utama Telkom, Dian Siswarini menegaskan bahwa AIcosystem merupakan wujud komitmen Telkom dalam menghadirkan AI sebagai fondasi transformasi digital yang memiliki nilai nyata bagi Indonesia. AIcosystem juga menjadikan TelkomGroup sebagai kolaborator dan jembatan dalam mengoptimalkan pemanfaatan AI pada aktivitas bisnis maupun keseharian masyarakat.\r\n\r\n\"AI bukan hanya perkembangan teknologi masa kini, melainkan fondasi baru transformasi digital yang perlu dibangun secara kolaboratif dan berkelanjutan. Dengan AIcosystem, kami menyatukan seluruh kekuatan AI TelkomGroup agar Indonesia memiliki ekosistem AI yang solid, terintegrasi, dan mampu menciptakan dampak nyata bagi masyarakat, dunia usaha, dan daya saing bangsa,\" ujar Dian.', '6a2822f02941c.jpeg', 'Selasa, 9 Juni 2026 | 21:28');
INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`) VALUES ('8', '9', '6', 'Dipanggil Prabowo ke Istana, Chatib Basri bantah ditawari jadi Menkeu', 'Jakarta (ANTARA) - Ekonom Chatib Basri membantah dirinya ditawari posisi Menteri Keuangan oleh Presiden Prabowo Subianto saat bertemu Kepala Negara di Istana Kepresidenan, Jakarta, Selasa sore.\r\n\r\nUsai pertemuan tersebut, Chatib menjelaskan bahwa pembahasan yang dilakukan bersama Presiden Prabowo berkaitan dengan kondisi dan perkembangan ekonomi.\r\n\r\n\"Nggak ada (tawaran jadi Menteri Keuangan). Ini kita bahas soal ekonomi kok,\" ujar Chatib menjawab pertanyaan awak media.\r\n\r\nChatib juga membantah dirinya berada dalam forum yang sama dengan Menteri Kesehatan Budi Gunadi Sadikin saat bertemu Presiden.\r\n\r\nChatib menegaskan bahwa dirinya bertemu Presiden Prabowo bersama dengan jajaran Dewan Ekonomi Nasional (DEN), termasuk Ketua DEN Luhut Binsar Pandjaitan.\r\n\r\n\r\n\"Pak Menkes? Oh nggak ada. Saya sama DEN saja,\" katanya.\r\n\r\nChatib Basri, yang pernah menjabat sebagai Menteri Keuangan era Presiden ke-6 RI Susilo Bambang Yudhoyono, santer diisukan menjadi Menteri Keuangan yang baru menggantikan posisi Purbaya Yudhi Sadewa.\r\n\r\nSelain Chatib, muncul pula nama Menkes Budi Gunadi Sadikin yang santer diisukan akan digeser posisinya menjadi Menkeu.\r\n\r\nSebelumnya, Presiden Prabowo memanggil sejumlah tokoh ke Istana Kepresidenan, Jakarta, Selasa sore, termasuk Chatib Basri dan Budi Gunadi Sadikin di tengah maraknya isu perombakan Kabinet Merah Putih, khususnya mengenai posisi menteri keuangan yang saat ini diisi Purbaya Yudhi Sadewa.\r\n\r\nSebelumnya, Purbaya Yudhi Sadewa menyatakan tetap melanjutkan jabatannya sebagai bendahara negara sebagaimana arahan Presiden Prabowo Subianto.\r\n\r\n\"Kami ikut perintah Bapak Presiden. Jadi, komitmennya kuat, maju terus. Mundur juga maju kita,\" kelakar Purbaya dalam konferensi pers APBN KiTa Edisi Juni 2026 di Jakarta, Jumat (5/6).\r\n\r\nPurbaya mempertanyakan asal muasal rumor yang menyebutkan pengunduran dirinya dari kursi Menteri Keuangan.\r\n\r\nIa berasumsi isu tersebut disebarkan untuk memengaruhi sentimen pasar. Namun, ia menegaskan masih menjalankan tugas dan tanggung jawab otoritas fiskal seperti biasa.\r\n\r\nMenteri Sekretaris Negara Prasetyo Hadi juga menegaskan tidak ada rencana pergantian Menteri Keuangan di tengah isu yang beredar mengenai kemungkinan pengunduran diri Purbaya Yudhi Sadewa.\r\n\r\nPrasetyo mengatakan pemerintah saat ini justru fokus memperkuat koordinasi antarotoritas ekonomi untuk menjaga stabilitas dan mendukung pertumbuhan nasional.', '6a2823a8c769c.jpeg', 'Selasa, 9 Juni 2026 | 21:31');

-- --------------------------------------------------------
-- Table structure for `cache`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for `cache_locks`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for `failed_jobs`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for `job_batches`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for `jobs`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for `kategori_artikel`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `kategori_artikel`;
CREATE TABLE `kategori_artikel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_nama_kategori` (`nama_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `kategori_artikel`

INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES ('3', 'kecelakaan', 'Kategori ini memuat laporan terkini mengenai berbagai insiden tidak terduga, bencana alam, kecelakaan lalu lintas, serta kejadian darurat lainnya yang terjadi di tengah masyarakat. Fokus utama dari pemberitaan ini adalah memberikan informasi yang cepat, akurat, dan faktual mengenai kronologi kejadian, jumlah korban, serta situasi di lokasi tempat kejadian perkara (TKP). Informasi ini sangat penting bagi publik, terutama untuk meningkatkan kewaspadaan atau menghindari jalur-jalur transportasi tertentu yang sedang terdampak.\r\n\r\nSelain menyajikan fakta di lapangan, kategori ini juga menyoroti proses evakuasi yang dilakukan oleh tim penyelamat seperti Basarnas, pemadam kebakaran, dan pihak kepolisian. Di paragraf-paragraf lanjutannya, berita kecelakaan sering kali mengulas tentang hasil investigasi penyebab utama peristiwa tersebut, apakah karena faktor kelalaian manusia (human error), kelayakan armada, atau faktor alam. Melalui ulasan ini, masyarakat dan pihak berwenang dapat mengambil pelajaran agar insiden serupa tidak terulang kembali di masa depan.');
INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES ('5', 'korupsi', 'Kategori ini secara khusus mengulas penegakan hukum, investigasi kasus penyelewengan uang negara, serta upaya pemberantasan korupsi yang dilakukan oleh lembaga yudisial. Pembahasan di dalamnya mencakup seluruh proses hukum, mulai dari operasi tangkap tangan (OTT), penetapan status tersangka, jalannya persidangan di pengadilan tindak pidana korupsi, hingga pembacaan vonis hukuman. Berita di kategori ini menjadi salah satu pilar penting dalam mengawal transparansi dan akuntabilitas penggunaan anggaran publik.\r\n\r\nLebih jauh lagi, kategori ini tidak hanya fokus pada figur yang terlibat, melainkan juga menganalisis dampak sistemik korupsi terhadap kerugian negara dan kesengsaraan masyarakat. Artikel di dalamnya sering kali membedah modus operandi pencucian uang, suap, dan nepotisme yang melibatkan oknum pejabat atau pihak swasta. Dengan menyajikan informasi yang tajam dan objektif, kategori ini berperan dalam memberikan efek jera secara sosial serta mengedukasi masyarakat mengenai pentingnya budaya integritas.');
INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES ('6', 'Politik', 'Kategori ini menyajikan informasi mendalam mengenai dinamika kekuasaan, kebijakan publik, serta jalannya roda pemerintahan baik di tingkat nasional maupun internasional. Pembahasan di dalamnya mencakup perancangan undang-undang, aktivitas partai politik, pemilu, hingga hubungan diplomatik antarnegara. Berita politik sangat krusial karena setiap keputusan yang diambil oleh para pemangku kebijakan akan berdampak langsung pada tatanan sosial dan hukum masyarakat.\r\n\r\nSelain itu, kategori ini juga berfungsi sebagai media transparansi dan pengawasan terhadap kinerja para pejabat publik. Melalui laporan investigasi, analisis kebijakan, dan liputan sidang, pembaca diajak untuk memahami latar belakang di balik sebuah keputusan politik. Fokus utamanya adalah memberikan edukasi kepada warga negara agar dapat berpikir kritis dan berpartisipasi aktif dalam kehidupan bernegara.');
INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES ('7', 'ekonomi', 'Kategori ini mengulas berbagai fenomena dan perkembangan terbaru di dunia keuangan, perdagangan, industri, dan investasi. Artikel di dalamnya mencakup pergerakan pasar saham, kebijakan moneter bank sentral, laju inflasi, hingga tren bisnis yang sedang berkembang di kalangan masyarakat. Informasi ekonomi ini dikemas sedemikian rupa agar dapat membantu pelaku usaha dan masyarakat umum dalam mengambil keputusan finansial yang tepat.\r\n\r\nDi sisi lain, kategori ini tidak hanya menyoroti aktivitas korporasi besar, melainkan juga perkembangan sektor Usaha Mikro, Kecil, dan Menengah (UMKM) serta ekonomi digital. Pembaca akan disuguhkan analisis mengenai bagaimana krisis global atau inovasi teknologi memengaruhi daya beli masyarakat dan lapangan kerja. Dengan begitu, kategori ini menjadi panduan penting dalam memahami arah dan stabilitas kesejahteraan materi sebuah negara.');
INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES ('8', 'teknologi', 'Kategori ini menceritakan perjalanan inovasi manusia melalui penemuan ilmiah terbaru, perkembangan perangkat keras dan lunak, serta evolusi dunia digital. Pembahasan utamanya berkisar pada pemanfaatan kecerdasan buatan (AI), keamanan siber, penjelajahan luar angkasa, hingga riset medis yang berpotensi mengubah masa depan. Berita di kategori ini selalu dinamis karena perkembangan teknologi terjadi hampir setiap detik.\r\n\r\nLebih dari sekadar mengenalkan produk atau gawai terbaru, kategori ini juga mengkaji dampak sosial dan etika dari adopsi teknologi tersebut dalam kehidupan sehari-hari. Pembaca akan diajak melihat bagaimana sains memberikan solusi atas krisis iklim, kesehatan, dan efisiensi kerja. Kategori ini sangat cocok bagi mereka yang ingin tetap relevan dan siap menghadapi perubahan zaman yang serba digital.');

-- --------------------------------------------------------
-- Table structure for `migrations`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `migrations`

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('1', '0001_01_01_000000_create_users_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('2', '0001_01_01_000001_create_cache_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('3', '0001_01_01_000002_create_jobs_table', '1');

-- --------------------------------------------------------
-- Table structure for `password_reset_tokens`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for `penulis`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `penulis`;
CREATE TABLE `penulis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `penulis`

INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`) VALUES ('9', 'hilmi', 'aziz', 'hilmi', '$2y$12$WNkOjRcQFmvOCHg2z4WWWudsg/6yi7bEKWU8sLTrPHEFoxREj4deu', '1781009019_raditya.jpeg');
INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`) VALUES ('10', 'najwa', 'sihab', 'najwa', '$2y$12$U5ID2VcaXC3/2jkQPMaUcuIvv0taZhqYtelWlLhEtlLyGP2qNEEJ.', '1781013342_Najwa_Shihab_11zon.jpg');
INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`) VALUES ('11', 'rosiana', 'silalahi', 'rosi', '$2y$12$P.IunS6bR5vMp.1CMujsQO9NbAs0f7ZIrK5O1Rg7pyDa0nhroo61q', '1781013378_Rosiana_Silalahi_11zon.jpg');

-- --------------------------------------------------------
-- Table structure for `sessions`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `sessions`

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('3T1RthYht8R5bpMI0BUpVbqcCPVHNvA26lCGTtre', '10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJzdDRjODY4T3VyTENVWHVUcEgwNW5nMWR5VGFQTzV3RkVoS1dJbDhpIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL2thdGVnb3JpIiwicm91dGUiOiJrYXRlZ29yaS5pbmRleCJ9LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MTAsIndha3R1X2xvZ2luIjoiU2FidHUsIDEzIEp1bmkgMjAyNiB8IDEwOjM0In0=', '1781321718');
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('9fmkPotuFnfGL0MuKstm9zyRCmsiAtIrGAtfjI4D', '9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJLUlYwalNCczBmU1YzSFpQQktMSWthVG9BeE9tdUh0VjkyaFZQNUlOIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2FwbGlrYXNpLWJsb2cudGVzdCIsInJvdXRlIjoiYmVyYW5kYSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX0sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjo5LCJ3YWt0dV9sb2dpbiI6IlNhYnR1LCAxMyBKdW5pIDIwMjYgfCAxMDoxMCJ9', '1781321176');
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('UWKU81uxO8KzZM12hHAgz0Z36CjAtuJvSFlZyBu3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJaRmZNeWRIM0lpOTVSVXlCZzY1emg0cTlMYlRyT0VsQUtOT0Vodlc5IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9sb2dpbiIsInJvdXRlIjoibG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJ1cmwiOnsiaW50ZW5kZWQiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvZGFzaGJvYXJkIn19', '1781319709');

-- --------------------------------------------------------
-- Table structure for `users`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS=1;
