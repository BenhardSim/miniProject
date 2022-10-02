<?php
require_once('../lib/db_login.php');
$provinsi = $db->real_escape_string($_GET['id']);
$queryCity = "select * from tb_kota where Asal_Provinsi='" . $provinsi . "'";
$result = $db->query($queryCity);
if (!$result) {
    die('query salah !!');
} else {
    // echo 'nice';
    echo '<select>';
    while ($row = $result->fetch_object()) {
        if (isset($kota) && $kota == $row->Kode_Kota) {
            echo '<option value="' . $row->Kode_Kota . '" selected=true>' . $row->Nama_Kota . '</option>';
        } else {
            echo '<option value="' . $row->Kode_Kota . '">' . $row->Nama_Kota . '</option>';
        }
    }
    echo '</select>';
}

$db->close();

?>
