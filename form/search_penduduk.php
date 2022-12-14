<?php
session_start();
    if(!isset($_SESSION['username'])){
        header("Location: ../login/login.php");
    }
?>
<?php
require_once('../lib/db_login.php');
include('../header.html');
?>
<div class="bg-search">
    <section class="cont-drop src-cont">
        <div class="prov-drop">
            <label for="provinsi">Daftar Provinsi :</label><br>
            <select class="input-txt" name="provinsi" id="provinsi" onchange="getCity(this.value)">
                <option value="kosong" selected>--- Pilih Provinsi ---</option>
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
            <!-- search button for province -->
            <div id="src-btn-cont-prov">
                <a href="">
                    <button class="src-btn">Cari Penduduk berdasarkan provinsi</button>
                </a>
            </div>
        </div>



        <br>
        <div class="city-drop">
            <div id="drop_down_city" class="city-drop">
                <label for="kota">Daftar Kota : </label><br>
                <select class="input-txt" name="kota" id="kota" onchange="cityBtn(this.value)">
                    <option value="kosong" selected>--- Pilih Kota ---</option>
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
                </select>
            </div>
            <div id="src-btn-cont-city">
                <a href="">
                    <button class="src-btn">Cari Penduduk berdasarkan kota</button>
                </a>
            </div>
        </div>



    </section>
</div>


<?php include('../footer.html') ?>