<!DOCTYPE html>
<html>
<head>
    <title>Upload File</title> 
</head>

<body>
    <form action="uploadfoto.php" method="get" enctype="multipart/form-data">
        Pilih file: <input type="file" name="url" />
        <br></br>
        <input type="submit" name="upload" value="upload" />
        <br></br>
        <input  type="text" name="caption" value="caption"> Input Caption</input>
        <br><br>
        <input type="text" name="like" value="like"> Jumlah Like </input>
    </form> 
</body> 
</html>