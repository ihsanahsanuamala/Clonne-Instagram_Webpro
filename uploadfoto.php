<?php
session_start();
include_once('koneksi.php');

 
$url = $_FILES['url']['name'];
print_r($_FILES) ;
$caption = $_GET['caption'];
$like = $_GET['like']; 

        // $data = mysqli_query($koneksi,"INSERT INTO photo($url) VALUES ('$namaFile')");
        $data = mysqli_query($koneksi,"INSERT INTO photo(url, caption, like) VALUES ('$url','$caption',$like)");


        

                // ambil data file
                
                $namaSementara = $_FILES['url']['tmp_name'];

                // tentukan lokasi file akan dipindahkan
                $dirUpload = "terupload/";

                // pindahkan file
                $terupload = move_uploaded_file($namaSementara, $dirUpload.$url);

               
                 header("location:feed.php");

        
?>