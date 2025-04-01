<?php

include_once "../config/dbconnect.php";
if (isset($_GET['filename'])) {
    $filename = $_GET['filename'] . '.xls';

    // Set headers to force download of the file
    header('Content-Type: application/vnd.ms-excel');
    header('Content-Disposition: attachment; filename="' . $filename . '"');
?>
<table class="table ">
    <thead>
        <tr>
            <th class="text-center">S.N.</th>
            <th class="text-center">Kid Name</th>
            <th class="text-center">Kid Description</th>
            <th class="text-center">Category Name</th>
            <th class="text-center" colspan="2">Release year</th>
        </tr>
    </thead>
    <?php
    include_once "../config/dbconnect.php";
    $sql = "SELECT * from kids, category WHERE kids.category_id=category.category_id";
    $result = $conn->query($sql);
    $count = 1;
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            ?>
            <tr>
                <td><?= $count ?></td>
                <td><?= $row["kids_name"] ?></td>
                <td><?= $row["kids_desc"] ?></td>
                <td><?= $row["category_name"] ?></td>
                <td><?= $row["release_year"] ?></td>
            </tr>
            <?php
            $count = $count + 1;
        }
    }
    ?>
</table>

<?php
    exit();
    }
    ?>