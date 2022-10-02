<?php require_once('../lib/db_login.php');

$nik = $_GET['nik'];

// validasi nilai pada saat di submit
if (isset($_GET['submit'])) {
} else {
    $query = "select * from tb_penduduk where NIK='" . $nik . "'";
    $result = $db->query($query);
    if (!$result) {
        die('query salah !!');
    } else {
        while ($row = $result->fetch_object()) {
            $nik = $row->NIK;
            $name = $row->Nama;
            $jenis_kelamin = $row->Jenis_Kelamin;
            $kota = $row->Kota;
            $provinsi = $row->Provinsi;
            $tanggal_lahir = $row->Tanggal_Lahir;
            $status = $row->Status;
            $agama = $row->Agama;
            $pekerjaan = $row->Pekerjaan;
        }
        $result->free();
    }
}

?>
<?php include('../header.html') ?>
<section class="cont">
    <div class="profile">
        <div class="img-prof">ss</div>
    </div>
    <div class="form-input">
        <form action="">
            <div>
                <label for="NIK">NIK : </label><br>
                <input type="text" name="nik" id="nik" class="input-txt" value="<?php if (isset($nik)) echo $nik ?>"><br>
            </div><br>

            <div>
                <label for="nama">Nama : </label><br>
                <input type="text" name="nama" id="nama" class="input-txt" value="<?php if (isset($name)) echo $name ?>"><br>
            </div><br>

            <!-- drop down -->
            <div>
                <label for="jenis_kelamin">Jenis Kelamin : </label><br>
                <select name="jenis_kelamin" id="jenis_kelamin">
                    <option value="pria" <?php if (isset($jenis_kelamin) && $jenis_kelamin == 'pria') echo 'selected=true'; ?>>Pria</option>
                    <option value="wanita" <?php if (isset($jenis_kelamin) && $jenis_kelamin == 'wanita') echo 'selected=true'; ?>>Wanita</option>
                </select>
            </div>

            <br>
            <label for="provinsi">Provinsi : </label><br>
            <div>
                <select name="provinsi" id="provinsi" onchange="getCity(this.value)">
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
            </div><br>

            <div id="drop_down_city">
                <label for="kota">Kota : </label><br>
                <select name="kota" id="kota">
                    <?php
                    $queryCity = "select * from tb_kota";
                    $result = $db->query($queryCity);
                    if (!$result) {
                        die('query salah !!');
                    } else {
                        while ($row = $result->fetch_object()) {
                            if (isset($kota) && $kota == $row->Kode_Kota) {
                                echo '<option value="' . $row->Kode_Kota . '" selected=true>' . $row->Nama_Kota . '</option>';
                            } else {
                                echo '<option value="' . $row->Kode_Kota . '">' . $row->Nama_Kota . '</option>';
                            }
                        }
                    }
                    ?>
                </select><br>
            </div>
            <br>
            <div>
                <label for="tanggal_lahir">Tanggal Lahir : </label><br>
                <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="input-txt" value="<?php if (isset($tanggal_lahir)) echo $tanggal_lahir ?>"><br>
            </div><br>

            <div>
                <label for="status_pernikahan">Status Pernikahan : </label><br>
                <select name="status_pernikahan" id="status_pernikahan">
                    <option value="blm kawin" <?php if (isset($status) && $status == 'blm kawin') echo 'selected=true'; ?>>blm kawin</option>
                    <option value="sudah kawin" <?php if (isset($status) && $status == 'sudah kawin') echo 'selected=true'; ?>>sudah kawin</option>
                </select><br>
            </div>
            <br>

            <div>
                <label for="agama">Agama : </label><br>
                <select name="agama" id="agama">
                    <option value="kristen" <?php if (isset($agama) && $agama == 'kristen') echo 'selected=true'; ?>>kristen</option>
                    <option value="katolik" <?php if (isset($agama) && $agama == 'katolik') echo 'selected=true'; ?>>katolik</option>
                    <option value="islam" <?php if (isset($agama) && $agama == 'islam') echo 'selected=true'; ?>>islam</option>
                    <option value="hindu" <?php if (isset($agama) && $agama == 'hindu') echo 'selected=true'; ?>>hindu</option>
                    <option value="budha" <?php if (isset($agama) && $agama == 'budha') echo 'selected=true'; ?>>budha</option>
                </select><br>
            </div>
            <br>
            <div>
                <label for="pekerjaan">Pekerjaan : </label><br>
                <input type="text" name="pekerjaan" id="pekerjaan" class="input-txt" value="<?php if (isset($pekerjaan)) echo $pekerjaan ?>"><br>
            </div><br>
            <button class="btn-submit" name="submit" type="button">Edit</button>
        </form>
    </div>
</section>
<?php
$db->close();
?>
<?php include('../footer.html') ?>