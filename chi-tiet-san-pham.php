<?php 
    require_once __DIR__. "/autoload/autoload.php"; 
    
    // intval chuyển đổi sang kiếu số nguyên
    $id = intval(getInput('id'));

    // fetchID($table, $id) lấy tất cả các dữ liệu mà id được chọn (Database.php)
    $sanpham = $db -> fetchID("sanpham", $id);

    $Danhmuc_id = intval( $sanpham['danhmuc_id'] );
    $sql = "SELECT * FROM sanpham WHERE danhmuc_id = $Danhmuc_id ORDER BY id DESC LIMIT 3";
    $goi_y_cho_ban = $db -> fetchsql( $sql );
    
?>

    <?php require_once __DIR__. "/layouts/header.php";  ?>

        <div class="product mt-4">
            <div class="container">
                <h1 class="text-center pt-4 pb-4">chi tiết sản phẩm</h1>
                <div class="row">
                    <div class="col-md-12 col-lg-6 image-product">
                        <img class="card-img-top" src="<?php echo duongdan() ?>/public/uploads/sanpham/<?php echo $sanpham['anhsanpham'] ?>" width="200px" height="600px" alt="Card image cap">
                    </div>        
                    <div class="col-md-12 col-lg-6 info-product pt-2">    
                        <h2><?php echo $sanpham['tensanpham'] ?></h2>
                        <h4><?php echo $sanpham['sanphamduongdan'] ?></h4>
                        <div class="row mt-4">
                            <div class="col-12 tab-list">
                                <div class="tab">
                                    <button class="tablinks" onclick="openCity(event, 'gioithieu')">Giới thiệu</button>
                                    <button class="tablinks" onclick="openCity(event, 'dacdiem')">Đặc điểm</button>
                                    <button class="tablinks" onclick="openCity(event, 'phongthuy')">Phong thủy</button>
                                    <button class="tablinks" onclick="openCity(event, 'chamsoc')">Chăm sóc</button>
                                </div>
                            </div>
                            <div class="col-12 tab-list_show">
                                <div id="gioithieu" class="tabcontent">
                                    <p>
                                        <?php echo $sanpham['mota'] ?></p>
                                    <p>Chiều cao: <?php echo $sanpham['chieucao'] ?></p>
                                    <p>Phân bố: <?php echo $sanpham['phanbo'] ?></p>
                                </div>

                                <div id="dacdiem" class="tabcontent">
                                    <p><?php echo $sanpham['dacdiem'] ?></p>
                                </div>

                                <div id="phongthuy" class="tabcontent">
                                    <p><?php echo $sanpham['ynghiaphongthuy'] ?></p>
                                </div>

                                <div id="chamsoc" class="tabcontent">
                                    <p><?php echo $sanpham['chamsoc'] ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="goi-y mt-4">
                <h2>Gợi ý cho bạn</h2>
                <div class="row">
                    <?php foreach($goi_y_cho_ban as $item) : ?>
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
            </div>


        </div>
    <?php require_once __DIR__. "/layouts/footer.php";  ?>
