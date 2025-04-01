<?php

include_once "../config/dbconnect.php";
if (isset($_GET['filename'])) {
    $filename = $_GET['filename'] . '.xls';

    // Set headers to force download of the file
    header('Content-Type: application/vnd.ms-excel');
    header('Content-Disposition: attachment; filename="' . $filename . '"');
?>
<table class="table">
            <thead>
                <tr>
                    <th class="text-center">S.N.</th>
                    <th class="text-center">Movies Name</th>
                    <th class="text-center">Movies Description</th>
                    <th class="text-center">Category Name</th>
                    <th class="text-center">Release year</th>
                </tr>
            </thead>

            <?php
            $sql = "SELECT * FROM movie JOIN category ON movie.category_id = category.category_id";
            $result = $conn->query($sql);
            $count = 1;
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
            ?>
            <tr>
                <td class="text-center"><?= $count ?></td>
                <td class="text-center"><?= $row["movie_name"] ?></td>
                <td class="text-center"><?= $row["movie_desc"] ?></td>
                <td class="text-center"><?= $row["category_name"] ?></td>
                <td class="text-center"><?= $row["release_year"] ?></td>
            </tr>
            <?php
                    $count++;
                }
            }
            ?>
        </table>
    <?php
    exit();
    }
    ?>