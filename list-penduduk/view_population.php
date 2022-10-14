<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>View Population</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="assets/style.css" />
    </head>
    <body>
        <?php include('../header.html'); ?>
        <article class="container detail horizontal-center row align-items-center">
            <div class="img empty-profile col-md-4 horizontal-center">
                <img src="assets/empty-profile.png" alt="foto profil kosong" width="200px;" />
            </div>
            <div class="information col-md-6 horizontal-center">
                <dl class="row align-content-center">
                    <?php
                        require_once('../lib/db_login.php');
                        $kode_provinsi = $_GET['kode_provinsi']; // mendapatkan kode provinsi yang dilewatkan ke url
                        
                        $query = "SELECT * FROM tb_provinsi WHERE Kode_Provinsi=" . $kode_provinsi ;
                        $result = $db->query($query);
                        if (! $result ) {
                            die("Could not query the database: <br>" . $db->error);
                        }
                        while ($row = $result->fetch_object()) {
                            echo '<dt class="col-sm-3">Nama Provinsi</dt>';
                            echo '<dd class="col-sm-9">' . $row->Nama_Provinsi . '</dd>';

                            echo '<dt class="col-sm-3">Gubernur</dt>';
                            echo '<dd class="col-sm-9">' . $row->Gubernur . '</dd>';

                            echo '<dt class="col-sm-3">Wakil Gubernur</dt>';
                            echo '<dd class="col-sm-9">' . $row->Wakil_Gubernur . '</dd>';

                            echo '<dt class="col-sm-3">Jumlah Penduduk</dt>';
                            echo '<dd class="col-sm-9">' . $row->Jumlah_Penduduk . '</dd>';
                        }
                    ?>  
                </dl>
            </div>
        </article>

        <br />
        <div class="container horizontal-center">
            <a href="../form/add_penduduk.php" class="btn btn-primary">+ Add Data Penduduk</a> <br />
        </div>

        <article class="container list-penduduk text-center">
            <table class="table table-hover">
                <thead class="table-primary">
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
        </article>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
