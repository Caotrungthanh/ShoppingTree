-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2019 at 04:11 PM
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

INSERT INTO `sanpham` (`id`, `tensanpham`, `sanphamduongdan`, `phanbo`, `anhsanpham`, `danhmuc_id`, `mota`, `hothucvat`, `chieucao`, `chamsoc`, `thoigiantao`, `capnhapluc`) VALUES
(1, 'Cây Thiết Mộc Lan', 'cay-thiet-moc-lan', 'Đà Lạt', 'cay-thiet-moc-lan-de-ban-phong-thuy.jpg', 2, 'Thân cây có thân rất to, phần lớn bị lá bao quanh, tán có độ rộng tán cây từ 5 – 10 cm, lá của cây chiếm đa số, bao quanh lấy bụi cây, rễ cây không phải thuộc rễ chùm.', 'Họ Huyết dụ', '20 - 70 cm', 'Cây thiết mộc lan là cây thích sống trong môi trường ẩm ướt và không nên cho tiếp xúc với ánh nắng mặt  trời. Chế độ Nước: nên tưới nước thường xuyên cho cây; không được để đất trồng cây khô. Nên tưới nước thường xuyên để đất giữ được độ ẩm nhất định. Đất trồng: thiết mộc lan thích sông trong môi trường đất tơi xốp. Chính vì thế nên thường xuyên xáo trộn để đất trồng cây được mùn hơn.', NULL, NULL),
(2, 'Cây Kim Ngân ', 'cay-kim-ngan', ' miền Bắc Việt Nam', 'cay-kim-ngan-de-ban-1.jpg', 2, 'Cây kim ngân nhỏ có thân phình to màu nâu. Bên trên mộc nhiều nhánh nhỏ. Cây có lá xoè rộng như hình bàn tay, lá xanh quanh năm. Với chiều cao của cây từ 10 – 20 cm, cây rất thích hợp để trồng vào chậu sứ trưng bày phòng làm việc. Cây Kim Ngân thích nghi với mọi điều kiện thời tiết nóng lạnh khác nhau; vì thế nên dù ở điều kiện bình thường hay phong máy lạnh cây điều có thể phát triển tốt. Chậu kim ngân mini được trồng trong chậu sứ trắng bền chắc và sang trọng. ', 'Họ Cẩm Quỳ', '20 -30 cm', 'Nước có thể sinh trưởng được nơi có nhiệt độ cao; vì vậy lượng nước cần thiết cũng ít hơn các loại cây khác. Nếu cây đặt ở môi trường bình thường thì tưới 2 lần/tuần; cây đặt trong phòng máy lạnh chỉ cần tưới 1 lần/tuần. Lượng nước tưới vừa đủ để nước ngấm hết toàn bộ đất trong chậu. Ánh sáng giúp cây kim ngân sinh trưởng và phát triển tốt trong nhà. Tuy nhiên để cây phát triển tốt; thình thoảng ta nên đưa cây ra ngoài trời dưới tán cây lớn với chu kỳ 10 ngày/lần. Như vậy cây sẽ hấp thụ được ánh sáng và phát triển tốt hơn. Nhiệt độ làm cây sống được ở nhiệt độ từ 4°C đến 40°C phát triển thích hợp ở nhiệt độ 18°C đến 26°C. ', NULL, NULL),
(3, 'Cây Hoa Tử Đằng', 'cay-hoa-tu-dang', ' Trung Quốc ở các tỉnh Quảng Tây, Quý Châu, Hà Bắc, Hà Nam, Hồ Bắc, Sơn Tây, và Vân Nam.', 'cay-tu-dang-bonsai-mini.jpg', 3, 'Lá cây tử đằng mọc đối xứng, dài từ 15cm đếm 35cm, mọc hình lông chim với 9 đến 19 lá. Hoa mọc thành chùm trong cành rủ xuống dài từ 10cm đếm 80cm, có màu tím, hồng hoặc trắng. Hoa tử đằng có mùi thơm, đặc biệt là giống hoa Trung Quốc. Hạt được tạo thành dây và có chất độc. (tránh xa tầm tay trẻ nhỏ) Rễ cọc sâu, rễ phụ ít đâm sâu, sinh trưởng rất nhanh, tuổi thọ lâu dài, có thể leo bám.', 'Họ Đậu', '20 -30 m', 'Cây tử đằng sinh trưởng chủ yếu ở vùng có khí hậu mát lạnh, chịu lạnh rất tốt, nhiệt độ cao cây khó phát triển. Cây không kén đất, phát triển tốt ngay trên đất cằn cõi, ưa nắng. Quan trọng là khâu ươm mầm. Cây giống tử đằng ở dạng cuộn để có cây giống tốt nhất. Thời gian tốt nhất để bắt đầu gieo hạt là vào đầu tháng ba hay tháng tư, tùy thuộc vào khu vực trồng. Chuẩn bị một bình nước sạch và đổ hạt vào để ngâm trong ít nhất 24 giờ. Sau khi đã ngâm ủ hạt giống, lấy chúng ra khỏi nước. Chuẩn bị chậu gieo với lớp đất bằng phằng, có độ mùn tốt. Rắc hạt giống, phủ lại một lớp đất mỏng để vào nơi có ánh nắng buổi sáng. Hàng ngày dùng bình xịt, phun sương giữ ẩm cho đất. Hạt sẽ nảy mầm trong một vài ngày hoặc vài tuần. Khi các hạt giống đã nảy mầm và mọc lên, bạn có thể tách chúng trồng ra các chậu riêng. Giữ ẩm đất cho đến khi bạn đã sẵn sàng để trồng cây ra đất vườn.', NULL, NULL),
(4, 'Cây Phong Lá Đỏ', 'cay-phong-la-do', ' Nhật Bản, bán đảo Triều Tiên, Trung Hoa, đông Mông Cổ và đông nam Nga.', 'cay-phong-la-do-nhat.jpg', 3, 'Phong lá đỏ hay Phong (tiếng Anh là maple, tiếng Nhật là momiji( 紅葉)) là loài lá bản mỏng, có lá chuyển mầu trước khi rụng vào mùa thu. Ở các nước có mùa thu lạnh như Nhật, Hàn, ... tầm cuối tháng 10 lá đã đổi mầu, đặc biệt là vùng núi cao có nhiệt độ thấp hơn. Phong lá đỏ được gọi chung như vậy nhưng thực tế mầu lá rất phong phú tùy chủng loại phong và thời tiết. Chỉ riêng Nhật Bản đã có hơn 1000 loài phong, hình dáng va mầu lá cũng khá khác nhau ít nhiều ví dụ: mầu đỏ tươi, đỏ sẫm, vàng, cam, tím, hồng... tùy vào chủng loài của cây phong. Không chỉ Nhật, Hàn, Trung có nhiều phong do khí hậu ôn đới, các nước như Âu Mỹ cũng có nhiều chủng loại riêng.', 'Họ Phong', '6 - 10 m', 'Cây có khả năng thích nghi tốt trong phạm vi rộng về ánh sáng và loại đất. Tuy nhiên, có vài yếu tố cơ bản nhất nếu trồng phong trong điều kiện khí hậu nóng như Việt Nam là đất trồng phải thoáng (tưới xong trôi hết nước, ẩm đất nhưng không ướt quá), điều lượng nắng (mùa hè nên tránh nắng gắt đến khi cây thuần), và cây Phong rất thích gió nên cần để chỗ thoáng gió. Tại Việt Nam, 3 yếu tố dưới đây là trở ngại lớn: Những cơn mưa dài ngày (đất úng nước trong thời gian dài), sau đó nóng ẩm làm nấm dễ phát triển, khô hanh dài trong mùa đông ở miền Bắc nhưng lại chưa đủ lạnh để cây ngủ. nắng quá gắt dễ làm cháy lá, hệ rễ cũng khó phát triển mạnh vào những ngày quá nóng', NULL, NULL),
(5, 'Cây Lưỡi Hổ Thái ', 'cay-luoi-ho-thai', 'châu Á nhiệt đới ( Ấn Độ, Srilanca,…)', 'luoi-ho-thai-1.jpg', 1, 'Cây cao 50-80cm, thân rễ mọc bò ngang, tốc độ sinh trưởng nhanh. Kiểu lá hình dải dài, dày và cuống có vằn ngang, mép lá có viền màu vàng. Cây mọc thành bụi mang 5-6 lá mọc thẳng dạng giáo hẹp, dày, thuôn nhọn ở đầu; gốc thành bẹ ôm thân, mép lượn sóng. Lá màu xanh bóng xen kẽ các vệt ngang không đều nhau màu xanh đậm, dày mập với 2 dải màu vàng kéo dài từ gốc đến ngọn. Cụm hoa có chung cuống, mập, tròn, màu xanh bóng, cao 30cm có lá bắc. Hoa màu trắng lục nhạt 3,5cm, hoa 6 cánh, mềm, dài, thuôn, quả tròn.', 'Họ Măng Tây', '35 - 40 cm', 'Đất trồng Lưỡi hổ không kén đất, để lưỡi hổ sinh trưởng tốt cần sử dụng đất tơi xốp, đặc biệt cây không chịu được ngập úng. Nước cần giữ ẩm cho đất liên tục, tưới nước 3 ngày 1 lần cho cây. Lưu ý không nên tưới quá nhiều nước sẽ gây ngập úng cho bộ rễ của cây. Ánh sáng của Lưỡi hổ có thể sống ở môi trường ngoài trời cũng như khả năng chịu bóng bán phần tốt. Với những cây lưỡi hổ được sử dụng làm cây nội thất nên phơi nắng cho cây 2 tiếng/tuần. Phân bón cho lưỡi hổ để cây sinh trưởng tốt hơn cần bổ sung phân hữu cơ 2 tháng 1 lần. Cắt tỉa loại bỏ những lá già, vàng để tránh các loại nấm bệnh làm hại cây. Nhân giống cây lưỡi hổ có khả năng sinh tồn cao nên lưỡi hổ được  nhân giống chủ yếu bằng tách bụi.', NULL, NULL),
(6, 'Cây Tùng Bồng Lai', 'cay-tung-bong-lai', 'các vùng núi cao', 'cay-tung-bong-lai.jpg', 3, 'Thân cây nhỏ, chắc khỏe, dẻo dai. Tán lá rộng xấp xỉ 10cm. Lá Tùng bồng lai là cây lá kim, lá nhỏ, dài nhọn như cây kim, có màu xanh bóng. Lá mọc rất nhiều và dày, mọc xung quanh cành. Rễ ăn sâu bám chặt vào lòng đất hay tảng đá.', 'Họ Tùng, Thông', '30 - 40 cm', 'Tùng bồng lai là cây ưa bóng nên thích hợp được đặt để trên bàn làm việc, bàn phòng khách. Nếu đặt cây trong nhà thì một tuần bạn nên cho cây ra ngoài nắng khoảng 6-8 tiếng. Chế độ nước bạn nên chú ý đến độ ẩm của đất hàng ngày, cây cần rất ít nước. Tránh để cây ngập úng. Đất trồng thì bạn nên chọn loại đất trồng thoáng khí, tơi xốp để cây không bị ngập úng. Cây rất kỵ ngập úng nên bạn cần chọn loại đất có khả năng thoát nước tốt.\r\n\r\n', NULL, NULL),
(7, 'Cây  Mai chiếu thủy', 'cay-mai-chieu-thuy', 'miền Ðông Dương', 'cay-canh-mai-chieu-thuy-bonsai.jpg', 3, 'Cây thân gỗ có những nhánh dài mảnh, có lông mềm. Lá hình trái xoan - ngọn giáo, thuôn, hình dải - ngọn giáo, nhọn ở chóp, có góc ở gốc, hai mặt lá khác màu, hầu như không có cuống, dài 3-6,5 cm, rộng 1-2,5 cm. Hoa trắng, mọc thành xim dạng ngù ở ngọn các nhánh. Mỗi hoa cho ra 2 quả đại hình dải, có mũi và nhọn ở đỉnh, thót nhọn ở gốc, hơi rẽ đôi, màu đen đen, có khía dọc, dài 10–12 cm, rộng 3-3,5mm. Hạt hình dải dài 6mm, rộng 1mm mang chùm lông mềm màu trắng.', 'Họ Trúc Đào', '35 - 40 cm', 'Là loại cây có khả năng sinh trưởng mạnh mẽ phát triển được ở hầu hết các điều kiện khắc nghiệt từ khô hạn tới ngập úng. Tuy nhiên cây sinh ưa thích sáng và bóng râm một phần chính vì thế nó được trồng ở cả ba miền của nước ta. Có sức sống mạnh mẽ sinh trưởng tốt trên các loại đất thịt, đất phù sa, đất sẽ thậm chí đất đỏ vẫn trồng được. Vì thế người ta có thể trồng mai chiếu thủy trong chậu với một ít đất tuy nhiên cây vẫn sinh trưởng tốt nên được sử dụng nhiều làm bonsai. Nhiệt độ thích hợp từ 25 – 30 độ C rất phù hợp với các vùng có khí hậu hai mùa mưa nắng rõ rệt, mùa mưa cây sẽ đâm chồi nảy lộc mạnh mẽ, mùa nắng sẽ thay lá trổ hoa và phát triển chậm hơn. Độ PH đất trồng mai chiếu thủy từ 5,5 – 6,5 có thể bón phân chuồng, lân, kali… ít cần phân đạm.', NULL, NULL),
(8, 'Cây Phú Quý thuỷ sinh', 'cay-phu-quy-thuy-sinh', 'Indonesia', 'cay-phu-quy-de-ban-phong-thuy.jpg', 1, 'Cây Phú Quý có rễ chùm, to khỏe với thật nhiều rễ con dài khoảng 4-6cm màu trắng ngà.Thân cây được tạo thành bằng những bẹ lá, cuống lá có màu trắng hồng. Lá mỏng, viền lá có màu hồng đỏ, bên trong có màu xanh đậm. Cây rất dễ sống và chăm sóc, có thể trồng đất hoặc thủy sinh', 'Họ Ráy', '4 - 6 cm', 'Ánh sáng: Là cây ưa bóng mát, loài cây này có thể sống được trong môi trường ít ánh sáng, chỉ có ánh sáng điện huỳnh quang thôi, nó cũng có thể sinh trưởng và phát triển, tuy nhiên để lá lên màu đẹp thì bạn nên để cây ở nơi có ánh sáng buổi sớm và chiều muộn, tránh ánh nắng buổi trưa mùa hè có nhiệt độ cao sẽ khiến lá bị cháy nhìn sẽ không được đẹp. Nước: cây Phú Quý trồng thủy sinh cần thay nước trong chậu 1 lần/tuần. Khi thay nước, lưu ý rửa sạch bộ rễ, lau sạch thành chậu trong và ngoài. Phân bón: sử dụng dung dịch thuỷ sinh bán theo cây. Nhiệt độ: nhiệt độ từ 15–28°C là nhiệt độ lý tưởng. Nhưng trong điều kiện khắc nhiệt thì cây vẫn có thể chịu đựng được nhiệt độ dưới 10°C hoặc trên 35°C. Tuy nhiên đối với nhiệt độ cao hơn hoặc thấp quá cây sẽ chậm hoặc ngừng phát triển.', NULL, NULL),
(9, 'Cây Cau Tiểu Trâm', 'cay-cau-tieu-tram', 'châu Á nhiệt đới', 'cay-cau-tieu-tram-thuy-sinh-1.jpg', 1, 'Thường được trồng trong chậu sứ trắng, chậu thủy tinh, hình dáng trang nhã, sang trọng, trưng bày nơi hành lang, bệ cầu thang, lối ra vào, hoặc bàn làm việc, phòng khác, phòng họp. Có khả năng làm sạch không khí bằng cách hút các chất độc thải ra từ động cơ xe, xăng dầu, khói thuốc lá. Có thể lọc được bức xạ từ máy tính, đồ điện tử…. Là quà tặng động viên tinh thần trong nhiều dịp thi cử, tân gia, lễ tết, thăng chức, sinh nhật, khai trương, ...', 'Họ Cau', '20 - 200 cm', 'Đất trồng: trồng ở đất thịt, hoặc đất tơi xốp hơn, thoát nước tốt. Nên tạo hỗn hợp đất trồng gồm: đất thịt + trấu hun + phân hữu cơ + xỉ than. Đặc biệt, đây là loại cây có thể trồng thủy sinh không cần đất. Nước: nên tưới 2-3 lần/ tuần, mỗi lần từ 300-800ml tùy kích thước chậu. Kiểm tra đất ở bề mặt chậu se khô thì dùng bình xịt tưới ướt đất. Cây thủy sinh cần giữ lượng nước cao không quá ½ chiều cao bộ rễ, và thay nước cũng như loại bỏ rễ hỏng 1 lần/tuần. Ánh sáng: sinh trưởng ở điều kiện bình thường, sống được trong bóng râm mà chịu sáng cũng khá tốt. Mỗi tuần nên phơi cây ngoài ánh sáng mặt trời buổi sớm khoảng 2 tiếng là được. Nhiệt độ: cây cần đặt nơi mát vì chịu nóng và lạnh kém. Nhiệt độ thích hợp là từ 17 - 25 độ C\r\nĐộ ẩm: Cây ưa ẩm trung bình, khoảng 60-80%. Bón phân: có thể bón các loại phân nhả chậm, trùn quế, vi sinh, phân hữu cơ hoai mục, phân bò luân phiên để tăng cường vi chất cho cây. Phân nên được bón 2 tháng/lần.', NULL, '2019-11-30 12:48:48'),
(10, 'Cây Dành Dành', 'cay-danh-danh', 'Triều Tiên, Trung Quốc, Nhật Bản', 'danh-danh-ts001.jpeg', 1, 'Thường được trồng trang trí cảnh quan, làm sạch bầu không khí, mang lại không gian hứng khởi, vui tươi, ấm áp. Trồng ở những nơi nghiêm trang, thoát tục như Đình, Chùa. Cây còn là những vị thuốc quý giúp phục hồi vết thương, chữa đau mắt. Làm quà tặng ý nghĩa cho người mình thầm thương trộm nhớ', 'Họ Cà Phê', '20 -30 m', 'Vị trí: cây thích nơi sáng sủa, thoáng mát. Nước: thay nước thường xuyên, tuần 1 lần. Đất trồng: có thể trồng bán thuỷ sinh, cây được trồng trên khay đất nhỏ, nước được dẫn xuất từ đáy chậu lên khay bằng sợi vải. Nhân giống: gieo hạt, giâm chiết cành. Phân bón: dùng dung dịch thuỷ sinh nếu trồng hoàn toàn trong nước, hoặc bón thêm phân cho đất nếu trồng trên khay bán thuỷ sinh', NULL, NULL),
(11, 'Cây Bàng Vuông', 'cay-bang-vuong', 'Singapore', 'cay-bang-singapore.jpg', 1, 'Cây có dáng cây thẳng, lá đơn mọc cách đều nhau, tán lá rộng, đầu lá bầu tròn, màu xanh thẫm. Chiều cao trung bình từ 0,5-2m (để bàn hoặc trang trí nội thất đều được). Nhân giống dễ dàng bằng cách chiết cành hoặc ươm từ hạt. Làm chậu thuỷ sinh trang trí trên bàn làm việc, phòng họp, phòng khách. Thanh lọc không khí, khói bụi ', 'Họ Dâu Tằm', '0.5 - 2 cm', 'Đất: dùng ít đất nhưng đất cần tơi, xốp, không trữ nước. Ánh sáng: ánh sáng nhẹ, có thể sống được trong bóng râm, đèn huỳnh quang, quá nhiều ánh sáng sẽ bị phai màu. Nước: chú ý thay nước khi mực nước trong bình xuống quá thấp, hoặc trung bình 8-9 ngay thay một lần. Nhiệt độ: tốt nhất là vào khoảng 16-27 độ C. Phân bón: khoảng 2-3 tháng/lần, dùng phân bón lỏng pha loãng hoặc phân bón ngâm trong nước', NULL, NULL),
(12, 'Cây Nha Đam Thuỷ Sinh', 'cay-nha-dam-thuy-sinh', 'Trung cận Đông', 'cay-nha-dam-thuy-sinh.png', 1, 'Cây có gốc, thân ngắn, lá không có cuống, mọc sát thân, hướng lên trên. Lá to, dày, mọng nước, có hình lưỡi giáo, vỏ màu xanh tươi đẹp mắt, phần gốc mọc dày và theo chiều mở dần ra. Mép lá có răng nhọn như gai. Hoa mọc thành cụm, cành hoa dài khoảng 10cm. Hoa dài 3-4cm, màu vàng hoặc màu đỏ.', 'Họ Lan Nhật Quang', '10 - 14 cm ', 'Ánh sáng: cần đủ ánh sáng cây để phát triển tốt, có thể sống trong môi trường thiếu sáng, nhưng khoảng từ 3-5 ngày nên cho cây ra ngoài ánh sáng để quang hợp. Nhiệt độ: cây sợ lạnh và sương, nhiệt độ thích hợp nên vào khoảng 15-35 độ C. Nước: thay nước định kì, tuần 1 lần. Phân bón: dùng dung dịch dinh dưỡng để bón, nhỏ trực tiếp vào bình thủy sinh. Lưu ý đừng dùng nhiều, một giọt nhỏ mỗi lần bón là đủ.', NULL, NULL);

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
