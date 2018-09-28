<?php
function get_countries() {
    global $db;
    $query = 'SELECT * FROM countries
              ORDER BY countryName';
    $statement = $db->prepare($query);
    $statement->execute();
    $countries = $statement->fetchAll();
    $statement->closeCursor();
    return $countries;
}
?>