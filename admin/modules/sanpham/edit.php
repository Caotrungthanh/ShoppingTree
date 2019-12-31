<?php
   $open = "danhmucsanpham";

    require_once __DIR__. "/../../autoload/autoload.php";
    
    $sql = "SELECT sanpham.*, danhmucsanpham.tendanhmuc as namecate FROM sanpham LEFT JOIN danhmucsanpham on danhmucsanpham.id = sanpham.danhmuc_id";

    // intval chuyển đổi sang kiếu số nguyên
    $id = intval(getInput('id'));
    
    // fetchID($table, $id) lấy tất cả các dữ liệu mà id được chọn (Database.php)
    $Editsanpham = $db -> fetchID("sanpham",$id);
    // Kiểm tra nếu trang caahp nhập danh mục trống thì in ra lỗi 
    if( empty($Editsanpham))
    {
        $_SESSION['error'] = " Dữ liệu không tồn tại ";
        redirectAdmin("sanpham");
    }    

    // Danh sách danh mục sản phẩm
    $danhmucsanpham = $db->fetchAll("danhmucsanpham");
    
    // Kiểm tra xem phương thức POST có tồn tại hay ko 
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $data =
        [
            "tensanpham"        => postInput('tensanpham'),
            "sanphamduongdan"   => to_slug(postInput('tensanpham')),
            "danhmuc_id"        => postInput('danhmuc_id'),
            "phanbo"            => postInput('phanbo'),
            "anhsanpham"        => postInput('anhsanpham'),
            "mota"              => postInput('mota'),
            "hothucvat"         => postInput('hothucvat'),
            "chieucao"          => postInput('chieucao'),
            "chamsoc"           => postInput('chamsoc'),
            "dacdiem"           => postInput('dacdiem'),
            "ynghiaphongthuy"   => postInput('ynghiaphongthuy')
        ];

        $error = [];

        // Kiểm tra nếu input rỗng
        if(postInput('danhmuc_id') == '')
        {
            $error['danhmuc_id'] = "Bạn hãy chọn tên danh mục";
        }

        if(postInput('tensanpham') == '')
        {
            $error['tensanpham'] = "Bạn hãy nhập đầy đủ tên sản phẩm";
        }

        if(postInput('phanbo') == '')
        {
            $error['phanbo'] = "Bạn hãy nhập phân bố.";
        }

        if(postInput('mota') == '')
        {
            $error['mota'] = "Bạn hãy nhập mô tả.";
        }

        if(postInput('hothucvat') == '')
        {
            $error['hothucvat'] = "Bạn hãy nhập họ thực vật.";
        }

        if(postInput('chieucao') == '')
        {
            $error['chieucao'] = "Bạn hãy nhập chiều cao.";
        }

        if(postInput('chamsoc') == '')
        {
            $error['chamsoc'] = "Bạn hãy nhập cách trồng.";
        }
        if(postInput('dacdiem') == '')
        {
            $error['dacdiem'] = "Bạn hãy nhập đặc điểm.";
        }
        if(postInput('ynghiaphongthuy') == '')
        {
            $error['ynghiaphongthuy'] = "Bạn hãy nhập ý nghĩa phong thủy.";
        }

        // Nếu error trống có nghĩa là không có lỗi
        if(empty($error))
        {
            if(isset($_FILES['anhsanpham']))
            {
                $file_name = $_FILES['anhsanpham']['name'];
                $file_tmp  = $_FILES['anhsanpham']['tmp_name'];
                $file_type = $_FILES['anhsanpham']['type'];
                $file_erro = $_FILES['anhsanpham']['error'];
                if( $file_erro == 0 )
                {
                    $part = ROOT ."sanpham/";
                    $data['anhsanpham'] = $file_name;
                }
            }
            $update = $db->update("sanpham", $data, array("id"=>$id));
            if($update > 0)
            {
                move_uploaded_file($file_tmp, $part.$file_name);
                $_SESSION['success'] = "Cập nhập sản phẩm thành công";
                redirectAdmin("sanpham");
            }
            else
            {
                $_SESSION['error'] = "Cập nhập sản phẩm thất bại";
                redirectAdmin("sanpham");
            }
        }
    }
?>

