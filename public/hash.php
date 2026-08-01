<?php

echo "<h3>Generated Password Hashes</h3>";

$passwords = [
    "Mark123",
    "kyle123",
    "kram123"
];

foreach ($passwords as $password) {
    echo "<strong>Password:</strong> $password<br>";
    echo "<strong>Hash:</strong> " . password_hash($password, PASSWORD_DEFAULT);
    echo "<hr>";
}