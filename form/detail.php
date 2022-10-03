<?php
require_once('../lib/db_login.php');
$id = $_GET['nik'];

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
?>
<!DOCTYPE html>
<html lang="en">

<?php include('../header.html') ?>
<section class="cont">
    <div class="profile">
        <div class="img-prof"></div>
    </div>
    <div class="form-input">
        <form action="">
            <div class="form-check">
                <label>NIK :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputNIK" type="text" value="<?php if (isset($NIK)) {
                                                                                        echo $NIK;
                                                                                    } ?>" disabled>

            </div>
            <br>
            <label>Nama :</label>
            <div class="form-check">
                <label class="form-check-label">
                    <input class="input-txt" id="inputName" type="text" value="<?php if (isset($Nama)) {
                                                                                        echo $Nama;
                                                                                    } ?>" disabled>

            </div>
            <br>
            <div class="form-check">
                <label>Jenis Kelamin :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputGender" type="text" value="<?php if (isset($Jenis_Kelamin)) {
                                                                                        echo $Jenis_Kelamin;
                                                                                    } ?>" disabled>

            </div>
            <br>
            <div class="form-check">
                <label>Provinsi :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputProvince" type="text" value="<?php if (isset($Provinsi)) {
                                                                                            echo $Provinsi;
                                                                                        } ?>" disabled>

            </div>
            <br>
            <div class="form-check">
                <label>Kota :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputCity" type="text" value="<?php if (isset($Kota)) {
                                                                                        echo $Kota;
                                                                                    } ?>" disabled>

            </div>
            <br>
            <div class="form-check">
                <label>Tanggal Lahir :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputBirthdayDate" type="text" value="<?php if (isset($Tanggal_Lahir)) {
                                                                                                echo $Tanggal_Lahir;
                                                                                            } ?>" disabled>

            </div>
            <br>
            <div class="form-check">
                <label>Status Perkawinan :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputFirstName" type="text" value="<?php if (isset($Status)) {
                                                                                            echo $Status;
                                                                                        } ?>" disabled>

            </div>
            <br>
            <div class="form-check">
                <label>Agama :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputReligion" type="text" value="<?php if (isset($Agama)) {
                                                                                            echo $Agama;
                                                                                        } ?>" disabled>

            </div>
            <br>
            <div class="form-check">
                <label>Pekerjaan :</label><br>
                <label class="form-check-label">
                    <input class="input-txt" id="inputReligion" type="text" value="<?php if (isset($Pekerjaan)) {
                                                                                            echo $Pekerjaan;
                                                                                        } ?>" disabled>

            </div>
            <br>
            <div class="btn-cont">
                <button class="btn-submit" name="submit" id="submit" type="submit">Back</button>
            </div>
            </form>
    </div>
</section>
<?php
$db->close();
?>
<?php include('../footer.html') ?>