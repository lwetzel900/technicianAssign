<?php
session_start();

var_dump($_SESSION);

require('../model/database.php');
require('../model/customer_db.php');
require('../model/product_db.php');
require('../model/incident_db.php');

require('../model/database_oo.php');
require('../model/technician.php');
require('../model/technician_db.php');

$action = filter_input(INPUT_POST, 'action');
if ($action === NULL) {
    $action = filter_input(INPUT_GET, 'action');
    if ($action === NULL) {
        $action = 'select_incident';
    }
}

//instantiate variable(s)
$email = '';


switch ($action) {
    case 'display_customer_get':
        include('customer_get.php');
        break;
    case 'get_customer':
        $email = filter_input(INPUT_POST, 'email');
        $customer = get_customer_by_email($email);
        $products = get_products_by_customer($email);
        include('incident_create.php');
        break;
    case 'select_incident':

        $message = "This incident was added to our database.";
        $incidents = unassigned_tech();
        include('incident_select.php');

        break;
    case 'select_tech_for_incident':
        $_SESSION['incident']['key1'] = filter_input(INPUT_POST, 'incident_id');
        $message = "Selecting tech.";
        $technicians = TechnicianDB::getTechnicians();
        include('select_tech_for_incident.php');
        break;
    case 'create_incident':
        $customer_id = filter_input(INPUT_POST, 'customer_id', FILTER_VALIDATE_INT);
        $product_code = filter_input(INPUT_POST, 'product_code');
        $title = filter_input(INPUT_POST, 'title');
        $description = filter_input(INPUT_POST, 'description');
        add_incident($customer_id, $product_code, $title, $description);
        $message = "This incident was added to our database.";
        include('incident_create.php');
        break;
    case 'assign_incident':
        $_SESSION['incident']['key2'] = filter_input(INPUT_POST, 'technician_id');
        $incident = get_incident_by_id($_SESSION['incident']['key1']);

        include('incident_assign.php');
        break;
    case 'assigned_incident':
        $inc = $_SESSION['incident']['key1'];
        $tech = $_SESSION['incident']['key2'];

        update_incident($tech, $inc);
        $message = "This incident was assigned to a technician.";
        unset($_SESSION['incident']);
        include('incident_assign.php');
        break;
}
?>