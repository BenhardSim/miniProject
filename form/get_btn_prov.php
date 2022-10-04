<?php
require_once('../lib/db_login.php');
$provinsi = $db->real_escape_string($_GET['id']);
$url = '../list-penduduk/view_population.php?kode_provinsi='.$provinsi;
echo '<a href="'.$url.'">
<button class="src-btn">Cari Penduduk berdasarkan provinsi</button>
</a>';

$db->close();

?>