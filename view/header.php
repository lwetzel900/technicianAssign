<?php
$basedir= dirname(__DIR__);
$basedir = explode("\\", $basedir);
$basedir = array_pop($basedir);

//array_pop(explode("\\", dirname(__DIR__))) 
?>
<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>SportsPro Technical Support</title>
    <link rel="stylesheet" type="text/css"
	
          href="/<?php echo htmlspecialchars($basedir) ?>/main.css">
			<!--- THIS PATH WILL BREAK ON LINUX/OSX 
		replace "\\" with "//"
		-->
		  </head>

<!-- the body section -->
<body>
<header>
    <h1>SportsPro Technical Support</h1>
    <p>Sports management software for the sports enthusiast</p>
    <nav>
        <ul>
            <li><a href="/<?php echo htmlspecialchars($basedir) ?>">Home</a></li>
        </ul>
    </nav>
</header>
