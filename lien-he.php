<?php 
    require_once __DIR__. "/autoload/autoload.php"; 
?>

<?php require_once __DIR__. "/layouts/header.php";  ?>
    <div class="contact">
        <form method="post" action="">
            <div class="form-group">
                <label for="my-input">Text</label>
                <input id="my-input" class="form-control" type="text" name="tennguoigui">
            </div>
            <div class="form-group">
                <label for="my-input">Text</label>
                <input id="my-input" class="form-control" type="text" name="email">
            </div>
            <div class="form-group">
                <label for="my-input">Text</label>
                <textarea name="phanhoi" id="" cols="30" rows="10"></textarea>
            </div>
            <input class="btn btn-success" type="submit" name="">
        </form>
    </div>
<?php require_once __DIR__. "/layouts/footer.php";  ?>