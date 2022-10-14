<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Populasi Provinsi</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
        crossorigin="anonymous"
    />
    <!-- my css -->
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Logo</a>
            <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#collapsibleNavbar"
            >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            role="button"
                            data-bs-toggle="dropdown"
                            >Dropdown</a
                        >
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Link</a></li>
                            <li>
                                <a class="dropdown-item" href="#">Another link</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">A third link</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <br />
    <div class="container horizontal-center">
        <a href="../form/add_penduduk.php" class="btn btn-primary">+ Add Data Penduduk</a> <br />
    </div>
    <br><br>
    <div class="container">
        <div class="row justify-content-center ">
            <div class="col-3 content">
                <div class="text-center">
                    <img src="assets/empty-profile.png" alt="foto profil kosong" width="150px;" />
                </div>
                <div class="center-content">
                    <dl class="row align-content-center">
                        <?php
                            require_once('../lib/db_login.php');
                            $kode_provinsi = $_GET['kode_provinsi']; // mendapatkan kode provinsi yang dilewatkan ke url
                            $jumlah_penduduk = mysqli_num_rows($db->query("SELECT * FROM tb_penduduk WHERE Provinsi=" . $kode_provinsi));
                                
                            $query = "SELECT * FROM tb_provinsi WHERE Kode_Provinsi=" . $kode_provinsi ;
                            $result = $db->query($query);
                            if (! $result ) {
                                die("Could not query the database: <br>" . $db->error);
                            }
                            while ($row = $result->fetch_object()) {
                                echo '<dt class="col-sm-6">Nama Provinsi</dt>';
                                echo '<dd class="col-sm-6">: ' . $row->Nama_Provinsi . '</dd>';
    
                                echo '<dt class="col-sm-6">Gubernur</dt>';
                                echo '<dd class="col-sm-6">: ' . $row->Gubernur . '</dd>';
    
                                echo '<dt class="col-sm-6">Wakil Gubernur</dt>';
                                echo '<dd class="col-sm-6">: ' . $row->Wakil_Gubernur . '</dd>';
    
                                echo '<dt class="col-sm-6">Jumlah Penduduk</dt>';
                                echo '<dd class="col-sm-6">: ' . $jumlah_penduduk . '</dd>';
                            }
                        ?>  
                    </dl>
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
                                $query = "SELECT * FROM tb_penduduk WHERE Provinsi=" . $kode_provinsi;
                                $result = $db->query($query);
                                if(! $result){
                                    die ("Could not query the database: <br>" . $db->error);
                                }
                                while ($row = $result->fetch_object()) {
                                    echo "<tr>";
                                    echo "<td>" . $row->Nama . "</td>";
                                    echo "<td>" . $row->NIK . "</td>";
                                    echo "<td>" . $row->Jenis_Kelamin . "</td>";
                                    echo "<td><a href='../form/detail.php?nik=".$row->NIK."' class='btn btn-primary'>Detail</a> ";
                                    echo "<a href='../form/edit_penduduk.php?nik=".$row->NIK."' class='btn btn-warning'>Edit</a> ";
                                    echo "<a href='../form/confirm_delete.php?id=".$row->NIK."' class='btn btn-danger'>Hapus</a></td>";
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

 