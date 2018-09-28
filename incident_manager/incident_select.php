<?php include '../view/header.php'; ?>
<main>

    <h2>Create the Incident Select Page and CHANGE THIS HEADLINE</h2>

    <table>
        <tr>
            <th>Customer</th>
            <th>Product</th>
            <th>Date Opened</th>
            <th>Title</th>
            <th>Description</th>
            <th>&nbsp;</th>
        </tr>

        <?php foreach ($incidents as $incident) : ?>
            <tr>
                <td><?php echo htmlspecialchars($incident['firstName'] . ' ' . $incident['lastName']); ?></td>
                <td><?php echo htmlspecialchars($incident['productCode']); ?></td>
                <td><?php echo htmlspecialchars($incident['dateOpened']); ?></td>
                <td><?php echo htmlspecialchars($incident['title']); ?></td>
                <td><?php echo htmlspecialchars($incident['description']); ?></td>

                <td><form action="." method="post">
                        <input type="hidden" name="action"
                               value="select_tech_for_incident">
                        <input type="hidden" name="incident_id"
                               value="<?php echo htmlspecialchars($incident['incidentID']); ?>">
                        <input type="submit" value="Select">
                    </form></td>
            </tr>
        <?php endforeach; ?>
    </table>

    <p><a href="?action=display_customer_get">Make an Incident</a></p>
</main>
<?php include '../view/footer.php'; ?>