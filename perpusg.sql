-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2024 pada 21.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_buku` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'In Stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `kode_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `deskripsi`, `gambar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LSK-01', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2005', 'Laskar Pelangi adalah novel pertama karya Andrea Hirata yang diterbitkan oleh Bentang Pustaka pada tahun 2005. Novel ini bercerita tentang kehidupan 10 anak dari keluarga miskin yang bersekolah (SD dan SMP) di sebuah sekolah Muhammadiyah di Belitung yang penuh dengan keterbatasan.\r\n\r\n        Mereka bersekolah dan belajar pada kelas yang sama dari kelas 1 SD sampai kelas 3 SMP, dan menyebut diri mereka sebagai Laskar Pelangi. Pada bagian-bagian akhir cerita, anggota Laskar Pelangi bertambah satu anak perempuan yang bernama Flo, seorang murid pindahan. Keterbatasan yang ada bukan membuat mereka putus asa, tetapi malah membuat mereka terpacu untuk dapat melakukan sesuatu yang lebih baik.\r\n\r\n        Laskar Pelangi merupakan buku pertama dari Tetralogi Laskar Pelangi. Buku berikutnya adalah Sang Pemimpi, Edensor dan Maryamah Karpov. Buku ini tercatat sebagai buku sastra Indonesia terlaris sepanjang sejarah.\r\n\r\n        Cerita terjadi di desa Gantung, Belitung Timur. Dimulai ketika sekolah Muhammadiyah terancam akan dibubarkan oleh Depdikbud Sumsel jikalau tidak mencapai siswa baru sejumlah 10 anak. Ketika itu baru 9 anak yang menghadiri upacara pembukaan, akan tetapi tepat ketika Pak Harfan, sang kepala sekolah, hendak berpidato menutup sekolah, Harun dan ibunya datang untuk mendaftarkan diri di sekolah kecil itu.\r\n\r\n        Dari sanalah dimulai cerita mereka. Mulai dari penempatan tempat duduk, pertemuan mereka dengan Pak Harfan, perkenalan mereka yang luar biasa di mana A Kiong yang malah cengar-cengir ketika ditanyakan namanya oleh guru mereka, Bu Mus. Kejadian bodoh yang dilakukan oleh Borek, pemilihan ketua kelas yang diprotes keras oleh Kucai, kejadian ditemukannya bakat luar biasa Mahar, pengalaman cinta pertama Ikal, sampai pertaruhan nyawa Lintang yang mengayuh sepeda 80 km pulang pergi dari rumahnya ke sekolah.\r\n\r\n        Mereka, Laskar Pelangi - nama yang diberikan Bu Muslimah akan kesenangan mereka terhadap pelangi - pun sempat mengharumkan nama sekolah dengan berbagai cara. Misalnya pembalasan dendam Mahar yang selalu dipojokkan kawan-kawannya karena kesenangannya pada okultisme yang membuahkan kemenangan manis pada karnaval 17 Agustus, dan kegeniusan luar biasa Lintang yang menantang dan mengalahkan Drs. Zulfikar, guru sekolah kaya PN yang berijazah dan terkenal, dan memenangkan lomba cerdas cermat. Laskar Pelangi mengarungi hari-hari menyenangkan, tertawa dan menangis bersama. Kisah sepuluh kawanan ini berakhir dengan kematian ayah Lintang yang memaksa Einstein cilik itu putus sekolah dengan sangat mengharukan, dan dilanjutkan dengan kejadian 12 tahun kemudian di mana Ikal yang berjuang di luar pulau Belitong kembali ke kampungnya. Kisah indah ini diringkas dengan kocak dan mengharukan oleh Andrea Hirata, kita bahkan bisa merasakan semangat masa kecil anggota sepuluh Laskar Pelangi ini.', '1719078805.jpg', 'dipinjam', '2024-06-22 06:48:00', '2024-06-22 11:29:30'),
(2, 'HJN-01', 'Hujan', 'Tere Liye', 'Gramedia Pustaka', '2016', 'Pada 2042, dunia telah memasuki era di mana peran manusia telah digantikan oleh ilmu pengeahuan dan teknologi canggih. Cerita berfokus pada karakter Lail, gadis berusia 13 tahun, yang pada hari pertamanya di sekolah harus mengalami bencana gunung meletus dan gempa dahsyat. Bencana ini mnegahancurkan kota tempat tinggalnya serta merenggut nyawa kedua orangtuanya. Beruntungnya, seorang pemuda berusia 15 tahun bernama Esok datang menolong dan menyelamtakan Lail. Tidak seperti Lail, Esok masih memilki seroang ibu. Namun, akibat bencana tersebut, kedua kakinya harsu diamputasi.\r\n        Artikel ini telah tayang di Katadata.co.id dengan judul \"Menilik Sinopsis Novel Hujan Tere Liye yang Sarat Nilai Kehidupan\" , https://katadata.co.id/agung/berita/63203415cd124/menilik-sinopsis-novel-hujan-tere-liye-yang-sarat-nilai-kehidupan\r\n        Penulis: Destiara Anggita Putri\r\n        Editor: agung', '1719078866.jpg', 'In Stock', '2024-06-22 06:48:00', '2024-06-22 10:54:26'),
(3, 'JNJ-01', 'Janji', 'Tere Liye', 'Tere Liye', '2021', 'Kisah ini tentang JANJI.\r\n\r\n        Saat seorang menunaikan janjinya dengan sungguh-sungguh. Apapun harganya, meski menyakitkan, meski penuh tantangan dan cobaan, dia tetap berusaha menunaikan janjinya.\r\n\r\n        Meski merangkak.... Meski terduduk, menangis tanpa air mata lagi....\r\n\r\n        Kisah ini tentang JANJI.\r\n\r\n        Saat seseorang akhirnya melewati semua definisi kehidupan yang fana. Berlarian memeluk janji langit. Bahwa kemuliaan tidak pernah diukur dari fisik dan materi. Bacalah....', '1719078958.png', 'In Stock', '2024-06-22 06:48:00', '2024-06-22 10:55:58'),
(4, 'AP-01', 'Algoritma dan Pemrograman', 'Lamhot Sitorus', 'Andi', '2015', 'Buku ini dirancang untuk dapat digunakan oleh mahasiswa Program Studi Ilmu Komputer, Teknik Informatika, Sistem Informasi, Manajemen Informatika, Sistem Komputer atau bahkan mahasiswa program studi lain yang mempelajari Algoritma Pemrograman. Algoritma Pemrograman merupakan mata kuliah dasar bagi seorang mahasiswa untuk memulai masuk dalam dunia pemrograman. Algoritma Pemrograman akan memberikan konsep berpikir untuk menyelesaikan suatu masalah menjadi suatu program tanpa mempermasalahkan bahasa pemrograman sebagai tools yang akan digunakan untuk mengimplementasikannya. Suatu algoritma akan dapat diimplementasikan dalam bahasa pemrograman Pascal, C/C++, Visual C, Visual Basic, Java dan lain-lain.', '1719078995.jpg', 'In Stock', '2024-06-22 06:48:00', '2024-06-22 10:56:35'),
(5, 'PBO-01', 'Pemrograman Berorientasi Objek', 'Syafei Karim', 'Tanesa', '2021', 'Pemrograman Berorientasi Objek (PBO) adalah salah satu konsep pemrograman yang harus dipahami dan dimengerti oleh seorang programmer. PBO merupakan salah satu mata kuliah yang diajarkan pada mahasiswa khususnya di bidang komputer. Buku ini menjelaskan konsep PBO den`gan menggunakan bahasa pemrograman Java. Ruang lingkup pembahasannya meliputi dasar-dasar pemrograman java dan konsep dari PBO. Pada bagian pertama penulis menjelaskan dasar-dasar pemrograman dari bahasa pemrograman java. Mulai dari menggunakan tipe data, deklarasi variabel, penggunaan statement percabangan, penggunaan iterasi, hingga pendeklarasian array. Pada bagian kedua penulis menjelaskan konsep dasar dari PBO. Konsep-konsep tersebut terdiri dari class & object, enkapsulasi, inheritance, polimorfisme, hingga penggunaan kelas abstrak dan interface (sebatik) ( tanesa )', '1719079032.jpg', 'In Stock', '2024-06-22 06:48:00', '2024-06-22 10:57:12'),
(6, 'WPHP-01', 'Buku Sakti Pemrograman Web Seri PHP', 'Mundzir MF', 'Anak Hebat Indonesia', '2018', 'Saat ini, PHP banyak dipakai untuk membuat program situs web dinamis. Contoh aplikasi program PHP adalah forum (phpBB) dan MediaWiki (software di belakang Wikipedia). Sedangkan, Mambo, Joomla!, Postnuke, Xaraya, dan lain-lain merupakan contoh aplikasi yang lebih kompleks berupa CMS dan dibangun menggunakan PHP.\r\n\r\n        PHP sebagai sekumpulan skrip atau bahasa program memiliki fungsi utama, yaitu mampu mengumpulkan dan mengevaluasi hasil survey atau bentuk apapun ke server  database dan pada tahap selanjutnya akan menciptakan efek beruntun.', '1719079134.jpg', 'In Stock', '2024-06-22 06:48:00', '2024-06-22 10:58:54'),
(7, 'CR7', 'Ronaldo', 'gilang', 'galing', '2030', 'ronaldo adalah goat', '1719078709.jpg', 'In Stock', '2024-06-22 10:51:49', '2024-06-22 10:51:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Novel', 'Kumpulan Novel', '2024-06-22 06:48:00', '2024-06-22 06:48:00'),
(2, 'Pelajaran', 'Kumpulan Buku materi pelajaran', '2024-06-22 06:48:00', '2024-06-22 06:48:00'),
(3, 'Rommance', NULL, '2024-06-22 06:48:00', '2024-06-22 06:48:00'),
(4, 'Drama', NULL, '2024-06-22 06:48:00', '2024-06-22 06:48:00'),
(5, 'Fiksi', NULL, '2024-06-22 06:48:00', '2024-06-22 06:48:00'),
(6, 'Pemprograman', NULL, '2024-06-22 06:48:00', '2024-06-22 06:48:00'),
(7, 'Science', NULL, '2024-06-22 06:48:00', '2024-06-22 06:48:00'),
(8, 'Horrorrr', NULL, '2024-06-22 06:48:00', '2024-06-22 07:31:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`id`, `buku_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 7, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_01_082706_create_kategori_table', 1),
(6, '2022_10_01_163210_create_buku_table', 1),
(7, '2022_10_18_021326_create_profile_table', 1),
(8, '2022_11_01_074316_create_kategori_buku_table', 1),
(9, '2022_11_15_000415_create_riwayat_pinjam_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npm` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `noTelp` varchar(255) NOT NULL,
  `photoProfile` varchar(255) DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `npm`, `prodi`, `alamat`, `noTelp`, `photoProfile`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'kampus', '085770222', '1719079316.png', 1, '2024-06-22 06:48:00', '2024-06-22 11:23:24'),
