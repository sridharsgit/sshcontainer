<html>
        <head>
        <title>PHP Test</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        </head>




<body>
        <h1>PHP Test</h1>
                <p><b>An Example of PHP in Action - Update 1 - New Lines </b></p>
                <?php echo "The Current Date and Time is: <br />";
                echo date("g:i A l, F j Y.");?> </p>



<?php

// PHP program to obtain IP address of
// the server

// Creating a variable to store the
// server address
$ip_server = $_SERVER['SERVER_ADDR'];

// Printing the stored address
echo "Server IP Address is: $ip_server";

?>


        <h2>PHP Information</h2>
                <p> <?php phpinfo(); ?> </p>
        </body>
</html>