<?php require_once __DIR__. "/../../layouts/header.php";?>
<div id="content-wrapper">
    <div class="container-fluid">

        <h1>Cập nhập sản phẩm</h1>

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
            <li class="breadcrumb-item active">Cập nhập</li>
        </ol>

        <div class="clearfix"></div>
        <!-- Thông báo lỗi -->
        <?php require_once __DIR__. "/../../../partials/notification.php";?>
         

        <form class="form" action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Danh mục sản phẩm</label>
                    <select class="form-control col-md-8" name="danhmuc_id">
                        <option value=""> - Hãy chọn danh mục sản phẩm - </option>
                        <?php foreach($danhmucsanpham as $item) : ?>
                            <option value="<?php echo $item['id'] ?>" <?php echo $Editsanpham['danhmuc_id'] == $item['id'] ? "selected = 'selected'" : '' ?>> <?php echo $item['tendanhmuc'] ?></option>
                        <?php endforeach ?>
                    </select>
                    <?php if(isset($error['danhmucsanpham'])): ?>
                        <p class="text-danger ml-3"> <?php echo $error['danhmucsanpham'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nhập tên sản phẩm" name="tensanpham" value="<?php echo $Editsanpham['tensanpham'] ?>">
                    <?php if(isset($error['tensanpham'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['tensanpham'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Phân bố chủ yếu</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="phân bố chủ yếu" name="phanbo" value="<?php echo $Editsanpham['phanbo'] ?>">
                    <?php if(isset($error['phanbo'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['phanbo'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Họ thực vật</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="phân bố chủ yếu" name="hothucvat" value="<?php echo $Editsanpham['hothucvat'] ?>">
                    <?php if(isset($error['hothucvat'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['hothucvat'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group d-flex">
                <div class="col-sm-2 col-lg-2">
                    <label for="exampleInputEmail1">Chiều cao</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Chiều cao của cây" name="chieucao" value="<?php echo $Editsanpham['chieucao'] ?>">
                    <?php if(isset($error['chieucao'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['chieucao'] ?></p>
                    <?php endif ?>
                </div>
                 
                <div class="col-sm-6 col-lg-5 ">
                    <label for="exampleInputEmail1">Hình ảnh</label>
                    <input type="file" class="form-control" id="exampleInputEmail1" placeholder="Chọn hình" name="anhsanpham">
                    <?php if(isset($error['anhsanpham'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['anhsanpham'] ?></p>
                    <?php endif ?>
                </div>
                <img src="<?php echo duongdan() ?>/public/uploads/sanpham/<?php echo $Editsanpham['anhsanpham'] ?>" width="300px" height="300px" style="border: 2px solid #171717;">
            </div>
            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Giới thiệu</label>
                    <textarea name="mota" class="form-control" id="editor1" cols="20" rows="5"><?php echo $Editsanpham['mota'] ?></textarea>
                    <?php if(isset($error['mota'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['mota'] ?></p>
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Chăm sóc</label>
                    <textarea name="chamsoc" class="form-control" id="editor2" cols="20" rows="5"><?php echo $Editsanpham['chamsoc'] ?></textarea>
                    <?php if(isset($error['chamsoc'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['chamsoc'] ?></p>
                    <?php endif ?>
                </div>
            </div>

            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Đặc điểm</label>
                    <textarea name="dacdiem" class="form-control" id="editor3" cols="20" rows="5"></textarea>
                    <?php if(isset($error['dacdiem'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['dacdiem'] ?></p>
                    <?php endif ?>
                </div>
            </div>

            <div class="form-group">
                <div class="col">
                    <label for="exampleInputEmail1">Ý nghĩa phong thủy</label>
                    <textarea name="ynghiaphongthuy" class="form-control" id="editor4" cols="20" rows="5"></textarea>
                    <?php if(isset($error['ynghiaphongthuy'])) : ?>
                        <p class="text-danger ml-3"> <?php echo $error['ynghiaphongthuy'] ?></p>
                    <?php endif ?>
                </div>
            </div>

            <button type="submit" class="btn btn-success ml-3 pl-2">Lưu</button>
        </form>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /.content-wrapper -->

<?php require_once __DIR__. "/../../layouts/footer.php";  ?>
<script type="text/javascript" src="<?php echo duongdan() ?>public/admin/js/ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'editor1' );
    CKEDITOR.replace( 'editor2' );
    CKEDITOR.replace( 'editor3' );
    CKEDITOR.replace( 'editor4' );
</script>


 