(5, '12522039', 'Teknik Informatika', 'Bogor', '085770263403', '1719080918.jpg', 5, '2024-06-22 11:06:02', '2024-06-22 11:29:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pinjam`
--

CREATE TABLE `riwayat_pinjam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_wajib_kembali` date NOT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat_pinjam`
--

INSERT INTO `riwayat_pinjam` (`id`, `users_id`, `buku_id`, `tanggal_pinjam`, `tanggal_wajib_kembali`, `tanggal_pengembalian`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2024-06-22', '2024-06-29', NULL, '2024-06-22 11:29:30', '2024-06-22 11:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `isAdmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$ZC8yTusH4.nsEGh6YgU.T.fWVSVvrBLjZ/zpdKMsmI7rufCMCyMBy', 1, '2024-06-22 06:47:59', '2024-06-22 11:23:24'),
(5, 'Gilang Ramdani', 'adit1@gmail.com', '$2y$10$mVUaVyhddd5SJw3gh/0E/.I0SPDKO49hUwDEVkSzO7I7zkrs/7heq', 0, '2024-06-22 11:06:02', '2024-06-22 11:29:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `buku_kode_buku_unique` (`kode_buku`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_buku_buku_id_foreign` (`buku_id`),
  ADD KEY `kategori_buku_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_npm_unique` (`npm`),
  ADD KEY `profile_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `riwayat_pinjam`
--
ALTER TABLE `riwayat_pinjam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_pinjam_users_id_foreign` (`users_id`),
  ADD KEY `riwayat_pinjam_buku_id_foreign` (`buku_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `riwayat_pinjam`
--
ALTER TABLE `riwayat_pinjam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD CONSTRAINT `kategori_buku_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategori_buku_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayat_pinjam`
--
ALTER TABLE `riwayat_pinjam`
  ADD CONSTRAINT `riwayat_pinjam_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_pinjam_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
