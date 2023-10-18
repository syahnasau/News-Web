-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Okt 2023 pada 02.14
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogteam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `categories_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `thumbnail`, `categories_id`, `user_id`, `created_at`) VALUES
(2, 'Tempat Wisata Jepang bertema Manga ', '1. Akihabara\r\nAkihabara adalah destinasi wisata popular di Tokyo yang sering dikunjungi oleh otaku lokal atau internasional. Ada banyak toko yang khusus menjual barang-barang yang berhubungan dengan anime, manga, idola Jepang, dan video game semua ada di sini. Beberapa toko populer seperti Animate, Kompleks Mandarake Toranoana, dan Akihabara Gamer juga ada di sini.\r\n\r\n2. Ikebukuro\r\nBanyak yang mengunjungi Ikebukuro dengan berbagai alasan, jika kamu ingin membeli manga atau anime coba pergilah ke Animate cabang Ikebukuro adalah salah satu toko Otaku terbesar yang memiliki 9 lantai yang menjual buku, CD, DVD, barang-barang karakter, video game. Untuk pecinta Sanrio, kunjungi Sanrio Gift Gate Ikebukuro dan yang menyediakan berbagai item Hello Kitty dan karakter Sanrio lainnya. Penggemar Pokemon bisa langsung ke Pokemon Center Mega Tokyo di Sunshine City.\r\n\r\n3. Nakano\r\nNakano memang kurang dikenal oleh  turis asing, tapi kota ini terkenal di antara otaku lokal yang mencari barang-barang vintage yang langka. Yang paling menonjol adalah Nakano Broadway, kompleks perbelanjaan besar yang berdiri sejak tahun 1966, terdiri dari sekitar 300 toko dan apartemen mewah.  ', 'image/blog1.jpg', 1, 3, '2021-11-21 06:44:12'),
(3, 'Sejarah Sepak Bola', 'Sekitar empat tahun lalu saat sepakbola Piala Eropa 96 berlangsung di Inggris, banyak orang bilang sepakbola itu berasal dari Inggris. Mungkin banyak orang percaya. Lagipula, koran-koran Eropa saat itu juga ramai dan gegap gempita menulis, “Sepakbola kembali ke tanah leluhurnya!’’Tapi konon kata filsuf atau siapalah, credo ergo sum (saya percaya maka saya ada) itu baru cespleng jika dilengkapi cogito ergo sum (saya mengerti maka saya ada) berbareng dubio ergo sum (saya meragu maka saya ada). Maka kita pun mencari berbagai sumber lain. Dan, bisa kita temukan aneka info yang berbeda.Inggris cikal bakal sepakbola? Itu betul, jika awal sejarah bola dimulai akhir abad ke-19, saat Inggris pada 8 Desember 1863 meresmikan Football Association dengan segala aturan mainnya di Freemasons Tavern, Great Queen Street, London.\r\nKenyataan, sepakbola (dan atau bola dalam pengertian luas) adalah hasil proses panjang peradaban yang bisa ditelusuri di banyak tempat di bumi sejak sebelum Masehi. Maka jika Inggris pada 1996 itu dengan bangga pasang slogan Euro 96 – Football Comes Homes – apakah bukan kebanggaan berlebihan? Sebab permainan bola itu sudah amat tua.Era Mesir purba, misalnya, sudah mengenal bola dengan kain linen. Ini masih tersimpan di museum Inggris. Berbagai relief dinding di museum menunjukkan, permainan bola juga sudah dikenal di peradaban Yunani purba disebut episcuro.\r\nPada relief itu terlukis anak muda memegang bola bundar dan memainkannya dengan paha. Sekitar abad kedua, episcuro hijrah ke Roma dan peradaban Romawi menyebutnya harpastum.Konon Julius Caesar suka permainan itu. Tapi Horatius dan Virgilius meremehkannya. Ovidius menyebut permainan itu brutal kasar mendekati biadab, maka tak cocok buat perempuan.Sampai abad ke-9 para intelektual era Yunani-Romawi tak sudi menyebut-nyebut permainan bola. Dianggap tidak bermutu.\r\nTapi politik kolonial Romawi dalam rangka meluaskan kekuasaannya membawa serta permainan itu, sebagai “barang’’ sampingan, ke Eropa luar daratan alias Inggris. Jadi, bahkan hanya dalam bingkai Eropa dan sekitarnya, bola itu ternyata budaya impor bagi Inggris. Sifat impora itu makin menonjol jika kita telusuri keberadaan bola di belahan bumi yang lain.Di luar Eropa, sebelum Masehi di peradaban Aztek, Amerika Latin sudah mengenal bola. Di Tiongkok permainan bola sudah dikenal sejak 206 SM, disebut Tsu Chu, dan tersimpan di dokumen militer setebal 25 bab, pada zaman Dinasti Han. Tsu berarti “menghantam bola dengan kaki’’. Chu berarti “bola yang dibuat dari kulit dan diisi’’. Juga diinformasikan, pada 50 SM sudah ada tim bola Tiongkok yang berlatih di Jepang. Permainan itu penuh variasi permainan kaki, semacam sepakbola. Yang jelas, pada abad ke-5 di Tiongkok dipastikan sudah terdapat permainan bola bundar diisi rambut. Informasi sejarah bola dari Tiongkok itu bisa ditelusuri dari tulisan Li Ju, yang tersimpan di Museum Muenchen, Jerman.Di Jepang, permainan bola sudah dikenal sejak abad ke-8. Itu disebut Kemari; konon masih eksis sampai sekarang. Bola itu bundar berisi udara, dibuat dari kulit kijang. Kemari itu bersangkut-paut dengan iman dan adat. Pemainnya delapan orang, berpakaian adat, bola tak boleh jatuh ke tanah. Bola dianggap matahari. Jika ia jatuh, akan terjadi bencana kegelapan – gelap dalam arti luas.Dalam pada itu, di Eropa daratan sendiri, bola baru dikenal pada abad ke-13, pada 1254, di Florence. Ia dianggap cikal bakal sepakbola modern. Sebab permainan itu, disebut calcio, sudah mengenal dua gawang dan jumlah pemain lima orang. Dalam perkembangan kemudian, jumlah pemain meningkat jadi 11 orang. Saat itu sudah dikenal strategi permainan 1-2-3-5 yang mengambil alih strategi bertahan kavaleri. Itulah yang selanjutnya menjadi sistem sepakbola “konvensional’’.Permainan bola pada abad ke-13 dari Florence itu menjalar ke berbagai negara Eropa lain. Salah satunya Inggris. Khalayak antusias. Tapi sisi lain antusiasme adalah kerusuhan. Akibatnya, Raja Edward II pada 1314 melarang calcio tersebut.\r\nOleh sang raja, calcio disebut football alias bola sepak atau sepakbola. Siapa masih main bola dengan kaki, demikian sabda sang paduka, akan dipenjarakan. Larangan itu membuat sibuk para ahli pikir. Ditafsirkan, kaki itu di tempat rendah, pantas jika dilarang. Jadi yang rendah itu harus ditinggikan. Maka uthak-athuk pikir itu lalu melahirkan permainan bola sundul, dengan kepala. Ini juga bikin heboh. Paling seru terjadi pada 1321. Akibatnya, ia juga dilarang! Sepak bola sudah dimainkan di Olimpiade sejak tahun 1900. (kecuali pada Olimpiade tahun 1932 di Los Angeles). Awalnya ini hanya untuk pemain-pemain amatir saja, namun sejak Olimpiade Los Angeles 1984 pemain profesional juga mulai ikut bermain , disertai peraturan yang mencegah negara-negara daripada memainkan tim terkuat mereka. Pada saat ini, turnamen Olimpiade untuk pria merupakan turnamen U-23 yang boleh ditamnbahi beberapa pemain di atas umur. Akibatnya, turnamen ini tidak mempunyai kepentingan internasional dan prestise yang sama dengan Piala Dunia, atau bahkan dengan Euro, Copa America atau Piala Afrika.\r\nSebaliknya, turnamen Olimpiade untuk wanita membawa prestise yang hampir sama seperti Piala Dunia Wanita FIFA; turnamen tersebut dimainkan oleh tim-tim internasional yang lengkap tanpa batasan umur.\r\n', 'image/blog4.jpg', 3, 1, '2021-11-21 06:44:12'),
(4, 'Bahasa Pemrograman Paling Populer', 'Seiring dengan perkembangan teknologi yang melesat dengan cepat, dibarengi dengan berkembangnya  bahasa pemrograman, untuk membuat produk teknologi tersebut. Saat ini, banyak sekali jenis Bahasa Pemrograman yang sedang populer saat ini. Terutama untuk kamu yang berencana atau sedang bekerja sebagai orang IT di perusahaan.\r\n\r\n1. Python\r\nPython merupakan bahasa pemrograman yang juga umum dipakai dalam mengembagkan website atau dijadikan pendukung dalam mengembangkan software. Bahasa pemrograman yang satu ini sebenarnya digunakan secara luas bagi komputasi saintifik, data mining, dan juga machine learning.\r\n\r\nKini kebutuhan pasar bisnis akan developer yang berfokus pada machine learning menjadikan Python sebagai bahasa pemrograman paling populer. Beberapa website atau aplikasi terkenal yang sudah menggunakan Python misalnya Instagram, Facebook, YouTube, Pinterest, bahkan Google.\r\n\r\n2. Java\r\nBahasa pemrograman paling populer selanjutnya adalah Java yang telah berusia lebih dari 20 tahun. Bahasa pemrograman ini sudah dipakai oleh lebih dari 10 juta developer dan juga diaplikasikan di lebih dari 15 miliar perangkat di dunia. Java memiliki mesin virtual (Java Virtual Machine) sehingga dapat dijalankan di hardware atau sistem operasi (OS) apa pun.\r\n\r\nOleh karena itu, hampir semua aplikasi Android yang ada di pasaran memakai Java dengan Java Virtual Machine. Selain itu, ternyata 90% perusahaan besar yang terdaftar di Fortune 500 seperti Volkswagen dan Amazon juga memakai Java untuk mengembangkan versi back-end di website atau aplikasi mereka.\r\n\r\n3. Javascript\r\nMeski memiliki nama yang mirip, tapi bahasa pemrograman paling populer yang satu ini berbeda dengan bahasa pemrograman Java. JavaScript seringkali dianggap sebagai “bapak” bahasa pemrograman, karena popularitasnya di kalangan developer. Bagaimana tidak, lebih dari 95% website di seluruh dunia ditulis menggunakan JavaScript sebagai bahasa pemrograman.\r\n\r\nSelain itu, jika dari segi back-end beberapa website seperti YouTube, Google, dan Amazon menggunakan Python dan Java, mereka juga menggunakan JavaScript untuk pengembangan website front-end. Maka, tak heran jika beberapa framework JavaScript seperti React dan AngularJS juga sering digunakan karena berpotensi untuk mendukung kemajuan IoT di perangkat mobile.\r\n\r\n4. C++\r\nDibanding bahasa pemrograman C, C++ masih lebih dapat diandalkan karena fitur dan aplikasinya yang lebih banyak. Selain itu, salah satu bahasa pemrograman paling populer ini juga mudah dipelajari sehingga cocok bagi pemula. Bahasa pemrograman ini merupakan versi tingkat lanjut dari bahasa sebelumnya, yaitu B, yang dikembangkan oleh Dennis Richie dari Bell Labs.\r\n\r\nAwalnya, C++ ditujukan untuk dijalankan di OS Unix, tapi kemudian mulai dibangun efisiensi dan sistem dukungan untuk pemrograman tingkat rendah (low level coding) hingga dapat berfungsi dengan maksimal sebagai bahasa pemrograman berorientasi objek.\r\n', 'image/computer.jpg', 5, 2, '2021-11-21 06:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Wisata '),
(2, 'Otaku'),
(3, 'Olahraga'),
(4, 'Kesehatan'),
(5, 'Pemrograman'),
(6, 'Alam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Bayuaji Candra', 'bayubay', 'admin', 'bayuaji8@gmail.com'),
(2, 'Syahnas Agustina', 'syahnasau', 'admin1', 'syahnasau@g.mail.com'),
(3, 'Kirino Ishaq', 'kirinoino', 'iniadmin2', 'kirinois@gmail.com'),
(4, 'root', '', '', ''),
(5, 'root', '', '', ''),
(6, 'root', '', '', ''),
(7, 'root', '', '', ''),
(8, 'root', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
