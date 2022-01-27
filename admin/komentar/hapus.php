<?php
session_start();
    include '../../config/database.php';

    $nmor=$_POST["nmor"];
    $gambar=$_POST["gambar"];

    $sql="delete from komentar where nmor=$nmor";
    $hapus_komentar=mysqli_query($kon,$sql);


?>