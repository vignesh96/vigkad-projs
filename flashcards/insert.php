<?php
   // connect to mongodb
   $m = new MongoClient();
   echo "Connection to database successfully";

// select a database
   $db = $m->phonics;
   echo "Database mydb selected";
   $collection = $db->createCollection("words");
   echo "Collection created succsessfully";

    $n = $_POST['name'];
    $h = $_POST['heading'];
    $p = $_POST['pic'];
    $r = $_POST['rel'];
    $pr = $_POST['pro'];
    $i = $_POST['info'];

$card = array(
    "name" => $n,
    "heading" => $h,
    "pic" => $p,
    "rel" => $r,
    "pronunciation" => $pr,
    "extrainfo" => $i
);

$collection->insert($card);
echo "Document inserted successfully";

?>
