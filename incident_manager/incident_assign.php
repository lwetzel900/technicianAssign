<?php include '../view/header.php'; ?>
<main>
    <h2>Assign Incident</h2>

    <?php if (isset($message)) : ?>
        <p><?php echo $message; ?></p>
        <p><a href="?action=select_incident">Select Another Incident</a></p>
    <?php else: ?>

        <form action="" method="post" id="aligned">
            <input type="hidden" name="action" value="assign_incident">

            <?php foreach ($incident as $inc) : ?> 
            <label>Customer:  </label><label><?php echo htmlspecialchars($inc['firstName'] . ' ' . $inc['lastName']); ?></label><br>

                <label>Product:  </label><label><?php echo htmlspecialchars($inc['productCode']); ?></label><br>

                <label>Technician:  </label><label name='tech'><?php echo filter_input(INPUT_POST, 'technician_name'); ?></label><br>

            <?php endforeach; ?> 

            <input type="hidden" name="action" value="assigned_incident">
            <input type="submit" value="Assign Incident">    
        </form>

    <?php endif; ?>

</main>
<?php include '../view/footer.php'; ?>