<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: ../login/login.php");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Populasi Kota</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
    <!-- my css -->
    <link rel="stylesheet" href="assets/style.css">
</head>

<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="../form/search_penduduk.php">StatInfo</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <a href="../form/logout.php" class="btn btn-danger" style="margin-left: 1300px;">Logout</a>
                </ul>


            </div>
        </div>
    </nav>

    <br />
    <div class="container horizontal-center">
        <a href="../form/add_penduduk.php" class="btn btn-primary">+ Add Data Penduduk</a> <br />
    </div>
    <br><br>
    <div class="container ">
        <div class="row justify-content-center ">

            <div class="col-5 content">
                <div class="prof-box">
                    <div class="text-center rounded">
                        <img src="assets/empty-profile.png" alt="foto profil kosong" width="150px;" />
                    </div>
                    <div class="center-content">
                        <dl class="row align-content-center">
                            <?php
                            require_once('../lib/db_login.php');
                            $kode_kota = $_GET['kode_kota'];
                            $jumlah_penduduk = mysqli_num_rows($db->query("SELECT * FROM tb_penduduk WHERE Kota='" . $kode_kota . "'"));


                            $query = "SELECT * FROM tb_kota WHERE Kode_Kota='" . $kode_kota . "'";
                            $result = $db->query($query);
                            if (!$result) {
                                die("Could not query the database: <br>" . $db->error);
                            }
                            while ($row = $result->fetch_object()) {
                                echo '<dt class="col-sm-6">Nama Kota</dt>';
                                echo '<dd class="col-sm-6">: ' . $row->Nama_Kota . '</dd>';

                                echo '<dt class="col-sm-6">Walikota</dt>';
                                echo '<dd class="col-sm-6">: ' . $row->Walikota . '</dd>';

                                echo '<dt class="col-sm-6">Wakil Walikota</dt>';
                                echo '<dd class="col-sm-6">: ' . $row->Wakil_Walikota . '</dd>';

                                echo '<dt class="col-sm-6">Jumlah Penduduk</dt>';
                                echo '<dd class="col-sm-6">: ' . $jumlah_penduduk . '</dd>';
                            }
                            ?>
                        </dl>
                    </div>
                </div>
            </div>

            <div class="col-7 content text-center">
                <table class="table table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Nama</th>
                            <th>NIK</th>
                            <th>Jenis Kelamin</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <?php
                            $query = "SELECT * FROM tb_penduduk WHERE Kota='" . $kode_kota . "'";
                            $result = $db->query($query);
                            if (!$result) {
                                die("Could not query the database: <br>" . $db->error);
                            }
                            while ($row = $result->fetch_object()) {
                                echo "<tr>";
                                echo "<td>" . $row->Nama . "</td>";
                                echo "<td>" . $row->NIK . "</td>";
                                echo "<td>" . $row->Jenis_Kelamin . "</td>";
                                echo "<td><a href='../form/detail.php?nik=" . $row->NIK . "' class='btn btn-primary'>Detail</a> ";
                                echo "<a href='../form/edit_penduduk.php?nik=" . $row->NIK . "' class='btn btn-warning'>Edit</a> ";
                                echo "<a href='../form/confirm_delete.php?id=" . $row->NIK . "&kode_kota=" . $kode_kota . "' class='btn btn-danger'>Hapus</a></td>";
                                echo "</tr>";
                            }
                            $result->free();
                            $db->close();
                            ?>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>