<?php
// session_start();
//     if(!isset($_SESSION['username'])){
//         header("Location: login.php");
//     }
?>
<?php include('navbar.php') ?>
<?php include('../header.html') ?>
<?php
require_once('../lib/db_login.php');
if (isset($_GET['save'])) {
    $valid = true;

    $nik = $_GET['nik'];

    if ($nik == '') {
        $error_nik = "NIK is required";
        $valid = false;
    } elseif (!preg_match("/^[0-9]{16}$/", $nik)) {
        $error_nik = "NIS hanya dapat berisi angka dan digitnya harus 16";
        $valid = false;
    }

    $name = $_GET['name'];
    if ($name == '') {
        $error_name = "Name is required";
        $valid = false;
    } elseif (!preg_match("/^[a-zA-Z ]*$/", $name)) {
        $error_name = "Nama hanya bisa berisi huruf dan spasi";
    }

    $gender = $_GET['gender'];
    if ($gender == '') {
        $error_gender = "Gender is required";
        $valid = false;
    }

    $provinsi = $_GET['provinsi'];
    if ($provinsi == '') {
        $error_provinsi = "Provinsi is required";
        $valid = false;
    }

    $kota = $_GET['kota'];
    if ($kota == '') {
        $error_kota = "Kota is required";
        $valid = false;
    }

    $tanggal = $_GET['tanggal'];
    if ($tanggal == '') {
        $error_tanggal = "Tanggal is required";
        $valid = false;
    }

    $kawin = $_GET['kawin'];
    if ($kawin == '') {
        $error_kawin = "Status kawin is required";
        $valid = false;
    }

    $agama = $_GET['agama'];
    if ($agama == '') {
        $error_agama = "Agama is required";
        $valid = false;
    }

    $job = $_GET['job'];
    if ($job == '') {
        $error_job = "Job is required";
        $valid = false;
    }



    if ($valid) {
        $query = "
        insert into `tb_penduduk`(`nik`, `nama`, `jenis_kelamin`, `kota`, `provinsi`, `tanggal_lahir`, `status`, `agama`, `pekerjaan`)
        values
        (
         '" . $_GET['nik'] . "', 
         '" . $_GET['name'] . "',
         '" . $_GET['gender'] . "',
         '" . $_GET['provinsi'] . "',
         '" . $_GET['kota'] . "',
         '" . $_GET['tanggal'] . "',
         '" . $_GET['kawin'] . "',
         '" . $_GET['agama'] . "', 
         '" . $_GET['job'] . "');
        ";
        $result = $db->query($query);

        if (!$result) {
            die("Could not query the database: <br>" . $db->error . "<br>Query: " . $query);
        } else {
            $db->close();
            header("Location: view_population.php");
        }
    }
}

