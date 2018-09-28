<?php
function add_incident($customer_id, $product_code, $title, $description) {
    global $db;
    $date_opened = date('Y-m-d');  // get current date in yyyy-mm-dd format
    $query =
        'INSERT INTO incidents
            (customerID, productCode, dateOpened, title, description)
        VALUES (
               :customer_id, :product_code, :date_opened,
               :title, :description)';
    $statement = $db->prepare($query);
    $statement->bindValue(':customer_id', $customer_id);
    $statement->bindValue(':product_code', $product_code);
    $statement->bindValue(':date_opened', $date_opened);
    $statement->bindValue(':title', $title);
    $statement->bindValue(':description', $description);
    $statement->execute();
    $statement->closeCursor();
}

function unassigned_tech (){
    global $db;
    $query = 
        'SELECT *
        FROM incidents
        JOIN customers
        ON
        incidents.customerID=customers.customerID
        and incidents.techID is NULL';
    
    $statement = $db->prepare($query);
    $statement->execute();
    $incidents = $statement->fetchAll();
    $statement->closeCursor();
    

    
    return $incidents;
}

function get_incident_by_id($incident_id){
    global $db;
    $query = 'select * from incidents
            JOIN customers
            ON
            incidents.customerID=customers.customerID
            and incidents.techID is NULL
            where incidentID = :incident_id';
    $statement = $db->prepare($query);
    $statement->bindValue(':incident_id', $incident_id);
    $statement->execute();
    $incident = $statement->fetchAll();
    $statement->closeCursor();
    return $incident;       
}

function update_incident($tech_id, $incident_id){
    global $db;
    $query = 'update incidents
            set techID = :tech_id
            where incidentID = :incident_id';
    $statement = $db->prepare($query);
    $statement->bindValue(':tech_id', $tech_id);
    $statement->bindValue(':incident_id', $incident_id);
    $statement->execute();
    //$updated = $statement->fetchAll();
    $statement->closeCursor();
    //return $updated;     
}
?>