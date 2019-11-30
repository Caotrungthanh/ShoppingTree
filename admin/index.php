<?php
    $open = "sanpham";
    require_once __DIR__. "/../autoload/autoload.php";

    // Lấy tất cả thông tin danh mục sản phẩm trong DB
    // Hàm fetchAll để coi chi tiết "Database.php"
    $listsanpham = $db -> fetchAll("sanpham");
    
    // Danh sách danh mục sản phẩm
    $danhmucsanpham = $db -> fetchAll("danhmucsanpham");

    if( isset($_GET['page']) )
    {
        $p = $_GET['page'];
    }
    else
    {
        $p = 1;
    }

    $sql = "SELECT sanpham.*, danhmucsanpham.tendanhmuc as namecate FROM sanpham LEFT JOIN danhmucsanpham on danhmucsanpham.id = sanpham.danhmuc_id";
    $sanpham = $db -> fetchJone('sanpham', $sql, $p, 3, true);

    if( isset($sanpham['page']) )
    {
        $sotrang = $sanpham['page'];
        unset( $sanpham['page'] );
    }  
?>

<?php require_once __DIR__. "/layouts/header.php";  ?>

<div id="content-wrapper">
    <div class="container-fluid">

    <h1>trang quản trị của admin</h1>
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Quản trị</li>
        </ol>

        <h2>Bảng Danh Mục</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên danh mục</th>
                    <th>Tên danh mục đường dẫn</th>
                    <th>Trạng thái hoạt động</th>
                    <th>Thời gian tạo</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <?php $stt = 1; foreach($danhmucsanpham as $item) : ?>
                    <tr>
                        <td><?php echo $stt ?></td>
                        <td><?php echo $item['tendanhmuc'] ?></td>
                        <td><?php echo $item['danhmucduongdan'] ?></td>
                        <td>
                            <a class="btn <?php echo $item['trangthai'] == 1 ? 'btn-success' : 'btn-danger' ?>" href="trangthai.php?id=<?php echo $item['id'] ?>">
                                <?php echo $item['trangthai'] == 1 ? 'Hiển thị' : 'Ẩn' ?>
                            </a>    
                        </td>
                        <td><?php echo $item['thoigiantao'] ?></td>
                        <td><?php echo $item['capnhapluc'] ?></td>
                    </tr>
                <?php $stt++; endforeach ?>
            </tbody>
        </table>

        <h2 class="mt-4">Bảng Thông Tin Cây</h2>
        <table class="table">
                <thead>
                    <tr class="filters">
                        <th>STT</th>
                        <th>Tên sp</th>
                        <th>Ảnh</th>
                        <th>Danh mục sp</th>
                        <th>Mô tả</th>
                        <th>Họ thực vật</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $stt = 1; foreach($sanpham as $item) : ?>
                        <tr>
                            <td><?php echo $stt ?></td>
                            <td><?php echo $item['tensanpham'] ?></td>
                            <td>
                                <img src="<?php echo duongdan() ?>/public/uploads/sanpham/<?php echo $item['anhsanpham'] ?>" width="150px" height="150px">
                            </td>
                            <td><?php echo $item['namecate'] ?></td>
                            <td><textarea id="" cols="60" rows="5"><?php echo $item['mota'] ?></textarea></td>
                            <td><?php echo $item['hothucvat'] ?></td>
                        </tr>
                    <?php $stt++; endforeach ?>
                </tbody>
        </table>
        <div class="float-right">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <?php for( $i = 1; $i <= $sotrang; $i++ ) : ?>
                        <?php 
                            if( isset($_GET['page']) )
                            {
                                $p = $_GET['page'];
                            }
                            else
                            {
                                $p = 1;
                            }
                        ?>
                        <li class="<?php echo ($i == $p) ? 'active' : '' ?> page-item">
                            <a href="?page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a>
                        </li>
                    <?php endfor; ?>
                </ul>
            </nav>
        </div>

    </div>
    <!-- /.container-fluid -->
</div>
<!-- /.content-wrapper -->

<?php require_once __DIR__. "/layouts/footer.php";  ?>


 