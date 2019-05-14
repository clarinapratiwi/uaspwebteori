-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 03:29 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uasteori`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'uasteori', '7025e7cbbebaa5f9292c15523db78a0d'),
(2, 'uasteori', '7025e7cbbebaa5f9292c15523db78a0d');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(15) NOT NULL,
  `title` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `harga` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `ket`, `harga`, `foto`) VALUES
(13, 'Nature Republic Soothing & Moisture Aloe Vera 90% Toner', 'Nature Republic Soothing & Moisture Aloe Vera 90% Toner bisa kamu miliki. Produk ini berbahan daun lidah buaya organik yang bisa menenangkan kulit dan juga melembapkan. Ada kandungan aloe vera yang bisa melembutkan kulit dan menutrisinya dari dalam.Produk ini aman dan bebas paraben serta bebas pewarna buatan. ', 'Rp 130.000', 'THza9L6dvd.jpg'),
(15, 'Ginseng Royal Silk Foam Cleanser', 'Ginseng Royal Silk Foam Cleanser ini juga menjadi produk Nature Republic yang tepercaya. Pembersih wajah ini memiliki limpahan busa premium yang menyegarkan. Mampu membersihkan kotoran secara efektif, kulit jadi lebih kencang juga.\r\nHadir dengan bahan royal jelly dan asam amino sutra, produk ini bisa membuat kulit langsung lembap dan berseri. Ada bahan ekstrak ginseng merah korea yang memiliki manfaat anti penuaan.', 'Rp 317.000', 'kD0D2px2on.jpg'),
(16, 'Aloe Vera 92% Shooting Gel', 'Memiliki fungsi untuk melenyapkan jerawat dan flek hitam, produk juga bisa mengatasi mata lelah. Uniknya produk juga bisa merawat rambut rusak dan bercabang tanpa membuat rambut jadi lengket.\r\nSoothing gel ini bisa juga untuk digunakan sebagai pelembap wajah serta bagian tangan dan kaki loh. Mencegah iritasi, kandungan aloe vera di dalamnya bisa menenangkan kulit. Terasa dingin kala dioleskan pada kulit sehingga memberi rasa nyaman. ', 'Rp 65.000', '330.330_2d16ba66c9f4417cbd911afc85e8e0d6.jpg'),
(17, 'Nature Republic Snail Solution', 'Pembersih cream to foam ini cocok dipakai semua jenis kulit. Ada formula filtrat sekresi siput dan ekstrak Neophinetia Falcata Callus Culture dalam produk yang bisa menembus jauh ke dalam pori untuk membersihkan dengan maksimal.\r\nMenghapus riasan jadi lebih mudah tanpa membuat iritasi. Bisa mengangkat kotoran, produk juga memurnikan kulit. Memberikan efek kilau yang menyegarkan, sehingga kulit terasa lebih lembut dan halus.', 'Rp 150.000', 'wWGOyjgixv.png'),
(18, 'Argan Essential Deep Care Shampoo', 'Kaya akan minyak argan organik, produk ini cocok untuk rambut yang sangat rusak.Dengan bahan minyak biji camellia japonica, minyak biji rosa rubiginosa, dan minyak oenthera biennis membuat produk ini berkualitas dan memberi kenyamanan. Aromanya segar dan bikin rileks. ', 'Rp 123.000', '8sWIzTNvZg.jpg'),
(19, 'Nature Republic Soothing & Moisture Aloe Vera Cleansing Gel Cream', 'Produk ini mampu memberi sensasi segar usai digunakan. Bisa menenangkan sekaligus melembapkan kulit, tak heran jika produknya banyak dipilih.\r\nCocok untuk membersihkan make up sekaligus mengangkat debu dari wajah. Memiliki bahan seperti lidah buaya yang melembapkan serta membuat kulit lebih nyaman. Keluarkan produk lalu basahi dengan air hangat dan gosok hingga berbusa.', 'Rp 79.000', 'PQjC4vkF15.png'),
(20, 'Shea Butter Moist Steam Cream', 'Krim pelembap ini cocok dipakai sebelum beraktivitas supaya kulit lebih terlindungi. Memiliki tekstur lembut sehingga nyaman digunakan. Bagi yang memiliki kulit kering dan keriput bisa memakai produk ini karena bisa melembapkan secara alami.\r\n\r\nAda kandungan vitamin A dan E pada produknya untuk merevitalisasi kulit sekaligus membantu menyembuhkan bekas luka. Mengandung antioksidan, produk ini baik untuk kulit.', ' Rp 310.900', 'rURL6oMlxK.jpg'),
(21, 'Nature Republic Super Aqua Max Combination Watery Cream', 'Produk ini paling cocok untuk kulit kombinasi. Berupa krim, pelembab ini berbahan 30 jenis tanaman maritim murni dari air laut dalam.\r\nFungsi dari produk adalah untuk menghidrasi kulit hingga terasa segar dan alami. Dengan ekstrak air dan rumput laut Sapporo, produk bisa meremajakan zona T dan melembabkan zona U pada wajah. Mampu menyeimbangkan kadar minyak dan air kulit, krim ini formulanya cepat diserap kulit.', 'Rp 195.000', 'lj1BIDOguO.jpg'),
(22, 'Nature Republic Bamboo Charcoal Mud Pack', 'Bisa mengencangkan kulit, krim ini juga bisa mengecilkan pori. Produk bisa menghilangkan komedo dan membuat wajah lebih bersih.\r\nDikemas dalam ukuran 150ml, produk cocok untuk kulit berminyak. Dengan kandungan Damyang Bamboo Charcoal, produk akan membuat kulit lebih kenyal dan lebih cerah.', 'Rp 110.000', 'nature-republic_nature-republic-bamboo-charcoal-nose---t-zone-pack_full02.jpg'),
(23, 'Nature Republic Soothing & Moisture Aloe Vera 92% Soothing Gel Mist', 'Produk ini mengandung 92% aloe vera leaf extractyang yang diklaim dapat melembapkan dan melindungi kulit akan dampak lingkungan yang berbahaya. Aloe vera yang digunakan untuk produk ini pun tidak sembarangan, lho. Nature Republic hanya menggunakan aloe vera organik yang bersertifikat CCOF California. Selain pada wajah, Nature Republic Soothing & Moisture Aloe Vera 92% Soothing Gel Mist juga dapat digunakan pada lengan dan kaki.', 'Rp 118.000', '433814158f9c8aa333a4d1e2ec181289.jpg'),
(24, 'Innisfree The Green Tea Seed Serum', 'Mengandung nutrisi yang berasal langsung dari perasan daun dan biji teh hijau dari Jeju, serum ini terbukti mampu menjaga kelembapan wajah. Cocok untuk kamu yang sering berada di ruangan ber-AC sehingga tidak perlu khawatir kulit jadi terasa kering.\r\nSerum ini juga memberikan perlindungan berlebih yang mendalam, karena akan membentuk lapisan ganda yang bertujuan untuk menjaga dan melindungi kadar kelembapan kulit agar lebih tahan lama.', 'Rp 330.000', '10001_l.jpg.webp'),
(25, 'Green Tea Seed Deep Cream', 'Krim ini kaya akan biji teh hijau yang mampu menghidrasi dan menutrisi kulit, sehingga wajah tampak lebih muda dan segar.\r\nSelain itu, krim ini mengandung Dual Moisture-Rising Technology yang mengolah minyak dari daun dan biji teh hijau sehingga akan membentuk lapisan yang kuat di kulit. Sehingga, kamu tidak perlu khawatir kulit akan rusak akibat serangan cuaca, termasuk dingin yang mengancam kulit jadi kering.', 'Rp 280.000', 'green_tea_deep_cream.jpg.webp'),
(26, ' Orchid Skin Toner', 'Kandungan Orchidelixir2.0 â„¢ yang terdapat di anggrek dari pulau Jeju merupakan antioksidan kuat yang dapat membantu merawat kulit. Powerful ingredient ini bekerja maksimal pada kulit kering, dan mampu menjadikannya lebih bercahaya serta kuat.\r\nProduk ini sangat baik digunakan untuk mengatasi kulit yang sudah mengalami tanda penuaan, karena mampu meningkatkan elastisitas kulit, memperbaiki kerutan, serta meratakan warna kulit sehingga tampilannya terlihat kian optimal.', 'Rp 350.000', 'Innisfree_Orchid_Skin.jpg.webp'),
(27, ' Jeju Orchid Eye Cream', 'Kandung Elixir 2.0 di dalam bunga Anggrek ini mampu membuat kulit lebih bersinar dan cerah, dan tidak lupa untuk membuat kulit jadi lebih kuat dalam melawan tanda-tanda penuaan dini.\r\nArea sekitar mata yang lebih sensitif membuatmu harus lebih berhati-hati dalam merawatnya. Dengan krim ini, kamu juga memberikan nutrisi lebih di area ini, sekaligus menghalau keriput di sekitar mata dan membuat kulit jadi lebih elastis.', 'Rp 250.000', '10568_l.jpg.webp'),
(28, 'Super Volcanic Pore Clay Mask', 'Mengandung abu vulkanik dari Pulau Jeju, maker ini mampu mengecilkan pori-pori dan mengontrol produksi sebum, sehingga wajah jadi lebih cerah dan bebas jerawat. Juga bisa mengangkat sel kulit mati dan membersihkan wajah secara menyeluruh.\r\nSelain itu, masker ini juga kaya akan bahan aktif AHA yang bisa membuat kulit wajah jadi lebih lembut dan kenyal. Plus, ada efek dingin yang akan membuatmu merasa lebih fresh sepanjang hari.', 'Rp 155.000', '10046_l.jpg.webp'),
(29, ' Jeju Volcanic Pore Toner', 'Masih satu rangkaian dengan masker dan cleansing foam di atas, toner ini juga mengandung abu vulkanik Pulau Jeju. Kelebihan utamanya, toner ini kaya akan kandungan mineral yang mampu membersihkan wajah secara menyeluruh dan lebih dalam, sehingga semua kotoran dan sisa makeup akan terangkat sempurna.\r\nToner ini juga dilengkapi dengan Sebum Control Technology yang mengangkat sebum dan mengeluarkan kotoran dari dari dalam pori-pori, sehingga membuat wajah jadi lebih halus.', 'Rp 305.000', '10044_l.jpg.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