?>
<div class="">
    <div class="header" style="margin: 10px;"><h2>Isi Data Penduduk</h2></div>
    <div class="card-body box2">
        <br>
        <form action="" autocomplete="on" method="GET">

            <table>
                <tr>
                    <td><label for="nik" class="form-label">NIK:</label></td>
                    <td><input type="text" class="form-control" name="nik" id="nik" value="<?php if (isset($nik)) echo $nik; ?>"></td>
                    <td>
                        <div class="error"><?php if (isset($error_nik)) echo $error_nik; ?></div>
                    </td>

                </tr>

                <tr>
                    <td><label for="name" class="form-label">Nama:</label></td>
                    <td><input type="text" class="form-control" name="name" id="name" value="<?php if (isset($name)) echo $name; ?>"></td>
                    <td>
                        <div class="error"><?php if (isset($error_name)) echo $error_name; ?></div>
                    </td>

                </tr>

                <tr>
                    <td><label for="gender" class="form-label">Jenis Kelamin:</label></td>
                    <td>
                        <select class="form-control" name="gender" id="gender">
                            <option value="" <?php if (!isset($gender)) echo 'selected="true"'; ?>>--Pilih Jenis Kelamin--</option>
                            <option value="Pria" <?php if (isset($gender) && $gender == "Pria") echo 'selected="true"'; ?>>Pria</option>
                            <option value="Wanita" <?php if (isset($gender) && $gender == "Wanita") echo 'selected="true"'; ?>>Wanita</option>
                        </select>
                    </td>
                    <td>
                        <div class="error"><?php if (isset($error_gender)) echo $error_gender; ?></div>
                    </td>
                </tr>

                <tr>
                    <td><label for="provinsi" class="form-label">Provinsi</label></td>
                    <td>
                        <select class="form-control" name="provinsi" id="provinsi" onchange="getCity(this.value)">
                            <option value="" <?php if (!isset($provinsi)) echo 'selected="true"'; ?>>--Pilih Provinsi--</option>
                            <?php
                            $queryProv = "select * from tb_provinsi";
                            $result = $db->query($queryProv);
                            if (!$result) {
                                die('query salah !!');
                            } else {
                                while ($row = $result->fetch_object()) {
                                    if (isset($provinsi) && $provinsi == $row->Kode_Provinsi) {
                                        echo '<option value="' . $row->Kode_Provinsi . '" selected=true>' . $row->Nama_Provinsi . '</option>';
                                    } else {
                                        echo '<option value="' . $row->Kode_Provinsi . '">' . $row->Nama_Provinsi . '</option>';
                                    }
                                }
                            }
                            ?>
                        </select>
                    </td>
                    <td>
                        <div class="error"><?php if (isset($error_provinsi)) echo $error_provinsi; ?></div>
                    </td>
                </tr>

                <tr>
                    <td><label for="kota" class="form-label">Kota:</label></td>
                    <td>
                        <div id="drop_down_city">
                            <?php
                            if (isset($provinsi)) {
                                $queryCity = "select * from tb_kota where Asal_Provinsi='" . $provinsi . "'";
                                $result = $db->query($queryCity);
                                if (!$result) {
                                    die('query salah !!');
                                } else {
                                    // echo '<h1>nice</h1>';
                                    echo '<select class="form-control" name="kota" id="kota" required>';
                                    while ($row = $result->fetch_object()) {
                                        if (isset($kota) && $kota == $row->Kode_Kota) {
                                            echo '<option value="' . $row->Kode_Kota . '" selected=true>' . $row->Nama_Kota . '</option>';
                                        } else {
                                            echo '<option value="' . $row->Kode_Kota . '">' . $row->Nama_Kota . '</option>';
                                        }
                                    }
                                    echo '</select>';
                                }
                            } else {
                                echo '<select class="form-control" name="kota" id="kota">
                                    <option value=""></option>
                                    </select>';
                            }
                            ?>

                        </div>
                    </td>
                    <td>
                        <div class="error"><?php if (isset($error_kota)) echo $error_kota; ?></div>
                    </td>
                </tr>

                <tr>
                    <td><label for="tanggal" class="form-label">Tanggal Lahir:</label></td>
                    <td><input type="date" class="form-control" name="tanggal" id="tanggal" value=""></td>
                    <td>
                        <div class="error"><?php if (isset($error_tanggal)) echo $error_tanggal; ?></div>
                    </td>

                </tr>

                <tr>
                    <td><label for="kawin" class="form-label">Status Kawin:</label></td>
                    <td>
                        <select class="form-control" name="kawin" id="kawin">
                            <option value="" <?php if (!isset($kawin)) echo 'selected="true"'; ?>>--Pilih Status Perkawinan--</option>
                            <option value="Kawin" <?php if (isset($kawin) && $kawin == "Kawin") echo 'selected="true"'; ?>>Kawin</option>
                            <option value="Belum Kawin" <?php if (isset($gender) && $gender == "Belum Kawin") echo 'selected="true"'; ?>>Belum Kawin</option>
                        </select>
                    </td>
                    <td>
                        <div class="error"><?php if (isset($error_kawin)) echo $error_kawin; ?></div>
                    </td>
                </tr>

                <tr>
                    <td><label for="agama" class="form-label">Agama:</label></td>
                    <td>
                        <select class="form-control" name="agama" id="agama">
                            <option value="" <?php if (!isset($agama)) echo 'selected="true"'; ?>>--Pilih Agama-</option>
                            <option value="Hindu" <?php if (isset($agama) && $agama == "Hindu") echo 'selected="true"'; ?>>Hindu</option>
                            <option value="Buddha" <?php if (isset($agama) && $agama == "Buddha") echo 'selected="true"'; ?>>Buddha</option>
                            <option value="Islam" <?php if (isset($agama) && $agama == "Islam") echo 'selected="true"'; ?>>Islam</option>
                            <option value="Katolik" <?php if (isset($agama) && $agama == "Katolik") echo 'selected="true"'; ?>>Katolik</option>
                            <option value="Kristen" <?php if (isset($agama) && $agama == "Kristen") echo 'selected="true"'; ?>>Kristen</option>
                        </select>
                    </td>
                    <td>
                        <div class="error"><?php if (isset($error_agama)) echo $error_agama; ?></div>
                    </td>
                </tr>

                <tr>
                    <td><label for="job" class="form-label">Pekerjaan:</label></td>
                    <td><input type="text" class="form-control" name="job" id="job" value=""></td>
                    <td>
                        <div class="error"><?php if (isset($error_job)) echo $error_job; ?></div>
                    </td>

                </tr>

                <tr>
                    <br><br>
                    <td>
                        <button type="submit" class="btn-submit" name="save" value="save" id="save">Save</button><a href="view_population.php">
                    </td>
                    <td><button onclick="javascript:history.back()" type="button" class="btn-cancel" name="cancel" value="cancel">Cancel</button></a></td>
                </tr>
            </table>
        </form>
    </div>
</div>

<?php
$db->close();
?>
<?php include('../footer.html') ?>