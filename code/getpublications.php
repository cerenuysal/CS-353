<?php
include 'connection.php';

$orderbykey = "title asc";
if ($sort != "empty")
{
    switch ($sort)
    {
        case ("rel"):
            $orderbykey = "title asc";
            break;
        case ("date_asc"):
            $orderbykey = "publicationDate asc";
            break;
        case("date_desc"):
            $orderbykey = "publicationDate desc";
            break;
        case("subs"):
            $orderbykey = "citationCount desc";
            break;
        default:
            $orderbykey = "title";
            break;
    }
}
$whereclaus = "";
if ($search != "empty")
{
    $whereclaus = "WHERE title LIKE '%$search%'";
}
$sql = "SELECT ID, title, publicationDate, citationCount
            FROM publications
            $whereclaus
            ORDER BY $orderbykey;";
$result = $conn->query($sql);
echo "<table class = 'table table-bordered table-hover'>";
echo "<thead>";
echo "<tr>";
echo "<th scope='col'>#</th>";
echo "<th scope='col'>Title</th>";
echo "<th scope='col'>Date</th>";
echo "<th scope='col'>Citation Count</th>";
echo "</tr>";
echo "</thead>";
echo "<tbody>";
if ($result->num_rows > 0) {
    $rowcount = 1;
    while($row = $result->fetch_assoc()) {
        $id = $row['ID'];
        $title = $row['title'];
        $publicationDate= $row['publicationDate'];
        $citationCount = $row['citationCount'];
        echo "<tr>";
        echo "<th scope='row'>$rowcount</th>";
        echo "<td><a href='paperpage.php?paper=$id'>$title</a></td>";
        echo "<td>$publicationDate</td>";
        echo "<td>$citationCount</td>";
        echo "</tr>";
        $rowcount = $rowcount + 1;
    }
    echo "</tbody>";
    echo "</table>";
} else {
    echo "</tbody>";
    echo "</table>";
    echo "<p align='center'> No result with that title </p>";
}
$conn->close();
?>
