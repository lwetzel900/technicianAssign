<?php include '../view/header.php'; ?>
<?php $_SESSION['incident']['key2']= filter_input(INPUT_POST, "technician_id");?>

<main>
    <!-- <?php var_dump($_SESSION['incident']);?>
    <?php var_dump($incident);?> -->
    <h2>Assign Incident</h2>
    
    <?php if (isset($message)) : ?>
        <p><?php echo $message; ?></p>
        <p><a href="?action=incident_select">Select Another Incident</a></p>
    <?php else: ?>
    
    <form action="." method="post">
        <input type="hidden" name="action" value="assigned">


        <input type="submit" value="Assign Incident">
    </form>
        <?php endif; ?>


</main>
<?php include '../view/footer.php'; ?>
