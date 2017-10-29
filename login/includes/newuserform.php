<?php
class NewUserForm extends DbConn
{
    public function createUser($usr, $uid, $email, $pw, $fname)
    {
        try {

            $db = new DbConn;
            $tbl_members = $db->tbl_members;
            // prepare sql and bind parameters
            $stmt = $db->conn->prepare("INSERT INTO ".$tbl_members." (id, username, password, email)
            VALUES (:id, :username, :password, :email)");
            //$stmt = $db->conn->prepare("INSERT INTO ".$tbl_members." (id, username, password, email, fname)
            //VALUES (:id, :username, :password, :email, :fname)");
            $stmt->bindParam(':id', $uid);
            $stmt->bindParam(':username', $usr);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':password', $pw);
            //$stmt->bindParam(':fname', $fname);
            $stmt->execute();

            $err = '';

        } catch (PDOException $e) {

            $err = "Error: " . $e->getMessage();

        }
        //Determines returned value ('true' or error code)
        if ($err == '') {

            $success = 'true';

        } else {

            $success = $err;

        };

        return $success;

    }
}
