
<?php

$VALOR=$_GET["id_cuenta_corriente"];

$servername = "localhost";
$username = "id20991278_root"; 
$password = "Tesis23!adasdaw";
$dbname = "id20991278_db_proyecto";
$conn = new mysqli($servername, $username, $password, $dbname);
 if ($conn->connect_error) {
    die("Connection failed: " .$conn->connect_error);
 }

$sql="SELECT * from detalle_cuentas_corrientes as d join clientes as c on
d.id_cliente=c.id_cliente
where id_cuenta_corriente='$VALOR'";


$result = $conn->query($sql);
$response = array();
 if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      array_push($response,$row);
    }
}
$conn->close();
header('Content-Type: application/json');
echo json_encode($response);
?>
