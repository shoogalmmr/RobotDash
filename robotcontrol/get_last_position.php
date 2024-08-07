<?php
include 'db_config.php';

$sql = "SELECT position_horizontal, position_vertical, command FROM Positions ORDER BY id DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo json_encode($row);
} else {
    echo json_encode(['position_horizontal' => 0, 'position_vertical' => 0, 'command' => '']);
}

$conn->close();
?>
