-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2020 at 04:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webtreeshow`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsanpham`
--

CREATE TABLE IF NOT EXISTS `danhmucsanpham` (
`id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) DEFAULT NULL,
  `danhmucduongdan` varchar(100) DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT '1',
  `thoigiantao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `capnhapluc` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`id`, `tendanhmuc`, `danhmucduongdan`, `trangthai`, `thoigiantao`, `capnhapluc`) VALUES
(1, 'Cây thủy sinh', 'cay-thuy-sinh', 1, '2019-10-26 04:03:35', '2019-11-25 07:13:24'),
(2, 'Cây cảnh để bàn', 'cay-canh-de-ban', 1, '2019-10-26 04:03:39', '2019-11-25 07:13:25'),
(3, 'Cây bonsai', 'cay-bonsai', 1, '2019-10-26 04:03:50', '2019-11-25 07:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
`id` int(11) NOT NULL,
  `tensanpham` varchar(200) DEFAULT NULL,
  `sanphamduongdan` varchar(200) DEFAULT NULL,
  `dacdiem` text NOT NULL,
  `ynghiaphongthuy` text NOT NULL,
  `phanbo` varchar(100) DEFAULT NULL,
  `anhsanpham` varchar(100) DEFAULT NULL,
  `danhmuc_id` int(11) DEFAULT NULL,
  `mota` text,
  `hothucvat` varchar(200) DEFAULT NULL,
  `chieucao` varchar(150) DEFAULT NULL,
  `chamsoc` text,
  `thoigiantao` timestamp NULL DEFAULT NULL,
  `capnhapluc` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `sanphamduongdan`, `dacdiem`, `ynghiaphongthuy`, `phanbo`, `anhsanpham`, `danhmuc_id`, `mota`, `hothucvat`, `chieucao`, `chamsoc`, `thoigiantao`, `capnhapluc`) VALUES
