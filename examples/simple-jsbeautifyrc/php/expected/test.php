<?php

$hello = 'world';

if (!isset($_SESSION)) {
    session_start();
}
require_once 'sql.req.php';

// friend requests
$q = $mysqli->query('');
$num = $q->num_rows;
echo '<a href="notifications.php">';
if ($num > 0) {
    echo '<i class="fa fa-star white"></i>';
} else {
    echo '<i class="fa fa-star-o"></i>';
}
echo '</a>';

// new messages
$q = $mysqli->query('');
$num = $q->num_rows;
echo '<a href="messages.php">';
if ($num > 0) {
    echo '<i class="fa fa-envelope white"></i>';
} else {
    echo '<i class="fa fa-envelope-o"></i>';
}
echo '</a>';
