<?php 
    require_once __DIR__. "/autoload/autoload.php"; 
    
    $sqlHomeCate = "SELECT tendanhmuc, id FROM danhmucsanpham WHERE trangthai = 1 ORDER BY capnhapluc";
    $TrangthaiDanhMuc = $db -> fetchsql($sqlHomeCate);

    $data = [];

    foreach ($TrangthaiDanhMuc as $item)
    {
        $IDdanhmuc = intval($item['id']);
        $sql = "SELECT * FROM sanpham WHERE danhmuc_id = $IDdanhmuc LIMIT 6";
        $TrangThaiSP = $db -> fetchsql($sql);
        $data[$item['tendanhmuc']] = $TrangThaiSP;
    }
?>

<?php require_once __DIR__. "/layouts/header.php";  ?>

        <div class="container">
        <div class="row">
            <div class="col-3 p-0">
                <ul class="list-group ">
                    <?php foreach($danhmucsanpham as $item) : ?>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <a class="text-decoration-none text-success" href="danh-muc-san-pham.php?id=<?php echo $item['id'] ?>"><?php echo $item['tendanhmuc'] ?></a>
                            <span class="badge badge-success badge-pill">14</span>
                        </li>     
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="col-9 p-0">
                <!-- CAROUSEL -->
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block carousel-img float-right" src="../ShoppingTree/public/frontend/img/bonsai1.png" alt="">
                            <div class="d-flex align-items-center ftco-animate">
                                <div class="text">
                                    <span class="subheading">#cây bonsai</span>
                                    <div class="horizontal">
                                        <h1 class="mb-4 mt-3"> Bonsai (tiếng Nhật: 盆栽)</h1>
                                        <!-- <p class="mb-4 horizontal-review">
                                            Hán-Việt: bồn tài, nghĩa là "cây con trồng trong chậu" là loại cây cảnh nhỏ có dáng cổ thụ trồng trong chậu cảnh. Bonsai có nguồn gốc từ núi cao Trung Quốc và sau đó nó được phổ biến sang Nhật Bản và Hàn Quốc và khi họ phát hiện trên núi có các cây nhỏ mọc hoang dã giống cây cổ thụ, có sức sống mãnh liệt trong mọi điều kiện khó khăn.
                                        </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block carousel-img float-right" src="../ShoppingTree/public/frontend/img/kim-phat-tai.png" alt="">
                            <div class="d-flex align-items-center ftco-animate">
                                <div class="text">
                                    <span class="subheading">#cây cảnh để bàn</span>
                                    <div class="horizontal">
                                        <h1 class="mb-4 mt-3"> Cây Kim Tiền (Cây Kim Phát Tài)</h1>
                                        <!-- <p class="mb-4 horizontal-review">
                                            Cây Kim Tiền (cây Kim Phát Tài) cây trồng nội thất, văn phòng, trang trí cửa hàng mang ý nghĩa phong thủy của sự phú quý, tiền tài. Cây Kim Tiền phù hợp với các loại chậu cảnh dễ chăm sóc, cây sống lâu năm.                                
                                        </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block carousel-img float-right" src="../ShoppingTree/public/frontend/img/bamboo-stock.png" alt="">
                            <div class="d-flex align-items-center ftco-animate">
                                <div class="text">
                                    <span class="subheading">#cây Trúc Nhật Bản</span>
                                    <div class="horizontal">
                                        <h1 class="mb-4 mt-3"> Trúc phú quý </h1>
                                        <!-- <p class="mb-4 horizontal-review">
                                        Trúc phú quý là một loài cây ưa bóng mát và chịu bóng râm nên khi trồng, chỉ cần đặt cây ở những nơi không có nắng quá gay gắt, nơi có bóng mát là cây sẽ luôn tươi tốt. Cây có thể phát triển cao khoảng 40 – 50 cm, nhưng thường được cắt gọn để đan xếp thành những hình dáng đẹp mắt.
                                        </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END CAROUSEL -->
            </div>
        </div>
        </div>

        <div class="product">
            <div class="container">
                <?php foreach($data as $key => $value) : ?>
                    <div class="product-content">
                        <h1 class="text-center"><?php echo $key ?></h1>
                        <div class="row">
                            <?php foreach($value as $item) : ?>
                                <div class="col-md-12 col-lg-4 list-product text-center">
                                    <div class="card list-product_item" style="width: 18rem;">
                                        <a href="chi-tiet-san-pham.php?id=<?php echo $item['id'] ?>">
                                            <img class="card-img-top" src="<?php echo duongdan() ?>/public/uploads/sanpham/<?php echo $item['anhsanpham'] ?>" width="100%" height="400px" alt="Card image cap">
                                        </a>
                                        <div class="card-body">
                                            <h5 class="card-title"><?php echo $item['tensanpham'] ?></h5>
                                            <p class="card-text"><?php echo $item['hothucvat'] ?></p>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div> 
                    </div>   
                <?php endforeach; ?>   
            </div>
        </div>




<?php require_once __DIR__. "/layouts/footer.php";  ?>