(1, 'Cây Thiết Mộc Lan', 'cay-thiet-moc-lan', '<p> </p>\r\n\r\n<ul>\r\n	<li>Cây thiết mộc lan có lá mọc xanh quanh phần thân, lá dài và gần giống như lá cây ngô.</li>\r\n	<li>Cây có sức sống mãnh liệt, chỉ cần một cảnh nhỏ đâm xuống đất cũng có thể phát triển thành một cây lớn khỏe mạnh.</li>\r\n	<li>Cây có thể trồng ở ngoài trời, trong chậu, thậm chí là ở trong môi trường nước…</li>\r\n</ul>\r\n', '<p style="text-align:center"><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSidke0Aire1tXj_hoTiXILGl7oiJXi9wLfMDxm1pNfeqNbIIHg&amp;s" style="height:225px; width:225px" /></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;">Nếu cây được đặt theo hướng Đông hoặc Đông Nam của ngôi nhà, cây sẽ đại diện cho hành Mộc trong ngũ hành, mang lại nhiều may mắn cho gia chủ. </li>\r\n	<li style="text-align: justify;">Mua cây thiết mộc lan người ta thường tính theo số cành/chậu. Bởi mỗi con số lại mang một ý nghĩa khác nhau, ví dụ: 2 cành tượng trưng cho sự may mắn vê tình yêu đôi lức, 3 cành tượng trưng cho hạnh phúc, 5 cành tượng trưng cho sức khỏe, 8 cành tượng trưng cho sự phát tài phát lộc, 9 cành mang lại hạnh phúc viên mãn, tài lộc thời vận tốt cho gia chủ…</li>\r\n	<li style="text-align: justify;">Cây thiết mộc lan mang lại nhiều tài lộc cho gia chủ, nhất là khi cây nở hoa. Khi cây nở hoa chính là lúc báo hiệu niềm vui về tiền tài.</li>\r\n	<li style="text-align: justify;">Thiết mộc lan là cây có tác dụng thanh lọc không khí rất tốt, giúp lọc bỏ những độc tố gây ô nhiễm không khí, đem đến cho chủ nhân cảm giác thoải mái, dễ chịu, tinh thần lạc quan.</li>\r\n	<li style="text-align: justify;">Hút các chất benzene, toluene, formallhelyde rất tốt cho sức khỏe của thành viên sống trong căn phòng.</li>\r\n	<li style="text-align: justify;">Là cây thân gỗ khỏe, ưa bóng râm nên thích hợp trồng cây nội thất, cây cảnh văn phòng, thường trưng trong phòng sếp, phòng họp, hành lang, đại sảnh lớn… ở các văn phòng, cao ốc, khách sạn, nhà hàng… Những cây nhỏ, gốc đẹp để trồng vào chậu xinh xắn hoặc bình thủy tinh đẹp làm cây để bàn văn phòng, bàn ăn, phòng khách…</li>\r\n</ul>\r\n', 'Đà Lạt', 'cay-thiet-moc-lan-de-ban-phong-thuy.jpg', 2, '<ul>\r\n	<li style="text-align: justify;"><strong>Tên thường gọi:</strong> Thiết mộc lan, Phất dụ thơm.</li>\r\n	<li style="text-align: justify;"><strong>Tên khoa học:</strong> Dracaena Fragrans, có có nguồn gốc từ bản địa của Tây Phi.</li>\r\n	<li style="text-align: justify;"><strong>Họ:</strong> Huyết dụ</li>\r\n	<li style="text-align: justify;">Lá thuôn dài, có hai loại màu xanh hoặc trên phiến lá có hai màu xanh và kẻ sọc vàng.</li>\r\n	<li style="text-align: justify;">Ngoài chia theo màu sắc lá, thiết mộc lan còn được phân chia theo cách ghép thân: Thiết Mộc Lan gốc trông bề thế giàu sức sống: gồm 1 thân gốc lớn, nhiều nhánh, đẹp tự nhiên, mỗi nhánh có 3-5 lộc nảy chồi; Thiết Mộc Lan khúc là loại thiết mộc lan được cưa thành đoạn, rồi trồng xuống đất, phía gốc mọc rễ, trên đỉnh mọc mầm.</li>\r\n</ul>\r\n\r\n<p style="text-align:center"> </p>\r\n', 'Họ Huyết dụ', '20 - 70 cm', '<ul>\r\n	<li style="text-align: justify;">Ánh sáng: nên trưng cây phát tài ở gần cửa kính,cửa sổ, sảnh lớn hay hành lang để có ánh sáng khuếch tán vừa đủ.</li>\r\n	<li style="text-align: justify;">Nước: thiết mộc lan là loài cây thân gỗ nên nhu cầu nước tưới trung bình, lại để trong nhà nên chỉ cần tưới vừa phải cho cây. Hàng tuần tùy điều kiện thời tiết, bạn tưới 2-3 lần đều quanh gốc với lượng nước từ 0,5-1 lít tùy kích thước chậu. Khi thấy mặt chậu se khô hãy tưới.</li>\r\n	<li style="text-align: justify;">Phân bón: Hàng tháng bạn nên bón phân nhả chậu để kích thích rễ phát triển, mỗi chậu chọc khoảng 10-15 lỗ tùy kích thước chậu. Mỗi lỗ từ 5-7 hạt , giữa gốc và thành chậu. Độ sâu mỗi lỗ khoảng 1cm, sau đó lấp đất lên để phân không bị bốc hơi rồi tưới nước bình thường.</li>\r\n</ul>\r\n', NULL, '2019-12-31 02:46:53'),
(2, 'Cây Kim Ngân ', 'cay-kim-ngan', '<ul>\r\n	<li>Cây Kim Ngân là cây nhiệt đới, trong tự nhiên có thể cao hơn 6 mét, thân dẻo dai, bền chắc.</li>\r\n	<li>Cây có lá xoè ra như bàn tay, mỗi cuống lá có từ 7-9 lá, khác với Kim Ngân để bàn, chỉ có 5 lá - tượng trưng cho Ngũ hành.</li>\r\n	<li>Cây có thể nở hoa, hoa nở từ khoảng tháng 4 đến tháng 11. Hoa gồm những cánh lớn màu kem nhạt, nở về đêm và có hương thoảng nhe, đài hoa màu nâu nhạt hình bầu dục với 5 cánh màu xanh vàng, dài 15cm.</li>\r\n	<li>Cây có quả, quả Kim Ngân hình trứng, đường kính khoảng 10cm. Khi chín quả có màu nâu nhạt. </li>\r\n	<li>Cây Kim Ngân còn được gọi là cây thắt bím hay bím tóc vì ở giai đoạn cây con, người ta trồng chung từ 3 – 5 cây vào một chỗ rồi đan thắt như một cái bím tóc trông rất ngộ nghĩnh.</li>\r\n</ul>\r\n', '<h2><strong>Ý nghĩa phong thuỷ</strong></h2>\r\n\r\n<ul>\r\n	<li>Kim Ngân có nghĩa là Tiền vàng, nói lên rằng cây giúp mang tài lộc, vận may đến cho người trồng</li>\r\n	<li>Tạo năng lượng tích cực ở nơi trưng bày, thu hút vượng khí</li>\r\n	<li>Hợp với các mệnh Mộc và Hỏa.</li>\r\n	<li>Cây hợp với các tuổi: Tý, Thân và Tuất</li>\r\n	<li>Nên đặt cây ở hướng Đông Nam, là hướng tốt để phát huy tối đa giá trị phong thuỷ của cây.</li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li>Một chậu kim ngân nhỏ xinh có thể để trên bàn làm việc, quầy thu ngân, hoặc gắn lên đó chiếc nơ trang trí, sẽ trở thành món quà sinh nhật để tặng cho người thân.</li>\r\n	<li>Làm cây cảnh trang trí với các loại chính: bím tóc (3 thân hoặc 5 thân), kim ngân củ (1, 3, 5 thân riêng biệt trong một chậu) và cây trong chậu thủy sinh / bán thuỷ sinh.</li>\r\n</ul>\r\n', ' miền Bắc Việt Nam', 'cay-kim-ngan-de-ban-1.jpg', 2, '<ul>\r\n	<li style="text-align:start"><strong>Tên khác: </strong>Cây Thắt Bím, Cây Bím Tóc</li>\r\n	<li style="text-align:start"><strong>Tên khoa học:</strong> Pachira Aquatica</li>\r\n	<li style="text-align:start"><strong>Tên tiếng Anh: </strong>Money Tree, Money Plant, Malabar chestnut, Provision tree, Saba nut.</li>\r\n	<li><strong>Họ:</strong> <span style="font-size:14px"><span style="color:#333333"><span style="font-family:"Open Sans",sans-serif"><span style="background-color:#ffffff">Cẩm quỳ (Malvaceae)</span></span></span></span></li>\r\n	<li style="text-align:start"><strong>Xuất xứ:</strong> Mexico, vùng đầm lầy Trung và Nam Mỹ</li>\r\n</ul>\r\n\r\n<p style="text-align:center"><img alt="kim-ngan-trung-bay.jpg" src="https://vuoncayviet.com/data/items/890/kim-ngan-trung-bay.jpg" style="height:150px; width:200px" /></p>\r\n', 'Họ Cẩm Quỳ', '20 -30 cm', '<ul>\r\n	<li>Nhiệt độ: Kim Ngân sống khoẻ ở nhiệt độ từ 4-40 độ C nhưng phát triển tốt nhất từ 18-26 độ C. Nếu được trồng trong nhà hoặc trong phòng có máy lạnh cây vẫn sinh trưởng bình thường. </li>\r\n	<li>Ánh sáng: Sinh trưởng và phát triển bình thường dưới ánh sáng đèn huỳnh quang, đèn led, nhưng nên đưa cây ra ngoài trời thường xuyên để hấp thụ nhiều được ánh sáng và xanh tươi hơn.</li>\r\n	<li>Nước: Cây không cần quá nhiều nước, nhưng thời tiết khô thì nên tưới thường xuyên hơn bình thường, nếu cây đặt trong văn phòng thì lượng nước tưới ít hơn cây ngoài trời. </li>\r\n	<li>Phân bón: Cây cần nhiều dinh dưỡng, nhất là cây trồng chậu. Có thể dùng phân NPK 20-20-15 tưới lên gốc cây.</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:29:08'),
(3, 'Cây Hoa Tử Đằng', 'cay-hoa-tu-dang', '<p>Lá cây tử đằng mọc đối xứng, dài từ 15cm đếm 35cm, mọc hình lông chim với 9 đến 19 lá.</p>\r\n\r\n<p>- Hoa mọc thành chùm trong cành rủ xuống dài từ 10cm đếm 80cm, có màu tím, hồng hoặc trắng. Hoa tử đằng có mùi thơm.Là cây họ đậu thân leo lâu năm, thân cây màu nâu, không nứt. Hoa màu tím nhạt hoặc tím đậm rất đẹp.</p>\r\n\r\n<p>-Không kén đất, phát triển tốt ngay trên đất cằn cõi, ưa nắng.</p>\r\n\r\n<ul>\r\n	<li>Hạt được tạo thành dây</li>\r\n</ul>\r\n\r\n<p>- Rễ cọc sâu, rễ phụ ít đâm sâu, sinh trưởng rất nhanh, tuổi thọ lâu dài, có thể leo bám.</p>\r\n\r\n<ul>\r\n	<li>Những bông hoa có mùi thơm ngọt mọc thành chùm trong cành rủ xuống dài từ 10cm đếm 80cm có màu tím, hồng hoặc trắng.</li>\r\n</ul>\r\n', '<h2><strong>Ý nghĩa phong thủy</strong></h2>\r\n\r\n<p>Ngoài biểu tượng cho tình yêu, hoa tử đằng còn là biểu tượng của may mắn và tài lộc thông qua việc trồng cây ở cổng nhà, tường ngõ, khuôn viên, ban công.. những nơi đón lộc cho chủ nhân.</p>\r\n\r\n<h2><strong>Công dụng </strong></h2>\r\n\r\n<p>tử đằng được trồng thành giàn tạo cảnh quan tuyệt đẹp, vừa che nắng nóng hiệu quả</p>\r\n', ' Trung Quốc ở các tỉnh Quảng Tây, Quý Châu, Hà Bắc, Hà Nam, Hồ Bắc, Sơn Tây, và Vân Nam.', 'cay-tu-dang-bonsai-mini.jpg', 3, '<ul>\r\n	<li><strong>Tên thường gọi:</strong> Cây hoa tử đằng</li>\r\n	<li><strong>Tên gọi khác:</strong> hoa đậu tía, đậu tím, chu đằng,đằng la, hoa Fuji</li>\r\n	<li><strong>Tên khoa học:</strong> Wisteria sinensis</li>\r\n	<li><strong>Họ:</strong> Đậu – Fabaceae</li>\r\n	<li><strong>Nguồn gốc xuất xứ:</strong> Châu Âu, Nhật Bản và Trung Quốc.</li>\r\n</ul>\r\n', 'Họ Đậu', '20 -30 m', '<ul>\r\n	<li>Cây tử đằng sinh trưởng chủ yếu ở vùng có khí hậu mát lạnh, chịu lạnh rất tốt, nhiệt độ cao cây khó phát triển. Cây không kén đất, phát triển tốt ngay trên đất cằn cõi, ưa nắng. Quan trọng là khâu ươm mầm.</li>\r\n	<li>Thời gian tốt nhất để bắt đầu gieo hạt là vào đầu tháng ba hay tháng tư, tùy thuộc vào khu vực trồng. Chuẩn bị một bình nước sạch và đổ hạt vào để ngâm trong ít nhất 24 giờ.</li>\r\n	<li>Sau khi đã ngâm ủ hạt giống, lấy chúng ra khỏi nước. Chuẩn bị chậu gieo với lớp đất bằng phằng, có độ mùn tốt. Rắc hạt giống, phủ lại một lớp đất mỏng để vào nơi có ánh nắng buổi sáng. Hàng ngày dùng bình xịt, phun sương giữ ẩm cho đất. Hạt sẽ nảy mầm trong một vài ngày hoặc vài tuần.</li>\r\n	<li>Khi các hạt giống đã nảy mầm và mọc lên, bạn có thể tách chúng trồng ra các chậu riêng. Giữ ẩm đất cho đến khi bạn đã sẵn sàng để trồng cây ra đất vườn.</li>\r\n</ul>\r\n\r\n<p>Khi các hạt giống đã nảy mầm và mọc lên, bạn có thể tách chúng trồng ra các chậu riêng. Sau 3 – 7 ngày cây con sẽ mọc lên, tốt nhất nên trồng cây Tử Đằng ra đất để cây phát triển được tốt nhất.</p>\r\n\r\n<p>Cây Tử Đằng ưa ẩm, cây non từ 1 – 25 ngày tuổi nên để nửa bóng râm nửa nắng, với cây phát triển 1 ngày cần từ 6 – 8 giờ tiếp xúc trực tiếp với ánh nắng, cần tưới nước thường xuyên cho cây vì lá cây có cấu tạo khá mỏng nên có khả năng thoát nước tốt.</p>\r\n', NULL, '2019-12-31 03:34:43'),
(4, 'Cây Phong Lá Đỏ', 'cay-phong-la-do', '<ul>\r\n	<li>Phong lá đỏ thuộc loại cây thân gỗ, cành nhánh sum xuê, sống lâu năm, chiều cao 2-10m.</li>\r\n	<li>Vỏ cây khi còn non màu xám sáng, mịn; khi cây càng lớn thì vỏ sẫm màu, có vảy và xù xì hơn.</li>\r\n	<li>Cành phong có màu tối hoặc đỏ tươi, cành rắn chắc, to.</li>\r\n	<li>Lá phong rất độc đáo, lá xẻ thành 5-9 thùy xòe ra các hướng,  còn non mặt trên có màu xanh lá cây nhạt, mặt dưới màu trắng kem, viền lá có nhiều răng cưa nhỏ, khe giữa thùy nông và sắc nét góc cạnh.</li>\r\n	<li>Khi già, lá chuyển đổi màu đỏ hoặc cam rực rỡ như những ngọn đuốc khổng lồ, sáng bừng không gian, cực kỳ đẹp mắt rồi rụng dần vào mùa đông, mùa xuân cây lại đâm chồi nẩy lộc.</li>\r\n	<li>Phong lá đỏ cũng có hoa, với những bông hoa kết thành chùm màu đỏ, hoặc đỏ cam. Khi hoa nở tạo thành những tán trông như vương miện. Quả – gọi là Phím phong, chín vào tháng 6, bên trong chứa hạt giống màu đỏ.</li>\r\n	<li>Cây phong lá đỏ vào thời khắc lá chuyển màu có sắc đỏ rực rỡ, nổi bật, thiêu đốt mọi ánh mắt, xao xuyến bao trái tim.</li>\r\n</ul>\r\n', '<h2><strong>Ý nghĩa</strong></h2>\r\n\r\n<ul>\r\n	<li>Cây phong lá đỏ thuộc loại cây bóng mát quý, với chiều cao phù hợp và tán tỏa rộng, phong làm điểm nhấn cho cảnh quan. </li>\r\n	<li>Với sắc lá và hoa đặc biệt phong thường được trồng ở sân vườn, trước cửa nhà, cổng nhà, lối ra vào, đường phố, công viên, đô thị, khu công nghiệp, quán ăn…. Đem đến không gian trong lành, che mát cả một vùng, tạo vẻ đẹp rực rỡ.</li>\r\n	<li>Cây phong lá đỏ có dáng thế , bộ rễ, thân cành, lá đẹp, dễ tạo hình nên đặc biệt được các nghệ nhân ưa chuộng trong nghệ thuật bonsai.</li>\r\n	<li>Sự độc đáo làm cây cảnh bonsai của phong lá đỏ</li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li>Phong lá đỏ còn được trồng chậu làm cây cảnh trang trí sân vườn nhà phố, quán ăn, nhà hàng, quán cà phê, cửa hiệu… tạo vẻ đẹp rất riêng.</li>\r\n	<li>Gỗ phong rất cứng, chắc với những thớ mịn, ít mối mọt được ưa chuộng làm đồ thủ công mỹ nghệ, đồ gỗ nội thất.</li>\r\n	<li><em>Phong lá đỏ cũng có thể trồng làm <strong><a href="https://hoadepviet.com/diem-mat-nhung-loai-cay-cho-bong-mat-va-lam-dep-khong-gian/">cây bóng mát</a></strong> rất tốt</em></li>\r\n	<li>Phong lá đỏ trồng tập trung thành dãy tạo nên những con đường đẹp, là nơi tham quan, chụp ảnh, tạo khu du lịch hấp dẫn.</li>\r\n</ul>\r\n', ' Nhật Bản, bán đảo Triều Tiên, Trung Hoa, đông Mông Cổ và đông nam Nga.', 'cay-phong-la-do-nhat.jpg', 3, '<ul>\r\n	<li>Phong lá đỏ hay Phong</li>\r\n	<li><strong>Cách gọi khác: </strong>tiếng Anh là maple, tiếng Nhật là momiji ( 紅葉 ) hay còn gọi là cây thích, phong nước, phong mềm, đầm lầy phong, Carolina phong đỏ,phong đỏ tươi…</li>\r\n	<li><strong>Tên khoa học:</strong> là Acer rubrum</li>\r\n	<li><strong>Có nguồn gốc</strong>: từ Hàn Quốc,  Nhật Bản, Trung Quốc.</li>\r\n	<li>\r\n	<p>Trên thế giới có hàng nghìn giống phong lá đỏ khác nhau dựa theo số thùy và màu sắc lá, một số nhóm chính:</p>\r\n\r\n	<p>–          Nhóm Linearilobum: lá có 5 thùy trong đó có 1 thùy dài, mảnh.</p>\r\n\r\n	<p>–          Nhóm Palmatum :  lá từ 5-7 thùy.</p>\r\n\r\n	<p>–          Nhóm Dissectum : lá có 5-9 thùy, màu đậm, lá có hình răng cưa.</p>\r\n	</li>\r\n</ul>\r\n', 'Họ Phong', '6 - 10 m', '<p>Cây phong lá đỏ có xuất xứ gần gũi nên rất phù hợp với khí hậu Việt Nam, việc trồng và chăm sóc cây không quá tốn nhiều công sức:</p>\r\n\r\n<p>Ánh sáng: Cây phong lá đỏ ưa ánh nắng nhẹ, không thích nắng gắt , cây có thể sống ở nơi có một phần bóng râm. Nếu mùa hè bạn có thể giảm nắng bằng cách đặt tại vị trí nắng nửa ngày hoặc che bớt nắng cho cây. Tuy nhiên nơi trồng cần có ánh sáng và nhiệt độ vừa đủ.</p>\r\n\r\n<p>Nên trồng cây nơi thông thoáng nhưng tránh gió mạnh vì gió có thể làm tổn thương cây hoặc làm cây mất nước.</p>\r\n\r\n<ul>\r\n	<li>Nhiệt độ: phong lá đỏ ưa mát, cây chịu nóng kém, nhiệt độ thích hợp 16-25oC.</li>\r\n	<li>Độ ẩm: cây ưa ẩm trung bình.</li>\r\n</ul>\r\n\r\n<p>Đất trồng: nên trồng đất tơi xốp, thoát nước, giàu dinh dưỡng. Khi trồng bạn đào hốc sâu để đất giữ rễ, tuy nhiên cần trồng cao hơn mặt đất 20-25cm để chống rễ bị úng.</p>\r\n\r\n<p>Tưới nước: Cần tưới một lượng nước vừa đủ, tránh úng. Đặc biệt mùa hanh khô hoặc thời tiết nóng thì tăng cường tưới hơn. Nên phủ lớp bèo lục bình vào gốc để giữ ẩm cho cây vào mùa nóng và khô.</p>\r\n\r\n<ul>\r\n	<li>Bón phân: Cây phong lá đỏ cần nhiều dinh dưỡng, tuy nhiên nên bón phân nhả chậm để cây lấy dinh dưỡng điều độ, không bị sốc phân. Trong 3 năm đầu nên khi trồng cần bón thường xuyên để phát triển hệ thống rễ.</li>\r\n</ul>\r\n\r\n<p>Cây phong lá đỏ từ một loại cây quý hiếm ngày nay được phổ biến rộng hơn vì cây được nhân giống từ hạt và cắt mầm từ gốc cây.Khi cây phong được 4 tuổi có thể giữ hạt để làm giống.</p>\r\n', NULL, '2019-12-31 03:41:07'),
(5, 'Cây Lưỡi Hổ Thái ', 'cay-luoi-ho-thai', '<ul>\r\n	<li>Lưỡi hổ Thái là cây thân thảo, thường cao 30-50cm, gần như không có thân.</li>\r\n	<li>Rễ mập và khỏe. Quả mọng, có 1-3 hạt.</li>\r\n	<li>Lá dẹt, mập, cứng, hình lòng thuyền rộng, mép lá vàng đậm, giữa lá xanh ngắt, trơn bóng hoặc có vân.</li>\r\n	<li>Cụm hoa có cuống chung, hoa màu trắng lục nhạt, cánh hoa hợp thành ống dài.</li>\r\n</ul>\r\n', '<h2><strong>Phong thủy</strong></h2>\r\n\r\n<ul>\r\n	<li>Lưỡi hổ Thái hợp với các mạng Thủy, Mộc</li>\r\n	<li>Cây tượng trưng cho sức mạnh loài hổ dữ, giúp xua đuổi ma quỷ</li>\r\n	<li>Ngoài ra, cây còn mang ý nghĩa lời cầu chúc may mắn đến bạn bè, đối tác, tân gia: an cư lạc nghiệp, năm mới tài lộc dồi dào.</li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li style="text-align: justify;">Có khả năng thải oxy vào ban đêm nên nhờ cơ chế quang hợp CAM, rất thích hợp đặt trong phòng ngủ</li>\r\n	<li style="text-align: justify;">Tạo không gian thư giãn, giảm stress cho khu vực ban công hay sân vườn</li>\r\n	<li style="text-align: justify;">Thanh lọc không khí, hấp thụ chất ô nhiễm, chất gây ung thư</li>\r\n</ul>\r\n', 'châu Á nhiệt đới ( Ấn Độ, Srilanca,…)', 'luoi-ho-thai-1.jpg', 1, '<ul>\r\n	<li>Tên khác: Lưỡi hổ Thái Lan</li>\r\n	<li>Xuất xứ: Thái Lan</li>\r\n</ul>\r\n', 'Họ Măng Tây', '35 - 40 cm', '<ul>\r\n	<li>Ánh sáng: cây ưa sáng, ánh sáng trực tiếp và bóng râm bán phần đều được.</li>\r\n	<li>Đất trồng: thích hợp với đất khô cằn như đất cát, đất cát pha hay đất sỏi.</li>\r\n	<li>Nước: cây chịu hạn tốt nên nhu cầu nước thấp, có thể tưới 1 lần/tuần.</li>\r\n	<li>Nhiệt độ: cây sống tốt ở khoảng 20°C-30°C. Phân bón: các loại phân phổ biến hiện nay</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:03:46'),
(6, 'Cây Tùng Bồng Lai', 'cay-tung-bong-lai', '<ul>\r\n	<li>Cây có lá mọc nhiều, dày và tạo hình như án mây trôi giữa trời, lá nhỏ và nhọn mọc quanh cành</li>\r\n	<li>Thân cây chắc khoẻ nhưng rất dẻo, có thể uốn lượn để làm cây cảnh bonsai</li>\r\n	<li>Cây có tuổi thọ cao, lâu thay lá, rễ mọc dài</li>\r\n</ul>\r\n', '<h2><strong>Ý nghĩa phong thủy</strong></h2>\r\n\r\n<ul>\r\n	<li>Cây giúp mang lại tài lộc, thịnh vượng, giữ tài cho gia chủ. Ngoài ra, cây còn mang ý nghĩa cho sự trường thọ, sống lâu.</li>\r\n	<li>Dáng vẻ vững chãi, là biểu trưng của sức mạnh, sự bền bỉ, dám đương đầu với thử thách.</li>\r\n	<li>Phù hợp với người tuổi Thân, sẽ được quý nhân phù trợ, làm ăn phát đạt.</li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li>Cây phù hợp để bàn, kệ sách, trang trí quán cà phê.</li>\r\n	<li>Cây nhỏ thường được làm cây bonsai, gợi nhớ sự hùng vĩ của núi rừng</li>\r\n	<li>Làm cây trang trí trong dịp Giáng sinh</li>\r\n</ul>\r\n', 'các vùng núi cao', 'cay-tung-bong-lai.jpg', 3, '<ul>\r\n	<li><strong>Tên khác: </strong>Tùng Lá Văn Trúc, Tùng Lá Thiên Môn Đông</li>\r\n	<li><strong>Xuất xứ: </strong>California (Mỹ)</li>\r\n</ul>\r\n', 'Họ Tùng, Thông', '30 - 40 cm', '<ul>\r\n	<li>Ánh sáng: thỉnh thoảng nên cho cây ra ngoài sáng Nhiệt độ: tốt nhất là trong khoảng 20ºC – 30ºC.</li>\r\n	<li>Nước: cây khá ưa nước và dễ sống, nên tưới nước 1 tuần một lần ở điều kiện bình thường. Tuy nhiên đừng để đất ẩm thường xuyên vì tạo điều kiện cho nấm và sinh vật gây hại phát triển.</li>\r\n	<li>Đất: giữ ẩm nhưng thoát nước tốt, có thể trộn đất với xỉ than đập nhỏ, dùng trấu, sơ dừa, tro…</li>\r\n	<li>Nhân giống bằng cách chiết cành, gieo hạt hoặc tách cây con từ cây mẹ.</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:42:38'),
(7, 'Cây  Mai chiếu thủy', 'cay-mai-chieu-thuy', '<ul>\r\n	<li>Cây thân gỗ có những nhánh dài mảnh, có lông mềm.</li>\r\n	<li>Lá hình trái xoan - ngọn giáo, thuôn, hình dải - ngọn giáo, nhọn ở chóp, có góc ở gốc, hai mặt lá khác màu, hầu như không có cuống, dài 3-6,5 cm, rộng 1-2,5 cm.</li>\r\n	<li>Hoa trắng, mọc thành xim dạng ngù ở ngọn các nhánh. Mỗi hoa cho ra 2 quả đại hình dải, có mũi và nhọn ở đỉnh, thót nhọn ở gốc, hơi rẽ đôi, màu đen đen, có khía dọc, dài 10–12 cm, rộng 3-3,5mm.</li>\r\n	<li>Hạt hình dải dài 6mm, rộng 1mm mang chùm lông mềm màu trắng.</li>\r\n	<li>Mai chiếu thủy có màu trắng, mùi thơm, mọc trên một cọng dài kết thành chùm.</li>\r\n	<li>Hoa có 5 cánh nhìn thoáng qua giống <a href="https://vi.wikipedia.org/wiki/Hoa_mai" title="Hoa mai">hoa mai</a>, nên có tên gọi là mai.</li>\r\n	<li>Hoa mai chiếu thủy nở luôn luôn nhìn xuống mặt đất, nên gọi là chiếu thổ, chiếu thủy.</li>\r\n</ul>\r\n', '<ul>\r\n	<li style="text-align: justify;">ây mai chiếu thủy biểu trưng cho sự bền vững và ổn định của gia chủ chúng thường được trồng trong chậu, đặt ở cổng, trang trí sân vườn… và được xem là loại cây trấn yểm tài lộc cho gia chủ. Chính vì ý nghĩa mà nó mang lại mai chiếu thủy rất được ưa chuộm trong các dịp tết hoặc làm quà tặng.</li>\r\n	<li style="text-align: justify;">Cây được dùng làm cây ngoại thất, cây sân vườn bởi rất dễ chăm sóc ra hoa quanh năm phảng phất hương thơm quyến rũ. Hoa có 5 cánh nhìn thoáng qua giống hoa mai nên có tên gọi là mai, khi hoa nở luôn hướng xuống mặt đất nên gọi là chiếu thủy, chiếu thổ.</li>\r\n	<li style="text-align: justify;">Mai chiếu thủy thuộc họ trúc đào, thân gỗ xù xì nhiều cành nhánh nhỏ dễ uốn nắn và cắt tỉa, chúng ra hoa màu trắng nở quanh năm có mùi thơm nhẹ dễ chịu. Có 3 loại mai chiếu thủy lá nhỏ, lá trung và lá lớn dòng lá nhỏ thường được uốn tạo hình độc lạ. Trong khi đó dòng mai lớn thường là mai thế càng lâu năm càng có nhiều giá trị.</li>\r\n	<li style="text-align: justify;">Loài mai này có thể nhân giống từ hạt hoặc chiết cành, chúng không chỉ đẹp dễ tạo dáng mà không quá cầu kỳ về cách chăm sóc. Bạn chỉ cần tưới nước hàng ngày và đặt cây ở nơi có ánh sáng dịu là cây có thể sinh trưởng tốt.</li>\r\n</ul>\r\n', 'miền Ðông Dương', 'cay-canh-mai-chieu-thuy-bonsai.jpg', 3, '<p>Cây Mai Chiếu Thủy</p>\r\n\r\n<ul>\r\n	<li><strong>Họ:</strong> Trúc đào</li>\r\n	<li><strong>Tên gọi khác:</strong> Mai chiếu thủy, mai chấn thủy, mai trúc thủy hay lòng mức miên </li>\r\n	<li><strong>Tên khoa học:</strong> Wrightia religiosa </li>\r\n</ul>\r\n', 'Họ Trúc Đào', '35 - 40 cm', '<p dir="ltr">Cây mai chiếu thủy có đặc điểm vô cùng đặc biệt đó chính là có rất nhiều rễ chia ra thành nhiều loại khác nhau: rễ chính, rễ ngang, rễ phụ và rễ đứng. Mỗi một loại rễ sẽ có một vai trò, chức năng, nhiệm vụ giúp quá trình phát triển của cây mai chiếu thủy trở nên thuận lợi hơn. Cây mai chiếu thủy thuộc loại cây rễ chùm nên phải trồng ở những nơi có đất rộng đủ để cây phát triển một cách tốt nhất.</p>\r\n\r\n<p dir="ltr">Vì nhiều rễ nên khả năng thấm hút nước cũng như các chất dinh dưỡng của cây mai chiếu thủy cũng cao hơn những loại cây khác. Tuy nhiên không nên vì khả năng thấm hút nước cao này của cây mà tưới quá nhiều nước sẽ dẫn đến việc cây bị úng nước và chết. Để ngăn ngừa việc này, bạn nên chọn các loại đất xốp, đất thoáng khí giúp cây có thể hấp thụ nước tốt mà không lo bị úng nước.</p>\r\n\r\n<p dir="ltr">Thân cây mai chiếu thủy thường có hình thù sần sùi, trên thân cây có điểm một vài nốt nhỏ. Thân cây mai chiếu thủy tùy thuộc vào giống cây mà sẽ có thân cây màu trắng hoặc xám đen. Lá cây mai chiếu thủy có những đặc điểm vô cùng riêng biệt không giống lá cây của các loại cây khác. Lá cây mọc không đối xứng, có hai đầu nhọn, hình trái xoan màu xanh thẫm.</p>\r\n\r\n<p dir="ltr">Hoa của mai chiếu thủy được đánh giá là phần tinh túy nhất của cây mai chiếu thủy. Hoa mai chiếu thủy thường có màu trắng, nở ra có 5 cánh, mọc xen kẽ với lá của cây mai chiếu thủy. Hoa có mùi hương nhẹ nhàng, thanh khoát mang lại sự dễ chịu cho con người. Hoa khi về già sẽ trở thành quả của cây mai chiếu thủy, có một chùm lông mềm màu trắng.</p>\r\n\r\n<h2 dir="ltr"><strong>Cách chăm sóc mai chiếu thủy ra hoa đúng tết</strong></h2>\r\n\r\n<p dir="ltr">Để cây mai chiếu thủy có thể ra hoa vào đúng tết thì bạn cần phải cắt tỉa lá cho cây mỗi tháng một hoặc hai lần. Vào mùa mưa thì nên cắt tỉa một lần mỗi tháng vào mùa nắng thì là hai lần mỗi tháng. Nên bón phân, chăm sóc cây trước thời điểm ra hoa khoảng từ một đến hai tháng để cây có thể ra hoa đúng với ý mong muốn của người trồng. <strong>Chăm sóc mai chiếu thủy ra hoa đúng tết</strong> là một việc không dễ dàng, tuy nhiên việc này sẽ không khó nếu như bạn có đủ sự kiên trì, chịu khó theo dõi tiến độ phát triển của cây.</p>\r\n\r\n<p dir="ltr">Để có thể chăm sóc cây mai chiếu thủy một cách tốt nhất thì bạn nên nắm bắt được thông tin về cây mai chiếu thủy trong bài viết trên đây. Trồng cây mai chiếu thủy không chỉ giúp bạn mang ý nghĩa về phong thủy mà còn mang lại ý nghĩa to lớn về kinh tế nếu như cây của bạn là cây mai chiếu thủy bonsai hay <strong>mai chiếu thủy đẹp</strong>.</p>\r\n', NULL, '2019-12-31 03:49:53'),
(8, 'Cây Phú Quý thuỷ sinh', 'cay-phu-quy-thuy-sinh', '<ul>\r\n	<li>Cây Phú Quý có rễ chùm, to khỏe với thật nhiều rễ con dài khoảng 4-6cm màu trắng ngà</li>\r\n	<li>Thân cây được tạo thành bằng những bẹ lá, cuống lá có màu trắng hồng</li>\r\n	<li>Lá mỏng, viền lá có màu hồng đỏ, bên trong có màu xanh đậm</li>\r\n	<li>Cây rất dễ sống và chăm sóc, có thể trồng đất hoặc thủy sinh</li>\r\n</ul>\r\n', '<h2><strong>Phong thủy</strong></h2>\r\n\r\n<p> </p>\r\n\r\n<ul>\r\n	<li>Là loài cây biểu tượng cho sự may mắn, sang giàu. Trồng cây trong nhà, đặt nơi văn phòng giúp mang đến tài lộc dồi dào, tiền vào như nước, may mắn, suôn sẻ trong mọi việc.</li>\r\n	<li>Cây vốn dĩ phù hợp với mệnh Hỏa nhưng do trồng thuỷ sinh nên người mệnh này hạn chế trồng vì Thuỷ khắc Hoả. Mệnh Thổ thì có thể trồng một chậu Phú Quý trong nhà cũng mang lại nhiều phong thủy tốt lành.</li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li>Giúp thanh lọc không khí vô cùng tốt.</li>\r\n	<li>Giảm bớt căng thẳng, giúp thư giãn trước những áp lực của công việc hàng ngày.</li>\r\n</ul>\r\n', 'Indonesia', 'cay-phu-quy-de-ban-phong-thuy.jpg', 1, '<ul>\r\n	<li><strong>Tên thường gọi: </strong>Cây phú quý</li>\r\n	<li><strong>Tên khoa học:</strong> Aglaonema Hybrid &#39Pride of Sumatra&#39</li>\r\n</ul>\r\n', 'Họ Ráy', '4 - 6 cm', '<ul>\r\n	<li>Ánh sáng: Là cây ưa bóng mát, loài cây này có thể sống được trong môi trường ít ánh sáng, chỉ có ánh sáng điện huỳnh quang thôi, nó cũng có thể sinh trưởng và phát triển, tuy nhiên để lá lên màu đẹp thì bạn nên để cây ở nơi có ánh sáng buổi sớm và chiều muộn, tránh ánh nắng buổi trưa mùa hè có nhiệt độ cao sẽ khiến lá bị cháy nhìn sẽ không được đẹp.</li>\r\n	<li>Nước: cây Phú Quý trồng thủy sinh cần thay nước trong chậu 1 lần/tuần. Khi thay nước, lưu ý rửa sạch bộ rễ, lau sạch thành chậu trong và ngoài.</li>\r\n	<li>Phân bón: sử dụng dung dịch thuỷ sinh bán theo cây </li>\r\n	<li>Nhiệt độ: nhiệt độ từ 15–28°C là nhiệt độ lý tưởng. Nhưng trong điều kiện khắc nhiệt thì cây vẫn có thể chịu đựng được nhiệt độ dưới 10°C hoặc trên 35°C. Tuy nhiên đối với nhiệt độ cao hơn hoặc thấp quá cây sẽ chậm hoặc ngừng phát triển.</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:07:14'),
(9, 'Cây Cau Tiểu Trâm', 'cay-cau-tieu-tram', '<ul>\r\n	<li>Cau tiểu trâm hay còn gọi là dừa tụ thân thuộc họ Cau – Arecaceae thuộc loại cây thân thảo hóa gỗ, sống lâu năm.</li>\r\n	<li>Cau tiểu trâm có nguồn gốc từ Châu Á nên rất phù hợp với khí hậu nhiệt đới ở Việt Nam.</li>\r\n	<li>Cau tiểu trâm thuộc loại cây bụi nhỏ, chiều cao khoảng 20-200 cm.  </li>\r\n	<li>Cau tiểu trâm có lá dạng bẹ, lá kép giống lá cau.</li>\r\n	<li>Lá dài, nhọn, màu xanh đậm, mềm và bóng, nhẵn, nổi rõ gân .Lá cau tiểu trâm mọc thưa từ thân chính.</li>\r\n	<li>Các bẹ lá và thân cau có màu vàng kết hợp hài hòa với nhau tạo nên vẻ đẹp hài hòa, bắt mắt, vừa sinh động đầy sức sống.</li>\r\n	<li>Ngắm nhìn cau tiểu trâm ta như được ngắm một cây dừa thu nhỏ rất duyên dáng.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Với nhiều ưu điểm: hình dáng ngộ nghĩnh, đáng yêu, tán lá xanh mượt đầy sức sống và khả năng hấp thụ khí độc hiệu quả… cau tiểu trâm được lựa chọn là một trong số những cây cảnh trồng trong nhà được yêu thích.</li>\r\n	<li>Người ta hay trồng cau tiểu trâm vào những chậu sứ có hình dáng trang nhã tạo nên một chậu cảnh sang trọng trưng ở hành lang, bệ cầu thang, lối ra vào, hoặc bàn làm việc, phòng khách, phòng họp đem đến không gian trong lành cùng vẻ đẹp trẻ trung.</li>\r\n	<li>Để khoe hết vẻ đẹp tổng thể của cau tiểu trâm từ rễ, thân, lá người ta thường trồng cau tiểu trâm vào bình thủy tinh để bàn làm việc, bàn ăn,phòng khách, phòng bếp, kệ tivi, kệ sắt nghệ thuật… làm điểm nhấn cho không gian.</li>\r\n	<li>Thêm vào đó, cây cau tiểu trâm là biểu tượng của sức sống mạnh mẽ, ý chí vươn lên nên được lựa chọn làm quà tặng trong nhiều dịp: thi cử, tân gia, lễ tết, thăng chức, sinh nhật, khai trương…đặc biệt là động viên tinh thần những người đang phấn đấu, cần sự khích lệ, động viên.</li>\r\n	<li>Đặc biệt với khả năng làm sạch không khí bằng cách hút các chất độc, cau tiểu trâm có thể vô hiệu hóa nhiều loại chất độc có khả năng gây ung thư: bức xạ từ máy tính, chất độc thải ra từ động cơ xe, xăng dầu, khói thuốc lá, các tia bức xạ từ đồ điện tử…</li>\r\n	<li>Đối với những người bị một số bệnh về đường hô hấp: viêm xoang, hen suyễn nếu trưng chậu cây cau tiểu trâm trong phòng ngủ hoặc trên bàn làm việc sẽ thấy tác dụng rõ rệt.</li>\r\n</ul>\r\n', 'châu Á nhiệt đới', 'cay-cau-tieu-tram-thuy-sinh-1.jpg', 1, '<ul>\r\n	<li>Có cùng họ với cây cau, cây dừa, những loại cây quen thuộc với người Việt Nam ta từ xưa tới nay.</li>\r\n	<li>Thân cây có dánh thẳng và không có đốt, khúc, lá cây có phần bẹ ôm sát thân giống như những loài cau lớn mà ta thường thấy.</li>\r\n	<li>Rễ cây thuộc loại rễ chùm, thân cây tuy khá nhỏ nhưng bộ rễ lại có kích thước khá lớn để hút dinh dưỡng và khoáng từ đất.</li>\r\n	<li>Cũng vì những đặc điểm ấy mà người ta thường nhầm lẫn với cây Tùng La Hán  .</li>\r\n</ul>\r\n', 'Họ Cau', '20 - 200 cm', '<ul>\r\n	<li>Ánh sáng: Cau tiểu trâm sống được trong bóng râm nhưng cũng chịu sáng khá tốt, sinh trưởng ở điều kiện bình thường. Vì vậy cau tiểu trâm thường được lựa chọn làm cây cảnh trồng trong nhà. Nếu trồng trong phòng tối, hạn chế ánh sáng thì nên đem cây ra nắng khoảng 1,5-2 tiếng/ tuần vào buổi sáng từ 7-10h tùy mùa.</li>\r\n	<li>Nhiệt độ: cau tiểu trâm ưa mát, chịu nóng và lạnh kém, khoảng nhiệt độ thích hợp cho cây từ 17-25oC. Nóng hay lạnh quá làm cây sinh trưởng kém, sắc lá không mượt.</li>\r\n	<li>Độ ẩm: Cây ưa ẩm trung bình, khoảng 60-80%</li>\r\n	<li>Đất trồng: cau tiểu trâm ưa đất thịt, nếu trồng chậu cần đất tơi xốp hơn để thoát nước tốt. Đất trồng tốt nhất cho cau tiểu trâm nên sử dụng: đất thịt + trấu hun + phân hữu cơ + xỉ than.</li>\r\n	<li>Tưới nước: nhu cầu nước của cau tiểu trâm vào loại trung bình, chỉ nên tưới 2-3 lần/ tuần, mỗi lần từ 300-800ml tùy kích thước chậu. Dễ nhất là bạn tưới khi đất trên mặt chậu đã se khô, tưới chậm, đều, đến khi thấy nước chảy ra dưới đáy chậu là được. Nếu trồng cau tiểu trâm thủy sinh thì nên duy trì lượng nước trong bình không quá ½ chiều cao bộ rễ. Tuy nhiên không để thấp quá không đủ chất nuôi cây. Thay nước và vệ sinh cây, loại bỏ rễ hỏng 1 tuần/ lần.</li>\r\n	<li>Bón phân: Để lá cau tiểu trâm xanh bóng, mượt thì hàng tháng nên bón phân cho cây bằng các loại phân nhả chậm, trùn quế, vi sinh, phân hữu cơ hoai mục, phân bò luân phiên để tăng cường vi chất cho cây.</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:14:22'),
(10, 'Cây Dành Dành', 'cay-danh-danh', '<ul>\r\n	<li>Là cây bụi thân gỗ, có tán hẹp, rễ sinh trưởng tốt, sống lâu năm</li>\r\n	<li>Lá màu xanh nhẵn bóng, mọc đối hay mọc vòng 3 chiếc.</li>\r\n	<li>Cây nở hoa, hoa màu trắng, thơm, nở vào khoảng giữa xuân cho đến giữa hè.</li>\r\n	<li>Quả hình chén, khi chín có màu vàng đỏ, chứa rất nhiều hạt và có vị đắng.</li>\r\n</ul>\r\n', '<h2><strong>Ý nghĩa phong thuỷ</strong></h2>\r\n\r\n<ul>\r\n	<li>Hoa dành dành tượng trưng cho vẻ đẹp trong sáng và sự thanh lịch, vẻ đẹp của một tình yêu thầm kín</li>\r\n	<li>Hợp với tất cả các mệnh </li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li>Thường được trồng trang trí cảnh quan, làm sạch bầu không khí, mang lại không gian hứng khởi, vui tươi, ấm áp</li>\r\n	<li>Trồng ở những nơi nghiêm trang, thoát tục như Đình, Chùa</li>\r\n	<li>Cây còn là những vị thuốc quý giúp phục hồi vết thương, chữa đau mắt</li>\r\n	<li>Làm quà tặng ý nghĩa cho người mình thầm thương trộm nhớ</li>\r\n</ul>\r\n', 'Triều Tiên, Trung Quốc, Nhật Bản', 'danh-danh-ts001.jpeg', 1, '<ul>\r\n	<li>Tên thường gọi: Dành Dành</li>\r\n	<li>Tên khác: Bạch Thiên Hương, Lài Lá Lớn, Trà My, Chi Tử, Thuỷ Hoàng Chi, Mác Làng Cương</li>\r\n	<li>Tên khoa học: Gardenia Jasminoides Ellis</li>\r\n	<li>Họ: Rubiaceae (Cà phê)</li>\r\n	<li>Xuất xứ: Triều Tiên, Hàn Quốc, Nhật Bản, Trung Quốc</li>\r\n</ul>\r\n', 'Họ Cà Phê', '20 -30 m', '<ul>\r\n	<li>Vị trí: cây thích nơi sáng sủa, thoáng mát </li>\r\n	<li>Nước: 2-3 ngày tưới 1 lần, tuỳ điều kiện thời tiết</li>\r\n	<li>Đất trồng: dùng đất tới xốp, thoát nước tốt</li>\r\n	<li>Nhân giống: gieo hạt, giâm chiết cành</li>\r\n	<li>Phân bón: bón định kì bằng phân NPK</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:17:31'),
(11, 'Cây Bàng Vuông', 'cay-bang-vuong', '<ul>\r\n	<li>Cây có dáng cây thẳng, lá đơn mọc cách đều nhau, tán lá rộng, đầu lá bầu tròn, màu xanh thẫm</li>\r\n	<li>Chiều cao trung bình từ 0,5-2m (để bàn hoặc trang trí nội thất đều được)</li>\r\n	<li>Nhân giống dễ dàng bằng cách chiết cành hoặc ươm từ hạt</li>\r\n</ul>\r\n', '<h2><strong>Ý nghĩa phong thủy</strong></h2>\r\n\r\n<ul>\r\n	<li>Cây mọc thẳng, tượng trưng cho sự chịu khó, cần cù và ý chí vươn lên trong cuộc sống</li>\r\n	<li>Phù hợp với người mệnh Mộc. Cây vốn dĩ cũng hợp mệnh Hoả, nhưng do trồng nước, Thuỷ khắc Hoả, nên mệnh này tránh trồng.</li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li>Làm chậu thuỷ sinh trang trí trên bàn làm việc, phòng họp, phòng khách</li>\r\n	<li>Thanh lọc không khí, khói bụi </li>\r\n</ul>\r\n', 'Singapore', 'cay-bang-singapore.jpg', 1, '<ul>\r\n	<li><strong>Tên gọi khác:</strong> cây Bàng Vuông, Bàng Lá To</li>\r\n	<li><strong>Tên khoa học:</strong> Ficus Lyata, Fiddle-leaf fig</li>\r\n	<li><strong>Họ thực vật:</strong> Moraceae</li>\r\n</ul>\r\n', 'Họ Dâu Tằm', '0.5 - 2 cm', '<ul>\r\n	<li><strong>Đất: </strong>dùng ít đất nhưng đất cần tơi, xốp, không trữ nước</li>\r\n	<li><strong>Ánh sáng:</strong> ánh sáng nhẹ, có thể sống được trong bóng râm, đèn huỳnh quang, quá nhiều ánh sáng sẽ bị phai màu</li>\r\n	<li><strong>Nước:</strong> chú ý thay nước khi mực nước trong bình xuống quá thấp, hoặc trung bình 8-9 ngay thay một lần</li>\r\n	<li><strong>Nhiệt độ:</strong> tốt nhất là vào khoảng 16-27 độ C</li>\r\n	<li><strong>Phân bón:</strong> khoảng 2-3 tháng/lần, dùng phân bón lỏng pha loãng hoặc phân bón ngâm trong nước</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:21:50'),
(12, 'Cây Nha Đam Thuỷ Sinh', 'cay-nha-dam-thuy-sinh', '<ul>\r\n	<li>Cây có gốc, thân ngắn, lá không có cuống, mọc sát thân, hướng lên trên</li>\r\n	<li>Lá to, dày, mọng nước, có hình lưỡi giáo, vỏ màu xanh tươi đẹp mắt, phần gốc mọc dày và theo chiều mở dần ra.</li>\r\n	<li>Mép lá có răng nhọn như gai.</li>\r\n	<li>Hoa mọc thành cụm, cành hoa dài khoảng 10cm. Hoa dài 3-4cm, màu vàng hoặc màu đỏ.</li>\r\n</ul>\r\n', '<h2><strong>Ý nghĩa phong thủy</strong></h2>\r\n\r\n<ul>\r\n	<li>Mang lại may mắn cho người sở hữu, giúp gia chủ giữ được tinh thần thoải mái, minh mẫn khi làm việc.</li>\r\n</ul>\r\n\r\n<h2><strong>Công dụng</strong></h2>\r\n\r\n<ul>\r\n	<li>Có khả năng thanh lọc không khí, giải phóng oxy, hút các khí có hại cho cơ thể.</li>\r\n	<li>Được đặt ở những nơi thiếu ánh sáng như phòng khách, phòng ngủ, nhà tắm… tạo màu xanh cho ngôi nhà</li>\r\n	<li>Tạo sự mới mẻ, lạ mắt cho bàn làm việc, bàn học... giúp bạn có cảm giác thư giãn và thoải mái hơn trước những bế tắc của công việc.</li>\r\n	<li>Cây còn có tác dụng trong làm đẹp, sát khuẩn, kháng viêm, tốt cho dạ dày và đường ruột, khỏe tim hoạt huyết, giảm đau, giúp trấn tĩnh, phòng ngừa lão hóa.</li>\r\n</ul>\r\n', 'Trung cận Đông', 'cay-nha-dam-thuy-sinh.png', 1, '<ul>\r\n	<li><strong>Tên khác:</strong> Lô Hội, La Hội, Lao Vỹ, Tượng Can</li>\r\n	<li><strong>Tên khoa học:</strong> Aloe Vera</li>\r\n	<li><strong>Họ:</strong> Asphodelaceae</li>\r\n	<li><strong>Xuất xứ: </strong>Trung cận Đông</li>\r\n</ul>\r\n', 'Họ Lan Nhật Quang', '10 - 14 cm ', '<ul>\r\n	<li>Ánh sáng: cần đủ ánh sáng cây để phát triển tốt, có thể sống trong môi trường thiếu sáng, nhưng khoảng từ 3-5 ngày nên cho cây ra ngoài ánh sáng để quang hợp.</li>\r\n	<li>Nhiệt độ: cây sợ lạnh và sương, nhiệt độ thích hợp nên vào khoảng 15-35 độ C.</li>\r\n	<li>Nước: thay nước định kì, tuần 1 lần.</li>\r\n	<li>Phân bón: dùng dung dịch dinh dưỡng để bón, nhỏ trực tiếp vào bình thủy sinh. Lưu ý đừng dùng nhiều, một giọt nhỏ mỗi lần bón là đủ.</li>\r\n</ul>\r\n', NULL, '2019-12-31 03:25:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
