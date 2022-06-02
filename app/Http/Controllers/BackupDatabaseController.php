<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use mysqli;

class BackupDatabaseController extends Controller
{
    public function backupDb()
    {

        $host = "localhost";
        $user = "newuser";
        $pass = "password";
        $dbname = "dms";
        $tables = '*';
        //make db connection
        $conn = new mysqli($host, $user, $pass, $dbname);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        //get all of the tables
        if ($tables == '*') {
            $tables = array();
            $sql = "SHOW TABLES";
            $query = $conn->query($sql);
            while ($row = $query->fetch_row()) {
                $tables[] = $row[0];
            }
        } else {
            $tables = is_array($tables) ? $tables : explode(',', $tables);
        }

        //getting table structures
        $outsql = '';
        foreach ($tables as $table) {

            // Prepare SQLscript for creating table structure
            $sql = "SHOW CREATE TABLE $table";
            $query = $conn->query($sql);
            $row = $query->fetch_row();

            $outsql .= "\n\n" . $row[1] . ";\n\n";

            $sql = "SELECT * FROM $table";
            $query = $conn->query($sql);

            $columnCount = $query->field_count;

            // Prepare SQLscript for dumping data for each table
            for ($i = 0; $i < $columnCount; $i++) {
                while ($row = $query->fetch_row()) {
                    $outsql .= "INSERT INTO $table VALUES(";
                    for ($j = 0; $j < $columnCount; $j++) {
                        $row[$j] = $row[$j];

                        if (isset($row[$j])) {
                            $outsql .= '"' . $row[$j] . '"';
                        } else {
                            $outsql .= '""';
                        }
                        if ($j < ($columnCount - 1)) {
                            $outsql .= ',';
                        }
                    }
                    $outsql .= ");\n";
                }
            }

            $outsql .= "\n";
        }

        // Save the SQL script to a backup file
        $today = date("Ymd-his");
        $backup_file_name = $dbname . '_backup_' . $today . '.sql';
        $fileHandler = fopen($backup_file_name, 'w+');
        fwrite($fileHandler, $outsql);
        fclose($fileHandler);


        $response['data']['backupdata'] =  $outsql;
        $response['data']['backupFileName'] = $backup_file_name;
        $response['message'] =  "success";
        return $response;

        // Download the SQL backup file to the browser
        header('Access-Control-Allow-Origin: *');
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' . basename($backup_file_name));
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($backup_file_name));
        ob_clean();
        flush();

        readfile($backup_file_name);

        // exec('rm ' . $backup_file_name);
    }
}
