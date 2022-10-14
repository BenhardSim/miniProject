<?php
session_start();
    if(!isset($_SESSION['username'])){
        header("Location: ../login/login.php");
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Delete Data Penduduk</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>

<body>
    <?php
    require_once('../lib/db_login.php');
    $id = $_GET['id'];

    if (!isset($_POST['submit'])) {
        $query = 'SELECT * FROM tb_penduduk WHERE NIK="' . $id . '"';
        $result = $db->query($query);

        if (!$result) {
            die("Could not query the database: <br />" . $db->error);
        } else {
            while ($row = $result->fetch_object()) {
                $NIK = $row->NIK;
                $Nama = $row->Nama;
                $Jenis_Kelamin = $row->Jenis_Kelamin;
                $Kota = $row->Kota;
                $Provinsi = $row->Provinsi;
                $Tanggal_Lahir = $row->Tanggal_Lahir;
                $Status = $row->Status;
                $Agama = $row->Agama;
                $Pekerjaan = $row->Pekerjaan;
            }
        }
    } else {
        $query = 'DELETE FROM tb_penduduk  WHERE NIK="' . $id . '"';
        $result = $db->query($query);

        if (!$result) {
            die("Could not query the database: <br />" . $db->error);
        } else {
            $db->close();
            if(isset($_GET['kode_kota'])){
                $kota = $_GET['kode_kota'];
                header("Location: ../list-penduduk/view_population_city.php?kode_kota=".$kota."");
            }
            header("Location: search_penduduk.php");
        }
    }
    ?>


    <br>
    <div class="card">
        <div class="card-header">Confirm Delete Customers Data</div>
        <div class="card-body">
            <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) . '?id=' . $id; ?>" autocomplete="on" method="post">

                <div class="form-group">
                    <label for="name">Nama:</label>
                    <input type="text" class="form-control" disabled name="name" id="name" value="<?php echo $Nama; ?>">

                </div>

                <div class="form-group">
                    <label for="name">NIK:</label>
                    <input type="text" class="form-control" disabled name="NIK" id="name" value="<?php echo $NIK; ?>">

                </div>

                <div class="form-group">
                    <label for="name">Jenis Kelamin:</label>
                    <input type="text" class="form-control" disabled name="Jenis_Kelamin" id="name" value="<?php echo $Jenis_Kelamin; ?>">

                </div>

                <div class="form-group">
                    <label for="name">Kota:</label>
                    <input type="text" class="form-control" disabled name="Kota" id="name" value="<?php echo $Kota; ?>">

                </div>

                <div class="form-group">
                    <label for="name">Provinsi:</label>
                    <input type="text" class="form-control" disabled name="Provinsi" id="name" value="<?php echo $Provinsi; ?>">

                </div>

                <div class="form-group">
                    <label for="name">Tanggal Lahir:</label>
                    <input type="text" class="form-control" disabled name="Tanggal_Lahir" id="name" value="<?php echo $Tanggal_Lahir; ?>">

                </div>

                <div class="form-group">
                    <label for="name">Status:</label>
                    <input type="text" class="form-control" disabled name="Status" id="name" value="<?php echo $Status; ?>">

                </div>

                <div class="form-group">
                    <label for="name">Pekerjaan:</label>
                    <input type="text" class="form-control" disabled name="Pekerjaan" id="name" value="<?php echo $Pekerjaan; ?>">

                </div>

                <div class="form-group">
                    <label for="name">Agama:</label>
                    <input type="text" class="form-control" disabled name="Agama" id="name" value="<?php echo $Agama; ?>">

                </div>

                <br>
                <a href="../form/search_penduduk.php">
                    <button type="submit" class="btn btn-primary" name="submit" value="submit">Confirm</button>
                </a>
                <!-- <a href="view_customer.php" class="btn btn-secondary">Cancel</a> -->

            </form>
        </div>

    </div>
    <?php include('../footer.html') ?>
    <?php
    $db->close();
    ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>

</html>