<?php include '../view/header.php'; ?>

<main>
    <h1>Select Technician</h1>
    <!-- display a table of technicians -->
    <table>
        <tr>
            <th>Name</th>
            <th>&nbsp;</th>
        </tr>
        <?php foreach ($technicians as $technician) : ?>
            <tr>
                <td><?php echo htmlspecialchars($technician->getFullName()); ?></td>
                <td><form action="." method="post">
                        <input type="hidden" name="action"
                               value="assign_incident">
                        <input type="hidden" name="technician_id"
                               value="<?php echo htmlspecialchars($technician->getID()); ?>">
                        <input type="hidden" name="technician_name"
                               value="<?php echo htmlspecialchars($technician->getFullName()); ?>">
                        <input type="submit" value="Select">
                    </form></td>
            </tr>
        <?php endforeach; ?>
    </table>
</main>

<?php include '../view/footer.php'; ?>

