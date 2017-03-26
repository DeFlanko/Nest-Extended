<?php
// The Nest-Extended Configuration
require_once('/setup/config.php');
// The Nest API Class file
require_once('/setup/nest.class.php');
//if (defined('STDIN')) {
//  $datatype = $argv[1];
//} else { 
//  $datatype = $_GET['datatype'];
//}

//Connect to the Database
$connectionInfo = array( "Database"=>$dbname, "UID"=>$username, "PWD"=>$password);
$con = sqlsrv_connect( $hostname, $connectionInfo);
//if ($con->connect_error) {
//	trigger_error('Database connection failed: ' . $con->connect_error, E_USER_ERROR);
//}
if( $client_info = sqlsrv_client_info( $con)) {
    foreach( $client_info as $key => $value) {
        echo $key.": ".$value."<br />";
    }
} else {
    echo "Error in retrieving client info.<br />";
}
if( $con ) {
    echo "Connection established to: $con";
}else{
     echo "Connection could not be established";
     die( print_r( sqlsrv_errors(), true));
}
// Close the connection.
sqlsrv_close( $con );
?>