<?php
session_start();
    if(!isset($_SESSION['username'])){
        header("Location: ../login/login.php");
    }
?>
<?php
require_once('../lib/db_login.php');
    $nik = $_GET['nik'];
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

?>
<?php include('../header.html') ?>
<section class="cont">
    <div class="profile">
        <div class="img-prof">
            <img style="width:100%;" src="../style/empty-profile.png" alt="">
        </div>
    </div>
    <div class="form-input">
        <form action="">
            <div>
                <label for="NIK">NIK : </label><br>
                <input type="text" name="nik" id="nik" class="input-txt" value="<?php if (isset($nik)) echo $nik ?>" disabled><br>
            </div>
            <div class="error"><?php if (isset($error_nik)) echo $error_nik; ?></div>
            <br>

            <div>
                <label for="nama">Nama : </label><br>
                <input type="text" name="nama" id="nama" class="input-txt" value="<?php if (isset($name)) echo $name ?>" disabled><br>
            </div>
            <div class="error"><?php if (isset($error_name)) echo $error_name; ?></div>
            <br>

            <!-- drop down -->
            <div>
                <label for="jenis_kelamin">Jenis Kelamin : </label><br>
                <select class="input-txt" name="jenis_kelamin" id="jenis_kelamin" disabled>
                    <option value="pria" <?php if (isset($jenis_kelamin) && $jenis_kelamin == 'pria') echo 'selected=true'; ?>>Pria</option>
                    <option value="wanita" <?php if (isset($jenis_kelamin) && $jenis_kelamin == 'wanita') echo 'selected=true'; ?>>Wanita</option>
                </select>
            </div>
            <div class="error"><?php if (isset($error_gender)) echo $error_gender; ?></div>

            <br>
            <label for="provinsi">Provinsi : </label><br>
            <div>
                <select class="input-txt" name="provinsi" id="provinsi" onchange="getCity(this.value)" disabled>
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
            <div class="error"><?php if (isset($error_provinsi)) echo $error_provinsi; ?></div>

            <div id="drop_down_city">
                <label for="kota">Kota : </label><br>
                <select class="input-txt" name="kota" id="kota" disabled>
                    <?php
                    $queryCity = "select * from tb_kota where Asal_Provinsi='" . $provinsi . "'";
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
            <div class="error"><?php if (isset($error_kota)) echo $error_kota; ?></div>

            <br>
            <div>
                <label for="tanggal_lahir">Tanggal Lahir : </label><br>
                <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="input-txt" value="<?php if (isset($tanggal_lahir)) echo $tanggal_lahir ?>" disabled><br>
            </div>
            <div class="error"><?php if (isset($error_tanggal)) echo $error_tanggal; ?></div>
            <br>

            <div>
                <label for="status_pernikahan">Status Pernikahan : </label><br>
                <select class="input-txt" name="status_pernikahan" id="status_pernikahan" disabled>
                    <option value="blm kawin" <?php if (isset($status) && $status == 'blm kawin') echo 'selected=true'; ?>>blm kawin</option>
                    <option value="sudah kawin" <?php if (isset($status) && $status == 'sudah kawin') echo 'selected=true'; ?>>sudah kawin</option>
                </select><br>
            </div>
            <div class="error"><?php if (isset($error_kawin)) echo $error_kawin; ?></div>
            <br>

            <div>
                <label for="agama">Agama : </label><br>
                <select class="input-txt" name="agama" id="agama" disabled>
                    <option value="kristen" <?php if (isset($agama) && $agama == 'kristen') echo 'selected=true'; ?>>kristen</option>
                    <option value="katolik" <?php if (isset($agama) && $agama == 'katolik') echo 'selected=true'; ?>>katolik</option>
                    <option value="islam" <?php if (isset($agama) && $agama == 'islam') echo 'selected=true'; ?>>islam</option>
                    <option value="hindu" <?php if (isset($agama) && $agama == 'hindu') echo 'selected=true'; ?>>hindu</option>
                    <option value="budha" <?php if (isset($agama) && $agama == 'budha') echo 'selected=true'; ?>>budha</option>
                </select><br>
            </div>
            <div class="error"><?php if (isset($error_agama)) echo $error_agama; ?></div>

            <br>
            <div>
                <label for="pekerjaan">Pekerjaan : </label><br>
                <input type="text" name="pekerjaan" id="pekerjaan" class="input-txt" value="<?php if (isset($pekerjaan)) echo $pekerjaan ?>" disabled><br>
            </div>
            <div class="error"><?php if (isset($error_job)) echo $error_job; ?></div>
            <br>
            <div class="btn-cont">
                <button onclick="javascript:history.back()" class="btn-cancel" name="submit" type="button">Back</button>
            </div>
        </form>
    </div>
</section>
<?php
$db->close();
?>
<?php include('../footer.html') ?>