<?php
include 'db_config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $position_horizontal = $_POST['horizontal'];
    $position_vertical = $_POST['vertical'];
    $command = $_POST['command'];

    $sql = "INSERT INTO Positions (position_horizontal, position_vertical, command) VALUES ('$position_horizontal', '$position_vertical', '$command')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

