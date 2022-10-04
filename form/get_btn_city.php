<?php
require_once('../lib/db_login.php');
$kota = $db->real_escape_string($_GET['id']);
$url = '../list-penduduk/view_population_city.php?kode_kota='.$kota;
echo '<a href="'.$url.'">
<button class="src-btn">Cari Penduduk berdasarkan kota </button>
</a>';

$db->close();

?>