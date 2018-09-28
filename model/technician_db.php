<?php
class TechnicianDB {

    public static function getTechnicians() {
        $db = Database::getDB();

        $query = 'SELECT * FROM technicians
                  ORDER BY lastName';
        $statement = $db->prepare($query);
        $statement->execute();
        $rows = $statement->fetchAll();
        $statement->closeCursor();
        
        $technicians = array();
        foreach($rows as $row) {
            $t = new Technician(
                    $row['firstName'], $row['lastName'],
                    $row['email'], $row['phone'], $row['password']);
            $t->setID($row['techID']);
            $technicians[] = $t;
        }
        return $technicians;
    }

    public static function deleteTechnician($technician_id) {
        $db = Database::getDB();

        $query = 'DELETE FROM technicians
                 WHERE techID = :technician_id';
        $statement = $db->prepare($query);
        $statement->bindValue(':technician_id', $technician_id);
        $statement->execute();
        $statement->closeCursor();
    }

    public static function addTechnician($t) {
        $db = Database::getDB();
        
        $query = 'INSERT INTO technicians
                     (firstName, lastName, phone, email, password)
                  VALUES
                     (:first_name, :last_name, :phone, :email, :password)';
        $statement = $db->prepare($query);
        $statement->bindValue(':first_name', $t->getFirstName());
        $statement->bindValue(':last_name', $t->getLastName());
        $statement->bindValue(':phone', $t->getPhone());
        $statement->bindValue(':email', $t->getEmail());
        $statement->bindValue(':password', $t->getPassword());
        $statement->execute();
        $statement->closeCursor();
    }
}
?>